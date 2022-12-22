<%--
  Created by IntelliJ IDEA.
  User: jw666
  Date: 2022-11-21
  Time: 오후 4:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <table border="1">
        <tr>
            <td>번호</td>
            <td>제목</td>
            <td>작성자</td>
            <td>생성시간</td>
        </tr>
        <c:forEach var="b" items="${board}">
            <tr>
                <td><a href="/read?seq=${b.id}">${b.id}</a></td>
                <td style="text-align: center">${b.title}</td>
                <td>${b.writer}</td>
                <td>${b.createdAt}</td>
            </tr>
        </c:forEach>
    </table>

</body>
</html>
