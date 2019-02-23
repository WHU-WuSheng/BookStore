<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
	<link rel="stylesheet" href="../../static/css/navi.css" type="text/css" />
</head>

<body>
	<div id="header">
			<div id="img">
				<img src="../../static/image/icon.jpg">
			</div>
			<div id="seaAndInfo">
				<div id="search">
					<form method="post" action="searchbook">
						<input type="text" name="searchtext" id="searchText">
						<input type="submit" name="" id="searchBut" >
					</form>
					<div id="rec">
					<ul>
						<li>
							热门搜索
						</li>
						<li>
							盗墓笔记
						</li>
						<li>
							朝花夕拾
						</li>
					</ul>
				</div>
				</div>
				
			</div>
			<div id="info">
					<ul>
						<li>
                            <a href="UserInformation">个人信息</a>
						</li>
						<form action="carts.jsp" method="post">
							<input type="submit" name="gotocarts" value="购物车" style="background-color:transparent;border:0">
						</form>
						<li>
							订单
						</li>
					</ul>
				</div>
		</div>
</body>
</html>