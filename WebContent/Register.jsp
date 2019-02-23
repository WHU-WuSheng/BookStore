<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
        <title>Register</title>
		<style>
			body {
				margin:0;
			}
			.middle-background{
				background: rgb(135,206,250); 
				position:fixed;
				margin:auto;
				top:0;
				bottom:0;
				width:100%;
				height:600px;
			}
			.center-background{
				background: rgba(255,255,255,.9);
				position:absolute;
				top:0;
				right:0;
				bottom:0;
				left:0;
				height:300px;
				width:500px;
				margin:auto;
				padding:50px;
			}
			.container{
				position:absolute;
				margin:auto;
				top:0;
				left:0;
				bottom:0;
				right:0;
				width:240px;
				height:270px;
			}
			.input-phone , .input-user, .input-pwd,input-email, .title{
				margin-bottom:30px;
				height:30px;
			}
			form{
				width:240px;
				height:150px;
			}
			button{
				margin-right:30px;
			}
			#error{
				color:red;
			}
		</style>
    </head>
    <body>
		<div class = "middle-background">
			<div class="center-background">
				<div class="container">
					<div class="title">注册</div>
					<form action="register" method="post">
						<div class="input-user">
							<label for="username">账号：</label>
							<input type="text" id="username" name="username" value="" />
						</div>
						<div class="input-pwd">
							<label for="password">密码：</label>
							<input type="text" id="password" name="pwd" value="" />
						</div>
						<div class="input-phone">
							<label for="phone">电话：</label>
							<input type="text" id="phone" name="phoneNumber" value="" />
						</div>
                        <div class="input-email">
                            <label for="phone">电子邮件：</label>
                            <input type="text" id="email" name="Email" value="" />
                        </div>
						<input type='submit' name='signUpSubmit' value="提交">
						<div>
							<label id="error">
							<% if(request.getAttribute("msg") != null){ %>
								<%= request.getAttribute("msg") %>
							<%} %>
							</label>
						</div>
					</form>
				</div>
			</div>
		</div>
	</body>
</html>