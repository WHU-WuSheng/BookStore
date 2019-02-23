<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="Entity.Book"%>
<%@ page import="java.util.List" %>
<% List<Book> list=(List<Book>)request.getAttribute("response");  %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>搜索结果</title>
</head>
<body>
<jsp:include page="/WEB-INF/jsp/header.jsp" />

<div style=margin-left:250px;margin-top:0px;> 

<div style="background-color:rgb(220,220,220); width:70px;height:30px">全部商品</div>

<table width="80%"  border="0" style=" border-top:1px solid #000000;table-layout:fixed;border-collapse:collapse">

<tr style=background-color:rgb(220,220,220)>
<td height=35px colspan="8"><span>全部>&nbsp</span>
<span id="searchbook" style="color:red">搜索内容&nbsp</span>
<span>共有&nbsp</span>
<span id="searchnum" style="color:red">结果条数&nbsp</span>
<span>件商品</span></td>
</tr>

<tr style=background-color:rgb(220,220,220)>
<td height=35px><span>分类</span></td>
<td><span>欧美</span></td>
<td><span>日韩</span></td>
<td><span>中国大陆</span></td>
<td><span>印度</span></td>
<td><span>港台</span></td>
<td></td>
<td></td>
</tr>

<tr style=background-color:rgb(220,220,220)>
<td height=35px><span>其他分类</span></td>
<td><span>小说</span></td>
<td><span>文学</span></td>
<td><span>艺术</span></td>
<td><span>管理</span></td>
<td><span>心理学</span></td>
<td><span>名人传记</span></td>
<td><span>外语</span></td>
</tr>

<tr style=background-color:rgb(220,220,220)>
<td height=35px><span>年龄段</span></td>
<td><span>0-2岁</span></td>
<td><span>3-6岁</span></td>
<td><span>7-14岁</span></td>
<td><span>14-18岁</span></td>
<td><span>18-30岁</span></td>
<td><span>30-50岁</span></td>
<td><span>50岁以上</span></td>
</tr>
</table>

<br>

<table width="80%" style="border-bottom:1px solid #000000;margin-top:3px;table-layout:fixed;border-collapse:collapse">
<tr style=background-color:rgb(220,220,220)>
<td height=10px><span>综合排序</span></td>
<td><span>销量↓</span></td>
<td><span>价格↓</span></td>
</tr>
</table>

<form action="getbook" method="post">
<table width="80%" height=200px style="border-bottom:1px solid #000000;table-layout:fixed;border-collapse:collapse" name="1">   
<tr style=background-color:rgb(220,220,220)>
<td rowspan="4"><img src="<%=list.get(0).getPicture()%>" width=100%></td>
<td colspan="2"><input type="submit" value="<%=list.get(0).getName() %>" style="background-color:transparent;border:0"></td>
</tr>

<tr style=background-color:rgb(220,220,220)>
<td><span><%=list.get(0).getAuthor() %></span></td>
<td><span><%=list.get(0).getPress() %></span></td>
</tr> 

<tr style=background-color:rgb(220,220,220)>
<td colspan="2"><span><%=list.get(0).getDescription() %></span></td>
</tr>

<tr style=background-color:rgb(220,220,220)>
<td colspan="2"><button>这里是加入购物车按钮</button></td>
</tr>
</table> 


<table width="80%" height=200px style="border-bottom:1px solid #000000;table-layout:fixed;border-collapse:collapse" name="2">   
<tr style=background-color:rgb(220,220,220)>
<td rowspan="4"><span>这里是图片</span></td>
<td colspan="2"><input type="submit" value="这里是书名" style="background-color:transparent;border:0"></td>
</tr>

<tr style=background-color:rgb(220,220,220)>
<td><span>这里是作者</span></td>
<td><span>这里是出版社</span></td>
</tr>

<tr style=background-color:rgb(220,220,220)>
<td colspan="2"><span>这里是图书内容简介</span></td>
</tr>

<tr style=background-color:rgb(220,220,220)>
<td colspan="2"><button>这里是加入购物车按钮</button></td>
</tr>
</table>

<table width="80%" height=200px style="border-bottom:1px solid #000000;table-layout:fixed;border-collapse:collapse" name="3">   
<tr style=background-color:rgb(220,220,220)>
<td rowspan="4"><span>这里是图片</span></td>
<td colspan="2"><input type="submit" value="这里是书名" style="background-color:transparent;border:0"></td>
</tr>

<tr style=background-color:rgb(220,220,220)>
<td><span>这里是作者</span></td>
<td><span>这里是出版社</span></td>
</tr>

<tr style=background-color:rgb(220,220,220)>
<td colspan="2"><span>这里是图书内容简介</span></td>
</tr>

<tr style=background-color:rgb(220,220,220)>
<td colspan="2"><button>这里是加入购物车按钮</button></td>
</tr>
</table>

<table width="80%" height=200px style="border-bottom:1px solid #000000;table-layout:fixed;border-collapse:collapse" name="4">   
<tr style=background-color:rgb(220,220,220)>
<td rowspan="4"><span>这里是图片</span></td>
<td colspan="2"><input type="submit" value="这里是书名" style="background-color:transparent;border:0"></td>
</tr>

<tr style=background-color:rgb(220,220,220)>
<td><span>这里是作者</span></td>
<td><span>这里是出版社</span></td>
</tr>

<tr style=background-color:rgb(220,220,220)>
<td colspan="2"><span>这里是图书内容简介</span></td>
</tr>

<tr style=background-color:rgb(220,220,220)>
<td colspan="2"><button>这里是加入购物车按钮</button></td>
</tr>
</table>

</form>
<br><br>

<div style="margin-left:380px">  
<button>1</button>
<button>2</button>
<button>3</button>
<span>...</span>
<button>尾页</button>
</div>



</div>



</body>
</html>