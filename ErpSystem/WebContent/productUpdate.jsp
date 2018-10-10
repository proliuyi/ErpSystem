<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    String path = request.getContextPath();
    pageContext.setAttribute("path", path);
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>家具erp后台管理系统</title>
    <link rel="stylesheet" href="css/public.css"/>
    <link rel="stylesheet" href="css/style.css"/>
</head>
<body>
<!--头部-->
<header class="publicHeader">
    <h1>家具erp后台管理系统</h1>

    <div class="publicHeaderR">
        <p><span>下午好！</span><span style="color: #fff21b"> Admin</span> , 欢迎你！</p>
        <a href="login.jsp">退出</a>
    </div>
</header>
<!--时间-->
<section class="publicTime">
    <span id="time">2015年1月1日 11:11  星期一</span>
    <a href="#">温馨提示：为了能正常浏览，请使用高版本浏览器！（IE10+）</a>
</section>
<!--主体内容-->
<section class="publicMian ">
    <div class="left">
        <h2 class="leftH2"><span class="span1"></span>功能列表 <span></span></h2>
        <nav>
            <ul class="list">
                <li id="active"><a href="billList.jsp">订单管理</a></li>
                <li><a href="providerList.jsp">供应商管理</a></li>
                <li><a href="purchaseList.jsp">采购单管理</a></li>
                <li><a href="${path }/ProductStockServlet?action=getPageBean&currentPage=1">库存管理</a></li>
                <li><a href="change_stockList.jsp">库存异动</a></li>
                <li><a href="customer_supportList.jsp">售后记录</a></li>
                <li><a href="customerList.jsp">客户管理</a></li>
                <li><a href="userList.jsp">用户管理</a></li>
                <li><a href="password.jsp">密码修改</a></li>
                <li><a href="login.jsp">退出系统</a></li>
            </ul>
        </nav>
    </div>
    <div class="right">
        <div class="location">
            <strong>你现在所在的位置是:</strong>
            <span>库存管理页面 >> 库存修改页面</span>
        </div>
        <div class="providerAdd">
            <form action="${path }/ProductStockServlet?action=update" method="post">
                <input type="hidden" name="psid" value="${productStock.psid }">
                <!--div的class 为error是验证错误，ok是验证成功-->
                <div class="">
                    <label for="providerId">物品名称：</label>
                    <input type="text" name="productName" id="providerId" value="${productStock.productName }"/>
                    <span>*</span>
                </div>
                <div>
                    <label for="providerName">仓库编号：</label>
                    <input type="text" name="repertoryNum" id="providerName" value="${productStock.repertoryNum }"/>
                    <span >*</span>
                </div>
                <div>
                    <label>物品类别：</label>
                    <!-- <input type="text" name="people" id="people" placeholder="木料"/>
                    <span>*</span>  --> 
                    <select name="productType" id="product_type">
                        <option value="1">原材料</option>
                        <option value="2">成品</option>
                    </select>
                </div>
                
                <div class="providerAddBtn">
                    <!--<a href="#">保存</a>-->
                    <!--<a href="billList.jsp">返回</a>-->
                    <input type="submit" value="保存" style="padding: 0px" />
                    <input type="button" value="返回" onclick="history.back(-1)"/>
                </div>
            </form>
        </div>

    </div>
</section>
<footer class="footer">
</footer>
<script type="text/javascript" src="${path }/js/jquery.js"></script>
<script src="${path }/js/time.js"></script>
<script type="text/javascript">
$(function () {
	$("#product_type option[value=${productStock.productType }]").prop("selected", true);
});
</script>
</body>
</html>
