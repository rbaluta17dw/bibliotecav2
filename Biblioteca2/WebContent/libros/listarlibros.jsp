<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ 	page import="biblioteca.*"%>
<%@		page import="java.util.ArrayList"%>
<%@		page import="java.util.Iterator"%>
<%
	ModeloLibro ml = new ModeloLibro();
	ArrayList<Libro> libros = ml.selectAll();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Libros</title>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<script>
	
</script>
</head>
<body>
	<nav class="navbar fixed-top navbar-expand-sm navbar-dark bg-dark">
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#nav-content" aria-controls="nav-content"
		aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="nav-content">
		<ul class="navbar-nav">
			<li class="nav-item"><a class="nav-link" href="listarlibros.jsp">Libros</a></li>
			<li class="nav-item"><a class="nav-link"
				href="listarusuarios.jsp">Usuarios</a></li>
			<li class="nav-item"><a class="nav-link"
				href="listarprestamos.jsp">Prestamos</a></li>
		</ul>
	</div>
	</nav>
	<div class="container">
		<table class="table table-bordered">
			<thead>
				<tr>
					<th>Libro</th>
					<th>Autor</th>
					<th>Ver</th>
				</tr>
			</thead>
			<tbody>
				<%
					Iterator<Libro> i = libros.iterator();
					Libro libro;
					while (i.hasNext()) {
						libro = i.next();
				%>
				<tr>
					<td><%=libro.getTitulo()%></td>
					<td><%=libro.getAutor()%></td>
					<td><a href="listarlibro.jsp?id=<%=libro.getId()%>">ver</a></td>
				</tr>
				<%
					}
				%>
			</tbody>
		</table>
	</div>
</body>
</html>