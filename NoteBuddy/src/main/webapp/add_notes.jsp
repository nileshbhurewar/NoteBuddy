<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <%@include file="all_js_css.jsp" %>
</head>
<body>
<div class="container">
   <%@include file="navbar.jsp" %>
   <div> <h1>Enter Notes Details</h1></div><br>
   
   <!-- Foms -->
   
   <form action="SaveNoteServlet" method="post">
  <div class="form-group">
    <label for="title">NoteTitle</label>
    <input name="title" type="text" class="form-control" id="title" aria-describedby="emailHelp" placeholder="TitleHere" required>
    
  </div>
  <div class="form-group">
    <label for="content">Note Content</label>
    <textarea name="content" required class="form-control" id="content" placeholder="Description Here" style="height:300px"; ></textarea>
    
   </div>
  
  <div class="text-center"> <button  type="submit" class="btn btn-danger">Submit</button></div>
  
</form>
   
</div>



</body>
</html>