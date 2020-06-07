<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<title>JSP Page</title>
</head>
<body>
<center>
<br>
<h1>AGREGAR PERSONA</h1>   
</center>
<form action="Controlador">
    
<div class="form-group">
    <input type="text" class="form-control " placeholder="Dui"  name="txtdui"  required="">
</div>
    
<div class="form-group">
<input type="text" class="form-control"  placeholder="Nombre"  name="txtnombre" required="">
</div>
     
<div class="form-group">
<input type="text" class="form-control" placeholder="Apellido"  name="txtapellido" required="">
</div>

<center>
<button type="submit" class="btn btn-primary" name="accion"value="agregar" >Agregar</button>
</center>
</form>

</body>
</html>
