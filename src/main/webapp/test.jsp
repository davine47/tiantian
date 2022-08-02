<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>login</h1>
</body>
</html>

<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org"
      xmlns:layout="http://www.ultraq.net.nz/thymeleaf/layout"
      xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity4">
<head th:replace="~{common/header :: header}">
</head>
<body>

<!-- Page content -->
<div class="container blog-content-container">
    <form  th:action="@{/login}" method="post">
        <h2 >请登录</h2>

        <div class="form-group col-md-5">
            <label for="username" class="col-form-label">账号</label>
            <input type="text" class="form-control" id="username" name="username" maxlength="50" placeholder="请输入账号">

        </div>
        <div class="form-group col-md-5">
            <label for="password" class="col-form-label">密码</label>
            <input type="password" class="form-control" id="password" name="password" maxlength="30" placeholder="请输入密码" >
        </div>
        <div class="form-group col-md-5">
            <button type="submit" onclick="window.location.href='test1.jsp';" class="btn btn-primary">登录</button>
        </div>
    </form>
</div><!-- /.container -->

<div th:replace="~{common/footer :: footer}"></div>
</body>
</html>
