package jsdx.zr.service;

import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileWriter;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import jsdx.zr.dao.AuthorDao;
import jsdx.zr.dao.NovelDao;
import jsdx.zr.dao.SectionInfoDao;
import jsdx.zr.dao.VolumeClassInfoDao;
import jsdx.zr.entity.Author;
import jsdx.zr.entity.Novel;
import jsdx.zr.entity.SectionInfo;
import jsdx.zr.entity.TClass;
import jsdx.zr.entity.Volume_classInfo;

@Service
public class ListService {

	@Autowired
	SqlSessionFactory sqlSessionFactory;

	public void downloadSolve(int id, HttpServletRequest request, HttpServletResponse response) {

		SqlSession session = null;
		try {
			session = sqlSessionFactory.openSession();
			NovelDao novelDao = session.getMapper(NovelDao.class);
			SectionInfoDao sectionInfoDao = session.getMapper(SectionInfoDao.class);
			Map<String, Object> map = new HashMap<String, Object>();
			// 根据文件id在数据库中获取文件名
			map.put("novelid", id);
			map.put("rstatus", 0);
			List<SectionInfo> seclist = sectionInfoDao.findSectionInfo(map);
			System.out.println(seclist.size());
			if (seclist.size() > 0) {
				String fileName = novelDao.findNovelById(id).getNovelname();
				// 文件所在目录路径
				String filePath = request.getSession().getServletContext().getRealPath("/") + "ebook/";
				// 得到该文件
				File file = new File(filePath + fileName + ".txt");
				FileWriter fw = new FileWriter(file, true);
				BufferedWriter bw = new BufferedWriter(fw);
				if (!file.exists()) {
					bw.write("《" + fileName + "》");
					bw.newLine();
					bw.write("作者：" + novelDao.findNovelById(id).getAuthor().getAuthorname());
				}
				for (SectionInfo sec : seclist) {
					bw.newLine();
					bw.write(sec.getSectionname());
					bw.newLine();
					bw.write(sec.getSectioncontext());
					sec.setReadstatus(1);
					sectionInfoDao.update(sec);
					session.commit();
				}
				downloadSolve(id, request, response);
			} else if (seclist.isEmpty()) {
				String fileName = novelDao.findNovelById(id).getNovelname() + ".txt";
				// 文件所在目录路径
				String filePath = request.getSession().getServletContext().getRealPath("/") + "ebook/";
				// 得到该文件
				File file = new File(filePath + fileName);
				if (!file.exists()) {
					System.out.println("Have no such file!");
					return;// 文件不存在就退出方法
				}

				FileInputStream fileInputStream = new FileInputStream(file);
				// 设置Http响应头告诉浏览器下载这个附件
				response.setHeader("Content-Disposition",
						"attachment;Filename=" + URLEncoder.encode(fileName, "UTF-8"));
				OutputStream outputStream = response.getOutputStream();
				byte[] bytes = new byte[2048];
				int len = 0;
				while ((len = fileInputStream.read(bytes)) > 0) {
					outputStream.write(bytes, 0, len);
				}
				fileInputStream.close();
				outputStream.close();
				System.out.println(file);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}

	}

	public void addbooks() {
		Random rs = new Random();
		String patten = "第.*章 .*";
		String path = "D:\\Work\\小说\\笔下"; // 要遍历的路径
		Pattern ra = Pattern.compile("作者[ :：]{1,2}(.{1,6})");
		List<File> fs = getFileSort(path);// 遍历path下的文件和目录，放在File数组中
		SqlSession session = null;
		try {
			session = sqlSessionFactory.openSession();
			NovelDao novelDao = session.getMapper(NovelDao.class);
			AuthorDao authorDao = session.getMapper(AuthorDao.class);
			VolumeClassInfoDao classInfoDao = session.getMapper(VolumeClassInfoDao.class);
			SectionInfoDao sectionInfoDao = session.getMapper(SectionInfoDao.class);
			int has = 0;
			/*
			 * for (File f : fs) { System.out.println(f); }
			 */
			for (File f : fs) { // 遍历File[]数组
				has++;
				if (has < 180) {
					continue;
				}
				System.out.println(f);
				if (!f.isDirectory()) {
					// 若非目录(即文件)，则打印
					String str = f.toString();
					if (str.endsWith(".txt")) {
						String title = str.substring(str.lastIndexOf("\\") + 1, str.indexOf(".txt")).trim();
						String code = resolveCode(str);
						System.out.println(code);
						InputStreamReader reader = new InputStreamReader(new FileInputStream(f), code);
						BufferedReader br = new BufferedReader(reader);
						String s = null;
						int i = 0;
						StringBuilder stringBuilder = new StringBuilder();
						Map<String, Object> map = new HashMap<String, Object>();
						map.put("name", title);
						Novel novel = new Novel();
						Author author = new Author();
						Volume_classInfo volume_classInfo = new Volume_classInfo();
						if (novelDao.findNovel(map).isEmpty()) {
							String sectionname = null;
							int a = 0;
							while ((s = br.readLine()) != null) {
								Matcher m = ra.matcher(s);
								if (m.find()) {
									String auor = m.group(1).trim();
									map.put("name", auor);
									if (authorDao.findAuthorByName(map).isEmpty()) {
										author.setAuthorname(auor);
										author.setAuthorintroduce("脱离了低级趣味的人");
										authorDao.add(author);
										session.commit();
									} else {
										author = authorDao.findAuthorByName(map).get(0);
									}
									novel.setNovelname(title);
									novel.setAuthor(author);
									novel.setNovelimg("img/book.png");
									TClass novelclasses = new TClass();
									novelclasses.setClassesid(rs.nextInt(72) + 1);
									novel.setNovelclasses(novelclasses);
									novel.setNovelsynopsis("你要我怎么说怎么做");
									int ret = novelDao.add(novel);
									System.out.println(ret + " title");
									volume_classInfo.setNovel(novel);
									if (classInfoDao.add(volume_classInfo) != 1) {
										System.out.println(0 + "acd  " + title);
									}
									session.commit();
								} else if (Pattern.matches(patten, s)) {
									if (sectionname != null) {
										SectionInfo sInfo = new SectionInfo();
										sInfo.setNumbercount(stringBuilder.length());
										sInfo.setSectionname(sectionname);
										sInfo.setSectioncontext(stringBuilder.toString());
										sInfo.setVolume_class(volume_classInfo);
										sectionInfoDao.add(sInfo);
										a++;
									}
									i = 2;
									sectionname = s;
									stringBuilder.setLength(0);
								} else if (i == 2) {
									stringBuilder.append(s);
								}
								if (a > 10) {
									break;
								}
							}
						} else {
							while ((s = br.readLine()) != null) {
								Matcher m = ra.matcher(s);
								if (m.find()) {
									String auor = m.group(1).trim();
								} else if (Pattern.matches(patten, s)) {
									stringBuilder.setLength(0);
									stringBuilder.append(s);
								} else if (i == 0) {
									System.out.println("出现问题了");
									break;
								} else {
									stringBuilder.append(s);
								}

							}
						}

					}
				}

				if (has == 300) {
					break;
				}
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			session.close();
		}
	}

	public static void main(String[] args) {
		Pattern ra = Pattern.compile("作者[ :：]{1,2}(.{1,6})");
		Matcher m = ra.matcher("作者：曹泽毅");
		if (m.find()) {
			System.out.println("a");
		}
	}

	public static String resolveCode(String path) throws Exception {
		String charset = "GBK";
		byte[] first3Bytes = new byte[3];
		try {
			boolean checked = false;
			BufferedInputStream bis = new BufferedInputStream(new FileInputStream(path));
			bis.mark(0);
			int read = bis.read(first3Bytes, 0, 3);
			if (read == -1) {
				return charset; // 文件编码为 ANSI
			} else if (first3Bytes[0] == (byte) 0xFF && first3Bytes[1] == (byte) 0xFE) {
				charset = "UTF-16LE"; // 文件编码为 Unicode
				checked = true;
			} else if (first3Bytes[0] == (byte) 0xFE && first3Bytes[1] == (byte) 0xFF) {
				charset = "UTF-16BE"; // 文件编码为 Unicode big endian
				checked = true;
			} else if (first3Bytes[0] == (byte) 0xEF && first3Bytes[1] == (byte) 0xBB
					&& first3Bytes[2] == (byte) 0xBF) {
				charset = "UTF-8"; // 文件编码为 UTF-8
				checked = true;
			}
			bis.reset();
			if (!checked) {
				int loc = 0;
				while ((read = bis.read()) != -1) {
					loc++;
					if (read >= 0xF0)
						break;
					if (0x80 <= read && read <= 0xBF) // 单独出现BF以下的，也算是GBK
						break;
					if (0xC0 <= read && read <= 0xDF) {
						read = bis.read();
						if (0x80 <= read && read <= 0xBF) // 双字节 (0xC0 - 0xDF)
							// (0x80
							// - 0xBF),也可能在GB编码内
							continue;
						else
							break;
					} else if (0xE0 <= read && read <= 0xEF) {// 也有可能出错，但是几率较小
						read = bis.read();
						if (0x80 <= read && read <= 0xBF) {
							read = bis.read();
							if (0x80 <= read && read <= 0xBF) {
								charset = "UTF-8";
								break;
							} else
								break;
						} else
							break;
					}
				}
			}
			bis.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return charset;

	}

	/** * 获取目录下所有文件(按时间排序) * * @param path * @return */
	public static List<File> getFileSort(String path) {
		List<File> list = getFiles(path, new ArrayList<File>());
		if (list != null && list.size() > 0) {
			Collections.sort(list, new Comparator<File>() {
				public int compare(File file, File newFile) {
					if (file.lastModified() < newFile.lastModified()) {
						return 1;
					} else if (file.lastModified() == newFile.lastModified()) {
						return 0;
					} else {
						return -1;
					}
				}
			});
		}
		return list;
	}

	/** * * 获取目录下所有文件 * * @param realpath * @param files * @return */
	public static List<File> getFiles(String realpath, List<File> files) {
		File realFile = new File(realpath);
		if (realFile.isDirectory()) {
			File[] subfiles = realFile.listFiles();
			for (File file : subfiles) {
				if (!file.isDirectory()) {
					files.add(file);
				}
			}
		}
		return files;
	}

}
