﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
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
    <title>鑫源丰erp后台管理系统</title>
    <link rel="stylesheet" href="css/public.css"/>
    <link rel="stylesheet" href="css/style.css"/>
</head>
<body>
<!--头部-->
    <header class="publicHeader">
        <h1>鑫源丰erp后台管理系统</h1>
        <div class="publicHeaderR">
            <p><span>下午好！</span><span style="color: #fff21b"> ${sessionScope.USER.nickName}</span> , 欢迎你！</p>
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
	                <li id="active"><a href="${pageContext.request.contextPath }/OrderServlet?method=list">订单管理</a></li>
	                <li><a href="${pageContext.request.contextPath }/SupplierServlet?method=getPageBean&currentPage=1">供应商管理</a></li>
                <li><a href="<%=request.getContextPath() %>/PurchaseOrder?method=QueryAllStock">采购单管理</a></li>
	                <li><a href="${path }/ProductStockServlet?action=getPageBean&currentPage=1">库存管理</a></li>
	                <li><a href="${path }/ChangeStockListServlet?action=getPageBean&currentPage=1">库存异动</a></li>
	                <li><a href="${path }/CustomerSupportServlet?action=getPageBean&currentPage=1">售后记录</a></li>
	                <li><a href="${pageContext.request.contextPath }/CustomerServlet?method=list">客户管理</a></li>
	                <li><a href="userAction?action=query">用户管理</a></li>
	                <li><a href="password.jsp">密码修改</a></li>
	                <li><a href="login.jsp">退出系统</a></li>
                </ul>
            </nav>
        </div>
        <div class="right">
            <div class="location">
                <strong>你现在所在的位置是:</strong>
                <span>用户管理页面</span>
            </div>
            <form action="userAction?action=query" method="post">
            <div class="search">
                
               
                <span>用户名：</span>
                <input name="action" value="query" type="hidden" />
                <input type="text" placeholder="请输入用户名" name="name"/>
                <input type="submit" value="查询"/>
                
                <a href="userAdd.jsp">添加用户</a>
            </div>
            <!--用户-->
            <table class="providerTable" cellpadding="0" cellspacing="0">
                <tr class="firstTr">
                    <th width="10%">编号</th>
                    <th width="20%">用户名称</th>
                    <th width="10%">账户</th>
                    <th width="10%">密码</th>
                    <th width="10%">电话</th>
                    <th width="10%">用户类型</th>
                    <th width="30%">操作</th>
                </tr>
                
                <c:forEach items="${list }" var="user" varStatus="status">
                <tr>
                    <td>${user.uId}</td>
                    <td>${user.nickName }</td>
                    <td>${user.userName }</td>
                    <td>${user.password }</td>
                    <td>${user.phone }</td>
                    
                    <td>
						<c:choose>
							<c:when test="${user.userTyep eq 0 }">
								管理员
							</c:when>
							
						</c:choose>
						<c:choose>
							<c:when test="${user.userTyep eq 1 }">
								经理
							</c:when>
						</c:choose>
						<c:choose>
							<c:when test="${user.userTyep eq 2 }">
								普通用户
							</c:when>
						</c:choose>
					</td>
                    <td>
                        <a href="userAction?action=detaul&amp;uid=${user.uId }"><img src="img/read.png" alt="查看" title="查看"/></a>
                        <a href="userAction?action=toUpdate&amp;uid=${user.uId }"><img src="img/xiugai.png" alt="修改" title="修改"/></a>
                        <a href="userAction?action=delete&amp;uid=${user.uId }" class="removeUser"><img src="img/schu.png" alt="删除" title="删除"/></a>
                    </td>
                </tr>
                </c:forEach>
              
            </table>
			 </form>

        </div>
    </section>

<!--点击删除按钮后弹出的页面-->
<div class="zhezhao"></div>
<div class="remove" id="removeUse">
    <div class="removerChid">
        <h2>提示</h2>
        <div class="removeMain">
            
        </div>
    </div>
</div>

    <footer class="footer">
    </footer>

<script src="js/jquery.js"></script>
<script src="js/js.js"></script>
<script src="js/time.js"></script>

</body>
</html>