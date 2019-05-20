<%-- 
    Document   : registrar
    Created on : 20-05-2019, 17:40:53
    Author     : javie
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Registra Usuario</h1>
        <div>
            <div>
                <div>
                    <form method="POST">
                   <center>
                    <label>Nombre</label><br>
                    <input type="text" name="Nombre" class="form-control"><br><br>
                    <label>Apellido</label><br>
                    <input type="text" name="Apellido" class="form-control"><br><br>
                    <label>Rut</label><br>
                    <input type="text" name="RUT" class="form-control"><br><br>
                    
                    
                    <input type="submit" name="Agregar" class="button button1">
                    
                    <a href="index.htm">
                    <button class="button button1" >Regresar</button>
                    </a>
                    
                    </center>
                    </form>  
                    </div>
                    </div>
        </div>
                
                <style>
                    body{
	background-color: white;
	font-family: Verdana;
}

label{
    text-align: left;
}

h1{
    text-align: center;
}

input[type=text], select {
  width: 20%;
  padding: 8px 8px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}


.button {
  background-color: #76A9D1; /* Green */
  border: none;
  color: white;
  padding: 16px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  -webkit-transition-duration: 0.4s; /* Safari */
  transition-duration: 0.4s;
  cursor: pointer;
}

.button1 {
  background-color: white; 
  color: black; 
  border: 2px solid #BDD3E5;
}

.button1:hover {
  background-color: #BDD3E5;
  color: white;
}
                </style>
    </body>
</html>
