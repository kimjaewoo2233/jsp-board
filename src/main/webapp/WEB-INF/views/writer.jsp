<%--
  Created by IntelliJ IDEA.
  User: jw666
  Date: 2022-11-21
  Time: 오후 4:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<table>
    <form action="/write" method="post">
    <tr>
      <td>작성자</td>
      <td><input type="text" name="writer"/></td>
    </tr>
    <tr>
      <td>제목</td>
      <td><input type="text" name="title"/></td>
    </tr>
    <tr>
      <td>내용</td>
      <td><input type="text" name="content" style="width:300px;height:200px;font-size:30px;"/></td>
    </tr>
    <tr>
      <td>비밀번호</td>
      <td><input type="password" name="password"/></td>
    </tr>
    <tr>
        <td><input type="reset" value="취소"></td>
        <td><input type="submit" value="저장"></td>
    </tr>
    </form>

</table>
</body>
</html>
