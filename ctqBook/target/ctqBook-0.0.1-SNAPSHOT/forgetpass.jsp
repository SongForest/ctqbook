<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title>93书吧_新会员注册</title>
<link type="text/css" href="css/user.css" rel="stylesheet"/>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/user.check.js"></script>
<script type="text/javascript" src="js/user_pass.js"></script>
<script type="text/javascript"> 
function changeAuthCode(){
	var num = 	new Date().getTime();
	var rand = Math.round(Math.random() * 10000);
	num = num + rand;
	if ($("#vdimgck")[0]){$("#vdimgck")[0].src = "/include/CheckCode.asp?tag=" + num;}
	return false;	
}
</script>
</head>
<body>
    <div class="con_log_center">
        <a href="index.jsp" class="p_l_18 logo"></a>
        <div id="main">
            <div id="section">
            <h2>
               <div class="f_r c9 f_w_no"><a href="index.jsp" class="c9" >首页</a><span class="ma_lr_10">|</span>登录</div>
                <div class="sec_retrieve">找回密码</div>
            </h2>
                <div class="f_l content_reg tab_fon_14">
                 <form name="myform" method="post" action="?Step=2" onSubmit="return CheckForm();">
                   <p class="p_gap">
                      <label><span class="le_r_m pl_20">帐 号：</span>
                          <input name="UserName" type="text" id="UserName" class="log_inp" placeholder="登录帐号或者昵称" onFocus="if(this.value==this.placeholder) this.value='';"/>
                       </label>
                   </p>
                   <p class="p_gap">
                     <label>
                        <span class="le_r le_r_m pl_20">邮 箱：</span>
                        <input name="Usermail" type="text" id="Usermail" class="log_inp" />
                     </label>
                   </p>
                   <p class="p_gap">
                     <label>
                        <span class="le_r le_r_m pl_20">验 证：</span>
                        <input name="verifycode" type="text" id="verifycode" class="log_inp_105" maxlength="6"/>
                     </label>
                     <img id="vdimgck" src="img/验证码.bmp" alt="看不清？点击更换" class="ver_m" />
                      <a onClick="changeAuthCode();" class="c_blue" style="cursor:pointer">换一下</a>
                   </p>
                   <br /><br />
                  <button type="submit" class="reg_btn tab_fon_18 mar_l_110 font_w c_f" id="btnSignCheck" >下一步</button>
                  <p class="log_b"><a href="regist.jsp">注册一个新帐号</a></p>
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
</html>