<%--
  Created by IntelliJ IDEA.
  User: jw666
  Date: 2022-11-21
  Time: 오후 4:45
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

            <tr>
                <td>작성자</td>
                <td>${data.writer}</td>
            </tr>
            <tr>
                <td>제목</td>
                <td>${data.title}</td>
            </tr>
            <tr>
                <td>내용</td>
                <td>${data.content}</td>
            </tr>
            <tr>
                <td>비밀번호</td>
                <td><input class="password" type="text" value="" name="password"></td>
            </tr>
            <tr>
                <td><input type="button" value="삭제" class="delete"/></td>
                <td><input type="button" value="수정" class="modify"/></td>
            </tr>

        </table>
    <script>
        const pwd = "<c:out value='${data.password}'/>";
        const link = "<c:out value='/delete?seq=${data.id}'/>"
        document.querySelector('.delete').addEventListener("click",function(e){

            if(document.querySelector('.password').value === pwd){
                location.href = link;
            }else{
                alert("비밀번호가 틀립니다")
            }
        })
        const linkMO = "<c:out value='/modified?seq=${data.id}'/>"
        document.querySelector('.modify').addEventListener("click",function(e){

            if(document.querySelector('.password').value === pwd){
                location.href = linkMO;
            }else{
                alert("비밀번호가 틀립니다")
            }
        })

    </script>

</body>
</html>