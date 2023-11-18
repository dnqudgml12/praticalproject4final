<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@page import="com.crud.dao.BoardDAO, com.crud.bean.BoardVO,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>free board</title>

    <link href="mycss.css" rel="stylesheet">
    <style>
        .container {
            width: auto; /* Allows the container to expand naturally */
            max-width: 100%; /* Ensures that the container does not exceed the width of its parent */
            margin: 0 auto; /* Centers the container */
            padding: 20px; /* Adjust padding as needed */
            background-color: white;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* Optional: adds a subtle shadow for depth */
            box-sizing: border-box; /* Makes sure padding is included in the width */
        }

        table {
            width: 100%; /* 테이블 전체 너비 */
            border-collapse: collapse; /* 테두리 겹침 제거 */
        }

        th, td {
            border: 1px solid #ddd; /* 셀 테두리 */
            padding: 8px; /* 셀 내부 여백 */
            text-align: left; /* 텍스트 정렬 */
        }

        th {
            background-color: #f2f2f2; /* 헤더 배경색 */
        }




    </style>
    <script>
        function delete_ok(id){
            var a = confirm("정말로 삭제하겠습니까?");
            if(a) location.href='deletepost.jsp?id=' + id;
        }
    </script>
</head>
<body>
<div>

    <%
        BoardDAO boardDAO = new BoardDAO();
        List<BoardVO> list = boardDAO.getBoardList();
        request.setAttribute("list",list);
    %>

        <div id="list" class="container">
            <h1>My Vocabulary</h1>
            <table>
                <thead>
                <tr>
                    <th>#</th>
                    <th>ID</th>
                    <th>Word</th>
                    <th>Meaning</th>
                    <th>Date</th>
                    <th>Address</th>
                    <th>Address2</th>
                    <th>Email</th>
                    <th>Password</th>
                    <th>School</th>
                    <th>Menu</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${list}" var="u">
                    <tr>
                        <td>${u.seq}</td>
                        <td>${u.id}</td>
                        <td>${u.word}</td>
                        <td>${u.meaning}</td>
                        <td>${u.date}</td>
                        <td>${u.address}</td>
                        <td>${u.address2}</td>
                        <td>${u.email}</td>
                        <td>${u.password}</td>
                        <td>${u.school}</td>
                        <td>
                            <a style="border-radius:10px;background-color: blue; color: white" href="editform.jsp?id=${u.getSeq()}">Edit</a>
                            <a style="border-radius:10px;background-color: blue; color: white" href="javascript:delete_ok('${u.getSeq()}')">Delete</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
            <a href="addpostform.jsp">Add New Post</a>
        </div>
</body>
</html>