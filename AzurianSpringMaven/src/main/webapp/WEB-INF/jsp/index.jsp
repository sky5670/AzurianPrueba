<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pagina Principal</title>
    </head>

    <body>
        <div>
            <div>
                <div>

                </div>
                <div>
                    <center>
                        <h1>Lista de usuarios</h1>
                    <table>
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Nombre</th>
                                <th>Apellido</th>
                                <th>RUT</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="dato" items="${lista}">
                            <tr>
                                <td>${dato.ID_Persona}</td>
                                <td>${dato.Nombre}</td>
                                <td>${dato.Apellido}</td>
                                <td>${dato.RUT}</td>
                            </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                        <br><br>
                        <a href="agregar.htm">
                         <button class="button button1" >Registrar</button>
                         </a>
                        </center>
                </div>
            </div>
        </div>
        <style>
        body{
	background-color: white;
	font-family: Verdana;
}

#main-container{
	margin: 150px auto;
	width: 600px;
}

table{
	background-color: white;
	text-align: left;
	border-collapse: collapse;
	width: 40%;
        border : 1px solid #BDD3E5;
}

th, td{
	padding: 20px;
}

thead{
	background-color: #76A9D1;
	color: white;
}

tr:nth-child(even){
	background-color: white;
}

tr:hover td{
	background-color: #BDD3E5;
	color: white;
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
