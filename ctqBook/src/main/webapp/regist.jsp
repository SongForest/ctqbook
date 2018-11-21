<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>朝天曲书吧_新会员注册</title>
		<link type="text/css" href="css/user.css" rel="stylesheet" />
		<script type="text/javascript" src="js/jquery.min.js"></script>
		<script type="text/javascript" src="js/user.check.js"></script>
		<script type="text/javascript" src="js/user_pass.js"></script>
	</head>

	<body>
		<div id="divBg">

		</div>
		<div id="divPop">
			<img id="close" onclick="closeSend();" src="img/timg.jpg" height="30px" width="30px" />
			<div id="content" style="vertical-align: middle;">
			</div>
			<input onclick="send();" type="button" value="发送邮件" />
		</div>
		<div class="con_log_center">
			<a href="/" class="p_l_18 logo"></a>
			<div id="main">
				<div id="section">
					<h2>
               <div class="f_r c9 f_w_no"><a href="index.jsp" class="c9" >首页</a><span class="ma_lr_10">|</span>登录</div>
                <div class="sec_retrieve">欢迎注册朝天曲书吧帐号</div>
            </h2>
					<div class="f_l content_reg tab_fon_14">
						<form id="formDemo"  method="post">
							<div class="p_l_33">
								<label><span class="le_r69 le_r_m">登陆帐号</span>
                              <input id="Account" onBlur="out_account();" maxlength="16" name="Account" type="text" class="log_inp" />
                           </label>
								<div class="input_tip">
									<div class="d_on" id="username_Emsg"></div>
								</div>
							</div>
							<div class="p_l_33">
								<label><span class="le_r69 le_r_m">会员昵称</span>
                                <input id="NickName" onBlur="out_username();" maxlength="10" name="NickName" type="text" size="20" class="log_inp" />
                            </label>
								<div class="input_tip">
									<div class="d_on" id="usernamemsg"></div>
								</div>
							</div>
							<div class="p_l_33">
								<label>
								<span class="le_r69 le_r_m">登陆密码</span>
								<input maxlength="16" onBlur="out_password1();" type="password" name="PassWord" class="log_inp" id="PassWord" />
                             </label>
								<div class="input_tip">
									<div class="d_on" id="passwordmsg1"></div>
								</div>
							</div>
							<div class="p_l_33">
								<label>
								<span class="le_r69 le_r_m">确认密码</span>
								<input onBlur="out_password2();" maxlength="16" type="password" name="RePassWord" value="" size="20" class="log_inp" id="RePassWord" />
                             </label>
								<div class="input_tip">
									<div class="d_on" id="passwordmsg2"></div>
								</div>
							</div>
							<div class="p_l_33">
								<label>
								<span class="le_r69 le_r_m">电子邮箱</span>
								<input onBlur="out_email();" maxlength="255" name="Email" type="text" class="log_inp" id="Email" />
							</label>
								<div class="input_tip">
									<div class="d_on" id="emailmsg"></div>
								</div>
							</div>

							<div class="p_l_33 p_l_108 font_12">
								<label><input type="checkbox" name="viewlicense" checked class="ver_m check"/>我已阅读并同意用户协议</label>
							</div>
							<button type="button" class="reg_btn tab_fon_18 mar_l_110 font_w c_f" onclick="readysend();" id="btnSignCheck">成为书吧会员</button>
							<div class="mar_l_110 font_12 c9 p_t15">如果您已经是朝天曲书吧会员，请点击
								<a href="index.jsp" class="c_blue"> 这里</a> 登录</div>
						</form>
					</div>
					<div class="protocol">
						<div class="sp_power">
							<h3>会员注册协议：</h3>
							<ul>
								<li>1、在本站注册的会员，必须遵守《互联网电子公告服务管理规定》，不得在本站发表诽谤他人，侵犯他人隐私，侵犯他人知识产权，传播病毒，政治言论，商业讯息等信息。</li>
								<li>2、在所有在本站发表的文章，本站都具有最终编辑权，并且保留用于印刷或向第三方发表的权利，如果你的资料不齐全，我们将有权不作任何通知使用你在本站发布的作品。</li>
								<li>3、在登记过程中，您将选择注册名和密码。注册名的选择应遵守法律法规及社会公德。您必须对您的密码保密，您将对您注册名和密码下发生的所有活动承担责任。</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</body>
	<script type="text/javascript">
		
	</script>

</html>