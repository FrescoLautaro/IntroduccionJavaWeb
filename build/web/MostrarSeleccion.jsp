<%-- 
    Document   : MostrarSeleccion
    Created on : 3 oct. 2023, 08:15:34
    Author     : ET36
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>¡Gracias por enviar sus datos!</h1>
        <p> Nombre: <%=request.getParameter("nombre")%> </p>    <!-- Las variables nombre se definen como el parametro que recibimos del input -->
        <p> Apellido: <%=request.getParameter("apellido")%> </p>  
        
        <p>Cursos Seleccionados: </p>
        <ul>
            <% String[] cursos= request.getParameterValues("curso"); /*Evaluamos que parametro recibimos del array de cursos*/
            if(cursos!=null){
                for(String curso: cursos){ //Recorremos su contenido y mostramos los cursos seleccionados en forma de lista
                %>
                <li><%=curso%></li> 
                <%
                }
            }
            
            %>
        </ul>
        
        <p>Forma de Pago Seleccionada: 
            <%=request.getParameter("pago")%> </p> <!-- Mostramos el parametro que recibimos del checkbox de metodo de pago -->
        
        </p>
        
           
            
            
        
        
        
       
        
    </body>
</html>
