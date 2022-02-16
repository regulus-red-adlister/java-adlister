<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<div class="container">
    <h1>Here Are all the ads!</h1>

    <c:forEach var="ad" items="${ads}">
        <div class="col-md-6">
            <form action="/ads/individualAd" method="GET">
<%--            <h2><a href="/ads/individualAd">${ad.id}</a></h2>--%>
            <input type="hidden" name="ad" value="${ad.id}">
<%--            <h2><a href="<c:url value='/ads/individualAd?id=${ad.id}'/>"${ad.title}/></h2>--%>
            <h3>${ad.title}</h3>
            <p>${ad.description}</p>
            <button>Show Ad</button>
            </form>

            <p>${ad.description}</p>
            <a class="update-button" href="/ads/updateAds"><i class="fa fa-chevron-left" aria-hidden="true">Update Ad</i></a>
        </div>
    </c:forEach>
</div>

</body>
</html>
