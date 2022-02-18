<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="/styles.css">
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Register For Our Site!"/>
    </jsp:include>

</head>
<body>
<jsp:include page="partials/navbar.jsp"/>




<div class="container">
    <h1>Please fill in your information.</h1>
    <form action="/register" method="post">
        <div class="form-group">
            <label for="username">Username</label>
            <input id="username" name="username" class="form-control" type="text"zz>
        </div>
        <div class="form-group">
            <label for="email">Email</label>
            <input id="email" name="email" class="form-control" type="text">
        </div>
        <div class="form-group">
            <label for="password">Password</label>
            <input id="password" name="password" class="form-control" type="password">
        </div>
        <div class="form-group">
            <label for="confirm_password">Confirm Password</label>
            <input id="confirm_password" name="confirm_password" class="form-control" type="password">
        </div>
        <%--error attribute posts error message from registerservlet --%>
        <h3 style="color: red">${error}</h3>
        <input type="submit" class="btn btn-dark btn-block">
    </form>
</div>

<script>
    window.onbeforeunload = function () {
        sessionStorage.setItem("username", $('#username').value);
    }
    window.onload = function () {
        var user = sessionStorage.getItem("username");
        if (user !== null) $('#username').value = user;
    }


</script>

   <jsp:include page="/WEB-INF/partials/footer.jsp"></jsp:include>
</body>
</html>
