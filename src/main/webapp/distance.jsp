<%--
  Created by IntelliJ IDEA.
  User: Leah
  Date: 2022/8/1
  Time: 19:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>里程</title>
</head>
<body>
<h1>按照里程区间查询</h1>

<select name="curStatus"  value="${curStatus}">
    <option value="0">-请选择-</option>
    <option value="1" <c:if test="${'1' eq curStatus}"></c:if> 0-1000</option>
    <option value="2" <c:if test="${'2' eq curStatus}"></c:if> 1000-5000</option>
    <option value="3" <c:if test="${'3' eq curStatus}"></c:if> 5000-10000</option>
    <option value="4" <c:if test="${'4' eq curStatus}"></c:if> 10000-15000</option>
    <option value="5" <c:if test="${'5' eq curStatus}"></c:if> 15000-20000</option>
    <option value="6" <c:if test="${'6' eq curStatus}"></c:if> >20000</option>
    <input type="submit" value="查询" />
</select>

</body>
</html>
