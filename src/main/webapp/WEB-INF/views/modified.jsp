<%--
  Created by IntelliJ IDEA.
  User: jw666
  Date: 2022-11-21
  Time: 오후 4:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>내용보기</h3>

<table border="1">
    <form method="post" action="/modified" class="form">
        <input type="hidden" value="${data.id}" name="id">
        <tr>
            <td>작성자</td>
            <td><input type="text" value="${data.writer}" name="writer"></td>
        </tr>
        <tr>
            <td>제목</td>
            <td><input type="text" value="${data.title}" name="title"></td>
        </tr>
        <tr>
            <td>내용</td>
            <td><input type="text" value="${data.content}" name="content"></td>
        </tr>
        <tr>
            <td>비밀번호</td>
            <td><input class="password" type="text" value="" name="password"></td>
        </tr>
        <tr>
            <td><input type="button" class="submit" value="[수정완료]"></td>
        </tr>

    </form>
</table>
<script>
    const pwd = "<c:out value='${data.password}'/>";
    document.querySelector('.submit').addEventListener("click",function(e){

        if(document.querySelector('.password').value === pwd){
            document.querySelector('form').submit();
        }else{
            alert("비밀번호가 틀립니다")
        }
    })

</script>
</body>
</html>
