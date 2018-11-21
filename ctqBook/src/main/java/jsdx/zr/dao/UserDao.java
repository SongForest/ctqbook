
package jsdx.zr.dao;

import java.util.List;
import java.util.Map;

import jsdx.zr.entity.User;

public interface UserDao {


	/**
	 * 注释：map.put(begin)
	 * 如果查询昵称 传name值又不懂的看novelDao
	 */

	public List<User> findUser(Map<String, Integer> map);

	public List<User> findUserByNickName(Map<String, Object> map);

	public User findUserById(int id);

	public User findUserByName(String name);

	public List<User> findUserByEmail(String email);

	public int addUser(User user);

	public int update(User user);

	// 注意：虽然叫删除，但只是修改 user表的status属性，将其由0改为1
	public int delUser(int id);

}
