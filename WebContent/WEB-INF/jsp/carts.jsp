[html] view plain copy
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>  
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html><head></head><body style="background-image:url(../../static/image/banner.jpg)">[html] view plain copy




<title>购物车</title>
<!--
<link rel="stylesheet" type="text/css" href="styles.css">
-->
<style type="text/css">
    a:link{color:#FF4500;text-decoration:none}/*未访问，红色，无下划线*/
    a:active{color:blue;}/*激活，红色*/
    a:visited{color:red;text-decoration:none}/*已访问，紫色，无下划线*/
    a:hover{color:yellow;text-decoration:underline}/*鼠标移动上面，蓝色，下划线*/
</style>

<link href="../../static/css/font-awesome.min.css" rel="stylesheet" type="text/css" media="all">
<link href="../../static/css/snow.css" rel="stylesheet" type="text/css" media="all">
<link href="../../static/css/style.css" rel="stylesheet" type="text/css" media="all">



<br> <br> <br>

<div style="display:flex;justify-content: center;margin:auto;width:900px;height:600px;">
    <div class="form-w3-agile">
        <div style="display:flex; justify-content:center">
            <table width="900" align="center">
                <tbody><tr bgcolor="#ff0000">
                    <td colspan="8"><font size="5" face="隶书">我的购物车</font></td>
                </tr>
                <tr>
                    <td width="60" align="center"><font color="blue"><b>商品</b></font></td>
                    <td align="center"><font color="blue"><b>商品名称</b></font></td>
                    <td align="center"><font color="blue"><b>价格</b></font></td>
                    <td width="20" align="center"></td>
                    <td width="60" align="center"><font color="blue"><b>数量</b></font></td>
                    <td width="20" align="center"></td>
                    <td align="center"><font color="blue"><b>总价</b></font></td>
                    <td align="center"><font color="blue"><b>操作</b></font></td>
                </tr>
                <tr>
                    <td colspan="8"><hr></td>
                </tr>


                <tr>
                    <td colspan="8" height="30" align="center">请添加书籍!</td>
                </tr>

                <tr align="center">
                    <td width="60" height="80"><img src="Simages/.jpg"></td>
                    <td align="center"></td>
                    <td align="center">￥</td>
                    <td width="20" align="center">
                        <form action="UpdateNumServlet.do" method="post" name="numform"><!--减数量 -->
                            <br>
                            <input value="-" name="sub" type="submit">
                            <input value="-1" name="hid" type="hidden">
                        </form>
                    </td>

                    <td width="60" align="center">
                        <input size="10" readonly="" value="" style="text-align:center" type="text">
                    </td>

                    <td width="20" align="center">
                        <form action="UpdateNumServlet.do" method="post"><!-- 加数量 -->
                            <br>
                            <input value="+" name="add" type="submit">
                            <input value="1" name="hid" type="hidden">
                        </form>
                    </td>
                    <td align="center">￥</td>
                    <td align="center">
                        <form action="DeleteBookServlet.do" method="post">
                            <br>
                            <input value="删除" type="submit">
                        </form>
                    </td>
                </tr>
                <tr align="center">
                    <td width="60" height="80"><img src="Simages/.jpg"></td>
                    <td align="center"></td>
                    <td align="center">￥</td>
                    <td width="20" align="center">
                        <form action="UpdateNumServlet.do" method="post" name="numform"><!--减数量 -->
                            <br>
                            <input value="-" name="sub" type="submit">
                            <input value="-1" name="hid" type="hidden">
                        </form>
                    </td>

                    <td width="60" align="center">
                        <input size="10" readonly="" value="" style="text-align:center" type="text">
                    </td>

                    <td width="20" align="center">
                        <form action="UpdateNumServlet.do" method="post"><!-- 加数量 -->
                            <br>
                            <input value="+" name="add" type="submit">
                            <input value="1" name="hid" type="hidden">
                        </form>
                    </td>
                    <td align="center">￥</td>
                    <td align="center">
                        <form action="DeleteBookServlet.do" method="post">
                            <br>
                            <input value="删除" type="submit">
                        </form>
                    </td>
                </tr>

                <tr align="center">
                    <td width="60" height="80"><img src="Simages/.jpg"></td>
                    <td align="center"></td>
                    <td align="center">￥</td>
                    <td width="20" align="center">
                        <form action="UpdateNumServlet.do" method="post" name="numform"><!--减数量 -->
                            <br>
                            <input value="-" name="sub" type="submit">
                            <input value="-1" name="hid" type="hidden">
                        </form>
                    </td>

                    <td width="60" align="center">
                        <input size="10" readonly="" value="" style="text-align:center" type="text">
                    </td>

                    <td width="20" align="center">
                        <form action="UpdateNumServlet.do" method="post"><!-- 加数量 -->
                            <br>
                            <input value="+" name="add" type="submit">
                            <input value="1" name="hid" type="hidden">
                        </form>
                    </td>
                    <td align="center">￥</td>
                    <td align="center">
                        <form action="DeleteBookServlet.do" method="post">
                            <br>
                            <input value="删除" type="submit">
                        </form>
                    </td>
                </tr>
                <tr>
                    <td colspan="8"><hr></td>
                </tr>
                <tr>
                    <td width="80">总金额：</td>
                    <td colspan="7">￥</td>
                </tr>
                <tr>
                    <td colspan="8"><hr></td>
                </tr>
                <tr>
                    <td colspan="2">

                        <form action="ClearCartServlet.do" method="post">
                            <br>
                            <input value="清空购物车" type="submit">
                        </form>
                    </td>
                    <td colspan="6" valign="bottom" align="right">
                        <form action="orders.jsp" method="post">
                            <br>
                            <input value="商品结算" type="submit">   <a href="../../main.jsp">返回继续购物</a>
                        </form>
                    </td>
                </tr>
                <tr>
                    <td colspan="8"><hr></td>
                </tr>
                </tbody></table>
        </div>
    </div>
</div>



</body></html>