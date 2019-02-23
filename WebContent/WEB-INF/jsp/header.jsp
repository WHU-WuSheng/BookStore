
<%@ page import="Entity.User" %>
<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 2018/6/13
  Time: 16:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<head>
    <script src="../../static/js/jquery-3.2.1.js"></script>
    <script src="../../static/js/bootstrap.min.js"></script>

    <link rel="stylesheet" href="../../static/css/bootstrap.min.css"/>
</head>
<div class="center-block">
    <div style="padding-left: 6%; padding-right: 6%">
        <nav class="navbar navbar-default">
            <div class="container-fluid">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="../../main.jsp">I-B-M</a>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="../../main.jsp">首页 <span class="sr-only">(current)</span></a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">图书分类 <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="">所有书籍</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="#">教辅</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="#">散文</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="#">小说</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="#">诗词</a></li>
                            </ul>
                        </li>
                    </ul>
                    <form class="navbar-form navbar-left" style="padding-left: 20%" action="searchbook">
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="Search" name="searchtext">
                        </div>
                        <button type="submit" class="btn btn-default">
                            <span class="glyphicon glyphicon-search" aria-hidden="true"></span>
                            Search
                        </button>
                    </form>
                    <ul class="nav navbar-nav navbar-right">
                        <% if((User)session.getAttribute("LoginUser")==null)
                           {%>
                            <li>
                                <a href="register(2).jsp">注册</a>
                            </li>
                            <li>
                                <a href="login(2).jsp">登录</a>
                            </li>
                        <%} else{%>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">${LoginUser["name"]} <span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="UserInformation">个人中心</a></li>
                                    <li><a href="carts">购物车</a></li>
                                    <li><a href="">订单</a></li>
                                    <li role="separator" class="divider"></li>
                                    <li><a href="logout">退出账户</a></li>
                                </ul>
                            </li>
                        <%}%>

                    </ul>


                </div><!-- /.navbar-collapse -->
            </div><!-- /.container-fluid -->
        </nav>
    </div>
</div>

