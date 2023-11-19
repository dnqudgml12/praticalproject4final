<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Insert title here</title>
  <link rel="stylesheet" href="mycss.css">
</head>
<body>

<h1>Add New Post</h1>
<form action="addpost.jsp" method="post">


  <h2 class="h1h1">Add Word Details</h2>

  <div class="webbox">
    <div class="div">
      <label class="label" for="postId">ID:</label>
      <input  style="width:80%" class="text" type="text" id="postId" name="id" required>
    </div>

    <div class="div">
      <label class="label" for="postWord">Word:</label>
      <input style="width:80%"class="text" type="text" id="postWord" name="word" required>
    </div>
  </div>
  <div class="webbox">
    <div class="div">
      <label class="label" for="postlevel">level:</label>
      <div class="div1">
        <input style="width:80%"class="text" type="text" id="postlevel" name="level" required>
        <div style="width:80%"class="text"  id="postlevel" name="level"  required>수준입니다</div>
      </div>
    </div>
  </div>


  <div class="webbox">
    <div class="div">
      <label class="label" for="postMeaning">Meaning:</label>
      <input style="width:80%" class="text" type="text" id="postMeaning" name="meaning" required>
    </div>

    <div class="div">
      <label class="label" for="postDate">Date:</label>
      <input style="width:80%" class="text" type="text" id="postDate" name="date" required>
    </div>
  </div>
  <div class="webbox">

    <div class="div">
      <label class="label" for="postAddress">address:</label>
      <input style="width:80%" class="text" type="text" id="postAddress" name="address" placeholder="1234 Main St" required>
    </div>

    <div class="div">
      <label class="label" for="postAddress2">address2:</label>
      <input style="width:80%" class="text" type="text" id="postAddress2" name="address2" placeholder="Apartment, studio, or floor" required>
    </div>
  </div>
  <div class="webbox">

    <div class="div">
      <label class="label" for="postEmail">email:</label>
      <input style="width:80%" class="text" type="email" id="postEmail" name="email" required>
    </div>

    <div class="div">
      <label class="label" for="postpassword">password:</label>
      <input style="width:80%" class="text" type="text" id="postpassword" name="password" required>
    </div>
  </div>
  <div class="div">
    <label class="label" for="postSchool">school:</label>
    <input style="width:40%" class="text" type="text" id="postSchool" name="school" required>
  </div>

  <div class="div" style="margin-top: -10px">
    <input class="submit" type="submit" value="게시" >
    <button class="submit" type="button" onclick="goBack()">뒤로가기</button>


  </div>

  <a href="posts.jsp">View All Records</a></td>

</form>

<script>
  function goBack() {
    window.history.back();
  }
</script>

</body>
</html>