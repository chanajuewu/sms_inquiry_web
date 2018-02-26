<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
    <title>云网融合短信查询平台 1.0</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Le styles -->
    <script type="text/javascript" src="<%=basePath%>/assets/js/jquery.min.js"></script>

   <!--  <link rel="stylesheet" href="<%=basePath%>/assets/css/style.css"> -->
    <link rel="stylesheet" href="<%=basePath%>/assets/css/loader-style.css">
    <link rel="stylesheet" href="<%=basePath%>/assets/css/bootstrap.css">
    <link rel="stylesheet" href="<%=basePath%>/assets/css/signin.css">






    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
        <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
    <!-- Fav and touch icons -->
    <link rel="shortcut icon" href="<%=basePath%>/assets/ico/minus.png">
</head>

<body> 
    <!-- Preloader -->
    <div id="preloader">
        <div id="status">&nbsp;</div>
    </div>
    
    <div class="container">


<p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p>
        <div class="" id="login-wrapper	" >
            <div class="row">
                <div class="col-md-4 col-md-offset-4">
                    <div id="logo-login">
                        <h1>云网融合短信查询平台
                            <span>v1.0</span>
                        </h1>
                    </div>
                </div>

            </div>

            <div class="row">
                <div class="col-md-4 col-md-offset-4">
                    <div class="account-box"> 
                        <form  id="formlogin" method="post" onsubmit="return false;">
                            <div class="form-group" >
                                <!--a href="#" class="pull-right label-forgot">Forgot email?</a-->
                                <label for="inputUsernameEmail">用户名</label>
                                <input type="text" id="phone" name="phone" class="form-control">
                            </div>
                            <div class="form-group" style="margin-bottom: 50px">
                                <!--a href="#" class="pull-right label-forgot">Forgot password?</a-->
                                <label for="inputPassword">密码</label>
                                <input type="password" id="password" name="password" class="form-control">
                            </div>
                             <div class="form-group col-xs-6">
                                <!--a href="#" class="pull-right label-forgot">Forgot password?</a-->
                                <input id="loginform:codeInput"  type="text" name="checkcode" class="form-control"   placeholder="验证码">
                            </div>
                                <img id="loginform:vCode" src="${pageContext.request.contextPath }/assets/validatecode.jsp" onclick="javascript:document.getElementById('loginform:vCode').src='${pageContext.request.contextPath }/assets/validatecode.jsp?'+Math.random();" />
                            
                            <button class="btn btn btn-primary pull-right" type="button" id="loginsubmit">
                                登 录
                            </button>
                        </form>
                        <a class="forgotLnk" href="index.html"></a>
                       
                        <div class="row-block">
	                        <div class="row">
		                    </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
 		<p>&nbsp;</p>
        <div style="text-align:center;margin:0 auto;">
            <h6 style="color:#fff;">备案号：京12019127号<br />
				版权所有 北京金楼世纪科技有限公司 </h6>
        </div>
    </div>
    <script type="text/javascript">
		var redirectUrl = "${redirect}";
		
		var LOGIN = {
			checkInput : function() {
				if ($("#phone").val() == "") {
					alert("用户名不能为空");
					window.location.reload();
					$("#phone").focus();
					return false;
				}
				if ($("#password").val() == "") {
					alert("密码不能为空");
					window.location.reload();
					$("#password").focus();
					return false;
				}
				if ($("#codeInput").val() == "") {
					alert("验证码不能为空");
					window.location.reload();
					$("#codeInput").focus();
					return false;
				}
				return true;
			},
			doLogin : function() {
				$.post("/enterprise/login", $("#formlogin").serialize(), function(
						data) {
					if (data.reqCode == 0) {
						alert("登录成功！");
						if (redirectUrl == "") {
							//登录成功，跳转门户系统（首页）
							location.href = "/index";
						} else {
							location.href = redirectUrl;
						}
					} else {
						alert("登录失败，原因是：" + data.reqMsg);
						window.location.reload();
						$("#phone").select();
					}
				});	
			},
			login : function() {
				if (this.checkInput()) {
					this.doLogin();
				}
			}

		};
		$(function() {
			$("#loginsubmit").click(function() {
				LOGIN.login();
			});
		});
		$(document).keydown(function(event){ 
			if(event.keyCode == 13){ //绑定回车 
			$('#loginsubmit').click(); 
			} 
			}); 
	</script>
    <!--  END OF PAPER WRAP -->

    <!-- MAIN EFFECT -->
    <script type="text/javascript" src="<%=basePath%>/assets/js/preloader.js"></script>
    <script type="text/javascript" src="<%=basePath%>/assets/js/bootstrap.js"></script>
    <script type="text/javascript" src="<%=basePath%>/assets/js/app.js"></script>
    <script type="text/javascript" src="<%=basePath%>/assets/js/load.js"></script>
    <script type="text/javascript" src="<%=basePath%>/assets/js/main.js"></script>

</body>

</html>