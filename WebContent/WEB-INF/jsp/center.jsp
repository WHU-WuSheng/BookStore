<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 2018/5/24
  Time: 21:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>个人信息</title>

</head>
<body>
<!--head，导航栏-->
<jsp:include page="header.jsp"/>

<!--主体信息-->
<div class="container-fluid" style="padding-top:5%">
    <div class="row">
        <div class="col-md-2 col-md-offset-1" style="text-align:center">
            <img src="${LoginUser['image']}"/>
            <h4>${LoginUser["name"]}</h4>
            <br>
            <br>
            <br>
            <div style="text-align:center">
                <div>
                    <ul class="nav nav-pills nav-stacked" role="tablist">
                        <li role="presentation" class="active" >
                            <a href="#basic" aria-controls="basic" role="tab" data-toggle="tab">
                                <span class="glyphicon glyphicon-user" aria-hidden="true">&nbsp基本信息</span>
                            </a>
                        </li>
                        <br>
                        <li role="presentation">
                            <a href="#changePassword" aria-controls="changePassword" role="tab" data-toggle="tab">
                                <span class="glyphicon glyphicon-lock" aria-hidden="true">&nbsp修改密码</span>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>

        </div>

        <div class="col-md-7">
            <div class="tab-content">
                <div role="tabpanel" class="tab-pane active" id="basic">
                    <h2>基本信息</h2>
                    <hr>
                    <form class="form-horizontal" action="updateBasicInfo" method="post">
                        <div class="form-group">
                            <label for="userId" class="col-sm-2 control-label">用户ID</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="userID" id="userID" value="${LoginUser['userID']}" readonly="readonly"/>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="email" class="col-sm-2 control-label">注册邮箱</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="email" id="email" value="${LoginUser['email']}" readonly="readonly"/>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="username" class="col-sm-2 control-label">昵称</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="username" id="username" value="${LoginUser['name']}"/>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="tel" class="col-sm-2 control-label">电话</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="tel" id="tel" value="${LoginUser['telephone']}"/>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="description" class="col-sm-2 control-label">个人描述</label>
                            <div class="col-sm-10">
                                <textarea class="form-control" rows="4" name="description" id="description" draggable="false"
                                          style="resize: none">${LoginUser["description"]}</textarea>
                            </div>
                        </div>


                        <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10">
                                <button type="submit" class="btn btn-primary" onclick=updateBasicInfo()>更 新</button>
                            </div>
                        </div>
                    </form>
                </div>
                <br>
                <br>
                <div role="tabpanel" class="tab-pane" id="changePassword">
                    <h2>修改密码</h2>
                    <form>
                      <div class="form-group">
                          <label for="newPassword">输入新密码：</label>
                          <input type="text" class="form-control" name="newPassword" id="newPassword" value="" >
                    </div>
                        <br>
                      <div class="form-group">
                          <label for="confirmPassword">再次输入密码：</label>
                          <input type="text" class="form-control" name="confirmPassword" id="confirmPassword" value="" >
                      </div>
                        <button class="btn-info" type="button" onclick=updatePassword()>修改密码</button>
                  </form>
                </div>
        </div>
    </div>
    </div>

</div>

<script language="javascript" type="text/javascript">
    function updateBasicInfo() {
        var r = window.confirm("信息更新成功！");
        document.getElementById("operate_result_info").style.display = "block";
}

    function updatePassword(){
        var newPassword=document.getElementById("newPassword").value;
        var confirmPassword=document.getElementById("confirmPassword").value;
        var userID=document.getElementById("userID").value;
        if(newPassword==null){
            alert("未输入新密码！");

        }else if(confirmPassword==null){
            alert("未确认新密码");

        } else if(newPassword===confirmPassword){
            $.ajax({
                //提交数据的类型 POST GET
                type:"POST",
                //提交的网址
                url:"/updatePassword",
                //提交的数据
                data:{
                    Name:userID,
                    Password:confirmPassword
                },
                //成功返回之后调用的函数
                success:function(data) {
                    alert(data);
                    if (data === "true") {
                        alert("密码更改成功！");
                        window.location.reload();
                    }else{
                        alert("密码更改失败！");
                        window.location.reload();
                    }
                }

            });
        }else if(confirmPassword!==newPassword){
            alert("两次输入的密码不一致，请重试！");
        }
    }
</script>

</body>
</html>

