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
    <title>时间</title>
</head>
<body>
<h1>按照时间区间查询</h1>

<select name="curStatus"  value="${curStatus}">
    <option value="0">-请选择-</option>
    <option value="1" <c:if test="${'1' eq curStatus}"></c:if> 0-5</option>
    <option value="2" <c:if test="${'2' eq curStatus}"></c:if> 5-10</option>
    <option value="3" <c:if test="${'3' eq curStatus}"></c:if> 10-20</option>
    <option value="4" <c:if test="${'4' eq curStatus}"></c:if> 20-50</option>
    <option value="5" <c:if test="${'5' eq curStatus}"></c:if> 50-100</option>
    <option value="6" <c:if test="${'6' eq curStatus}"></c:if> >100</option>
    <input type="submit" value="查询" />
</select>

</body>
</html>
