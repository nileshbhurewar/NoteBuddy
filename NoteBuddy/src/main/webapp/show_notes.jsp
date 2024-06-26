<%@page import="com.entities.Note"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Notes : NoteTaker </title>
 <%@include file="all_js_css.jsp" %>
</head>
<body>
<div class="container">
   <%@include file="navbar.jsp" %> <br>
   <h1 class="text-uppercase">All Notes: </h1>
   <div class="row"> </div>
   <div class="col-12"> 
        
    <%
   Session s = FactoryProvider.getFactory().openSession();
   Query q =s.createQuery("from Note");
   List<Note> list = q.list();
   for(Note note: list){
	%>   
	    <!-- out.println(note.getId()+" : "+ note.getTitle()+" : "+ note.getContent()+" : "+note.getAddedDate()+"<br>"); -->
	    
	<div class="card mt-3 text-center" >
    <div style="text-align: center;">
    <img class="card-img-top m-4" style="max-width: 80px;" src="img/notes.png" alt="Card image cap">
    </div>
    
   <div class="card-body m-5">
    <h5 class="card-title"><%=note.getTitle()%></h5>
    <p class="card-text"><%= note.getContent() %></p>
    <div class="container text-center m-2">
    <a href="DeleteServlet?note_id=<%= note.getId() %>" class="btn btn-danger">Delete</a>
    <a href="edit.jsp?note_id=<%= note.getId() %>" class="btn btn-danger">Update</a>
    </div>
   </div>
   </div> 
	<%
   }
   s.close();
    %>    
            
    </div>
   
  
</div>

</body>
</html>