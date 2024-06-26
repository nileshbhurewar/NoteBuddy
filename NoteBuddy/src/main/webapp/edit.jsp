<%@page import="com.entities.Note"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
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
   </div>
   
   <br>
   <%
   int noteId = Integer.parseInt(request.getParameter("note_id").trim());
   Session s = FactoryProvider.getFactory().openSession();
   Note note =(Note)s.get(Note.class, noteId);
   %>
  <div class="container">
  
  <h1> Edit Content </h1>
  <!-- Foms -->
   
   <form action="UpdateServlet" method="post">
  <!--   hiddenID -->
  <input value="<%=note.getId()%>" name="noteId" type="hidden"/>

  
  <div class="form-group">
    <label for="title">NoteTitle</label>
    <input name="title" type="text" class="form-control" id="title" aria-describedby="emailHelp" placeholder="TitleHere" required value="<%= note.getTitle() %>">
    
  </div>
  <div class="form-group">
    <label for="content">Note Content</label>
    <textarea name="content" required class="form-control" id="content" placeholder="Description Here" style="height:300px"; ><%=note.getContent() %> </textarea>
    
   </div>
  
  <div class="text-center"> <button  type="submit" class="btn btn-danger">Save</button></div>
  
</form>
  </div>
</body>
</html>