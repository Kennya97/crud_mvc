

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
<div>
<%
PersonaDAO dao = new PersonaDAO();
int id=Integer.parseInt((String)request.getAttribute("idper"));
Persona p = (Persona)dao.list(id);
%>
<center>
<br>
<h1>MODIFICAR</h1>

<form action="Controlador">
    
<div class="form-group">
    
<input type="text" name="txtdui" class="form-control " value="<%=p.getDui()%>"><br>
</div>  

<div>
<input type="text" name="txtnombre" class="form-control " value="<%=p.getNombre()%>"><br>
</div>  

<div>
<input type="text" name="txtapellido"  class="form-control "value="<%=p.getApellido()%>"><br>
</div>  

<input type="hidden"name="txtid" value="<%=p.getId()%>"><br>

<input type="submit" name="accion" value="Actualizar" class="btn btn-primary">
<a href="Controlador?accion=listar" class="btn btn-dark">Regresar</a>

</form>
</center>
</div>

</body>
</html>
