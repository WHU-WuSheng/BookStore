<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>  
  
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">  
<html>  
  <head>  
    <title>填写订单</title>  
    <!-- 
    <link rel="stylesheet" type="text/css" href="styles.css"> 
    -->  
  </head>    
  <body bgcolor="#98FB98">  
      <form action="OrderServlet" method="post">  
      <br><br>  
       <table align="center"  width="900" >  
          <tr>  
            <td colspan="2" bgcolor="#FFC125"><b>填写订单信息:</b></td>              
          </tr>  
          <tr>  
            <td colspan="2"><hr></td>  
          </tr>  
          <tr >  
            <td colspan="2" bgcolor="#FFE4B5">收货人信息</td>  
          </tr>  
          <tr>  
            <td width="150">收  货  人：</td>  
            <td><input type="text" name="receiver"></td>  
          </tr>  
           <tr>  
            <td width="150">详细地址：</td>  
            <td><input type="text" name="address" size="70"></td>  
          </tr>  
           <tr>  
            <td width="150">邮政编码：</td>  
            <td><input type="text" name="post"></td>  
          </tr>  
           <tr>  
            <td width="150">移动电话：</td>  
            <td><input type="text" name="mobile">         固定电话：<input type="text" name="fixphone">(如：027-12345678)</td>  
          </tr>  
          <tr  bgcolor="#FFE4B5">  
             <td colspan="2">送货方式：</td>  
          </tr>  
          <tr>  
            <td colspan="2" ><input type="radio" name="songhuoway" value="<b>普通快递送货上门  。</b>【运费5元】 ">普通快递送货上门     
                            送货时间：  
                   <select name="songhuotime" style="width:150px">  
                         <option value="--请选择送货时间--" >--请选择送货时间--</option>   
                         <option value="送货时间：三天内." >三天内</option>  
                         <option value="送货时间：一周内." >一周内</option>  
                         <option value="送货时间：十天内." >十天内</option>                  
                   </select>(支持货到付款)【运费5元】  
            </td>  
          </tr>  
          <tr>  
              <td colspan="2" ><input type="radio" name="songhuoway" value="<b>普通邮递</b>(不支持货到付款)【运费8元】">普通邮递(不支持货到付款)【运费8元】   </td>  
          </tr>  
           <tr>  
              <td colspan="2" ><input type="radio" name="songhuoway" value="<b>邮政特快专递</b>(不支持货到付款)【运费20元】">邮政特快专递(不支持货到付款)【运费20元】   </td>  
          </tr>  
          <tr  bgcolor="#FFE4B5">  
             <td colspan="2">支付方式：</td>  
          </tr>  
          <tr>  
            <td colspan="2" ><input type="radio" name="payway" value="网上支付">网上支付<br>  
                         <input type="radio" name="payway" value="网上支付：通过 <b>工商银行</b>支付">工商银行<br>  
                         <input type="radio" name="payway" value="网上支付：通过 <b>中国银行</b>支付">中国银行<br>  
                         <input type="radio" name="payway" value="网上支付：通过 <b>建设银行</b>支付">建设银行<br>  
                         <input type="radio" name="payway" value="网上支付：通过 <b>支付宝支付</b>支付">支付宝支付  
            </td>  
          </tr>  
           <tr>  
              <td colspan="2" ><input type="radio" name="payway" value="货到付款">货到付款   </td>  
          </tr>  
          <tr>  
              <td colspan="2" ><input type="radio" name="payway" value="邮政汇款">邮政汇款   </td>  
          </tr>  
          <tr>  
              <td colspan="2" ><input type="radio" name="payway" value="银行转账">银行转账   </td>  
          </tr>  
          <tr  bgcolor="#FFE4B5">  
             <td colspan="2">给卖家留言：</td>  
          </tr>  
          <tr >  
             <td colspan="2"><input type="text" size="100" name="message"></td>  
          </tr>  
           <tr>  
            <td colspan="2"><hr></td>  
          </tr>  
          <tr>  
             <td align="center" colspan="2"><input type="submit" value="生成订单"></td>  
          </tr>  
       </table>  
       </form>  
  </body>  
</html>  