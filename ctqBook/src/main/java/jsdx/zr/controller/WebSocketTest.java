package jsdx.zr.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.websocket.*;
import javax.websocket.server.ServerEndpoint;
import org.springframework.web.socket.server.standard.SpringConfigurator;

import jsdx.zr.entity.User;
import jsdx.zr.service.UserService;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @ServerEndpoint 注解是一个类层次的注解，它的功能主要是将目前的类定义成一个websocket服务器端,
 *                 注解的值将被用于监听用户连接的终端访问URL地址,客户端可以通过这个URL来连接到WebSocket服务器端
 */
@Controller
@ServerEndpoint(value = "/websocket", configurator = SpringConfigurator.class)
public class WebSocketTest {

	@Autowired
	UserService userservice;

	@Autowired
	JavaMailSender mailSender;
	// 静态变量，用来记录当前在线连接数。应该把它设计成线程安全的。
	private static int onlineCount = 0;

	// concurrent包的线程安全Set，用来存放每个客户端对应的MyWebSocket对象。若要实现服务端与单一客户端通信的话，可以使用Map来存放，其中Key可以为用户标识
	private static Map<Integer, WebSocketTest> webSocketSet = new HashMap<Integer, WebSocketTest>();

	// 与某个客户端的连接会话，需要通过它来给客户端发送数据
	private Session session;

	private User user;

	private int vcode;

	/**
	 * 连接建立成功调用的方法
	 * 
	 * @param session
	 *            可选的参数。session为与某个客户端的连接会话，需要通过它来给客户端发送数据
	 */
	@OnOpen
	public void onOpen(Session session) {
		System.out.println("链接成功");
		this.session = session;
		vcode = (int) ((Math.random() * 9 + 1) * 100000);
		while (webSocketSet.get(vcode) != null) {
			vcode = (int) ((Math.random() * 9 + 1) * 100000);
		}
		webSocketSet.put(vcode, this); // 加入set中
	}

	/**
	 * 连接关闭调用的方法
	 */
	@OnClose
	public void onClose() {
		webSocketSet.remove(this); // 从set中删除
		subOnlineCount(); // 在线数减1
	}

	/**
	 * 收到客户端消息后调用的方法
	 * 
	 * @param message
	 *            客户端发送过来的消息
	 * @param session
	 *            可选的参数
	 */
	@OnMessage
	public void onMessage(String message, Session session) {
		int i = message.indexOf("{");
		message = message.substring(i);
		JSONObject obj = JSONObject.fromObject(message);
		user = (User) JSONObject.toBean(obj, User.class);
		System.out.println(user);
		System.out.println("来自客户端的消息:" + user.getEmail());
		try {
			webSocketSet.get(vcode).sendMailDemo(user.getEmail(), vcode);
		} catch (Exception e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
		}
	}

	@RequestMapping("emails_{code:\\d{6}}")
	public String Other(@PathVariable("code") int code) {
		if (webSocketSet.get(code) != null) {
			try {
				System.out.println("验证成功");
				int ret=userservice.regist(webSocketSet.get(code).user);
				if (ret!=0) {
					System.out.println("注册成功");
					webSocketSet.get(code).sendMessage("<font>邮箱验证注册成功</font>");
				}else {
					System.out.println("注册失败");
					webSocketSet.get(code).sendMessage("<font>好像他娘的失败了</font>");
				}
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return "index";
	}

	public void sendMailDemo(String email, int vcode) throws MessagingException {
		if (mailSender == null) {
			System.out.println("os");
		}
		StringBuffer theMessage = new StringBuffer();
		theMessage.append("<h2><font color=red>老哥注册吧</font></h2>");
		theMessage.append("<hr>");
		theMessage.append("<i><a href='http://localhost:8080/ctqBook/emails_" + vcode + "'>【验证登录】</a></i>");
		;
		MimeMessage msg = mailSender.createMimeMessage();
		MimeMessageHelper helper = new MimeMessageHelper(msg, true, "utf-8");
		// SimpleMailMessage mailMsg = new SimpleMailMessage();//只支持文字
		helper.setFrom("790529903@qq.com");// 发件人
		helper.setTo(email);// 收件人
		helper.setSubject("来注册啦！咸鱼");// 邮件标题
		helper.setText(theMessage.toString(), true);

		mailSender.send(msg);// 发送*

	}

	/**
	 * 发生错误时调用
	 * 
	 * @param session
	 * @param error
	 */
	@OnError
	public void onError(Session session, Throwable error) {
		System.out.println("发生错误");
		error.printStackTrace();
	}

	/**
	 * 这个方法与上面几个方法不一样。没有用注解，是根据自己需要添加的方法。
	 * 
	 * @param message
	 * @throws IOException
	 */
	public void sendMessage(String message) throws IOException {
		this.session.getBasicRemote().sendText(message);
		// this.session.getAsyncRemote().sendText(message);
	}

	public static synchronized int getOnlineCount() {
		return onlineCount;
	}

	public static synchronized void addOnlineCount() {
		WebSocketTest.onlineCount++;
	}

	public static synchronized void subOnlineCount() {
		WebSocketTest.onlineCount--;
	}
}