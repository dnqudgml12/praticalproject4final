<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@page import="com.crud.dao.BoardDAO, com.crud.bean.BoardVO"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Viewform</title>
  <link rel="stylesheet" href="mycss.css">
</head>
<body>

<%
  BoardDAO boardDAO = new BoardDAO();
  BoardVO u = null;
  String id = request.getParameter("id");
  try {
    int seqId = Integer.parseInt(id);
    u = boardDAO.getBoard(seqId);
  } catch (NumberFormatException e) {
    // Handle the case where id is not an integer
    out.println("Invalid ID format.");
  } catch (Exception e) {
    // Handle other exceptions
    e.printStackTrace();
  }
%>


<h1>View form</h1>
<form  action="posts.jsp">
  <input type="hidden" name="seq" value="<%=u.getSeq() %>"/>

  <div class="webbox">
    <div class="div">
      <label class="label" for="postId">ID:</label>
      <input  style="width:80%" class="text" type="text" id="postId" name="id" value="<%=u.getId()%>"  disabled>
    </div>

    <div class="div">
      <label class="label" for="postWord">Word:</label>
      <input style="width:80%"class="text" type="text" id="postWord" name="word" value="<%=u.getWord()%>"  disabled>
    </div>
  </div>
  <div class="webbox">
    <div class="div">
      <label class="label" for="postlevel">level:</label>
      <div class="div1">
        <input style="width:80%"class="text" type="text" id="postlevel" name="level"  value="<%=u.getLevel()%>" disabled>
        <div style="width:80%"class="text"  id="postlevel" name="level"  required>수준입니다</div>
      </div>
    </div>
  </div>


  <div class="webbox">
    <div class="div">
      <label class="label" for="postMeaning">Meaning:</label>
      <input style="width:80%" class="text" type="text" id="postMeaning" name="meaning" value="<%=u.getMeaning()%>" disabled>
    </div>

    <div class="div">
      <label class="label" for="postDate">Date:</label>
      <input style="width:80%" class="text" type="text" id="postDate" name="date" value="<%=u.getDate()%>"  disabled>
    </div>
  </div>
  <div class="webbox">

    <div class="div">
      <label class="label" for="postAddress">address:</label>
      <input style="width:80%" class="text" type="text" id="postAddress" name="address" value="<%=u.getAddress()%>"  disabled>
    </div>

    <div class="div">
      <label class="label" for="postAddress2">address2:</label>
      <input style="width:80%" class="text" type="text" id="postAddress2" name="address2" value="<%=u.getAddress2()%>"  disabled>
    </div>
  </div>
  <div class="webbox">

    <div class="div">
      <label class="label" for="postEmail">email:</label>
      <input style="width:80%" class="text" type="email" id="postEmail" name="email" value="<%=u.getEmail()%>"  disabled>
    </div>

    <div class="div">
      <label class="label" for="postpassword">password:</label>
      <input style="width:80%" class="text" type="text" id="postpassword" name="password" value="<%=u.getPassword()%>" disabled>
    </div>
  </div>
  <div class="div">
    <label class="label" for="postSchool">school:</label>
    <input style="width:40%" class="text" type="text" id="postSchool" name="school" value="<%=u.getSchool()%>" disabled>
  </div>

  <div class="div" style="margin-top: -10px">
    <input class="submit" type="submit" value="목록보기" >



  </div>

</form>

</body>
</html>