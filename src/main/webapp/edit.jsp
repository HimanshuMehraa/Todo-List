<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="org.hibernate.Session" %>
 <%@page import="org.hibernate.Transaction" %>
 <%@page import="com.entities.Note" %>
 <%@page import="com.helper.FactoryProvider" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update</title>
<%@include file="js-css.jsp" %>
</head>
<body>
   <div class="container">
      <%@include file="navbar.jsp" %>
      <h2>Edit your note </h2>
       <%   int noteId=Integer.parseInt(request.getParameter("note_id").trim());
			Session s= FactoryProvider.getFactory().openSession();
			Transaction tx= s.beginTransaction();
			Note note = s.get(Note.class,noteId);
			
		%>
		<form action="edit" method="post">
		    <input value="<%=note.getId()%>" name="noteId" type="hidden"/>
			<div class="mb-3">
				<label for="title" class="form-label">Note Title</label> 
				<input name="title" required type="text" class="form-control"
					id="title" placeholder="Enter title"
					value= "<%=note.getName()%>">
			</div>
			<div class="mb-3">
				<label for="content" class="form-label">Note Content</label>
				<textarea name="content" required id="content" 
				placeholder="Enter your content here"
				class="form-control"
				style="height:300px"
				><%=note.getContent()%></textarea>
			</div>
			
			<div class="container text-center">
			     <button type="submit" class="btn btn-success">Save</button>
			</div>
			
      </form>   
   </div>
</body>
</html>