<%--
  Created by IntelliJ IDEA.
  User: jose
  Date: 2/14/22
  Time: 2:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Individual Ad" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />

    <div class="container">
        <h1>Your Ad</h1>

                <h2> Title: ${ad.title} </h2>
                <h3> Description: ${ad.description}</h3>
                <h3>User: ${sessionScope.user.username}</h3>
    </div>

</body>
</html>
