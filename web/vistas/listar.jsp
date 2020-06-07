
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.Persona"%>
<%@page import="ModeloDAO.PersonaDAO"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<title>JSP Page</title>
</head>
<body>
    
<div class="mt-4">
<div class="card">
<div class="card-header">
<a  href="Controlador?accion=add" class="btn btn-primary">Nuevo Usuario</a> 
</div>
<div class="card-body">
<table  class="table table-hover">
    
<thead>
<tr>
<th>ID</th>
<th>DUI</th>
<th>NOMBRE</th>
<th>APELLIDO</th>
<th>ACCIONES</th>
</tr>
</thead>
<%
PersonaDAO dao  = new PersonaDAO(); 
List<Persona>list =dao.listar();
Iterator<Persona>iter=list.iterator();
Persona pers= null;

while(iter.hasNext()){
    
pers =iter.next();

%>
<tbody>
<tr>
            <td><%= pers.getId()%></td>
            <td><%= pers.getDui()%></td>
            <td><%= pers.getNombre()%></td>
            <td><%= pers.getApellido()%></td>
<td>
    <a  href="Controlador?accion=editar&id=<%= pers.getId()%>"    class="btn btn-warning">Edit</a>
<a  class="btn btn-danger">Delete</a>
</td>
</tr>
<%}%>
</tbody>
</table>
</div>      
</div>    
</div>
</body>
</html>

