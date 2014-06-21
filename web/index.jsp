<%-- 
    Document   : index
    Created on : 17/06/2014, 09:28:29 PM
    Author     : T107
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bienvenido</title>
        <script src="js/libs/jquery/jquery.js"></script>
        <link rel="stylesheet" href="js/libs/twitter-bootstrap/css/bootstrap.css">
        <script>
            $(document).ready(function (){
             //alert("Hola que tal como esta, bienvenido");   
             $("#mensaje").click(function (){
                // $("#respuesta").html("ya me apachurraste!! ahora me cumples");
                $.ajax({
                    /*
                     * los siguientes son atributos de ajax con jquery
                     * siempre separados por comas
                     */
                    url: "http://localhost:8095/mavenspring/servicios/servicio-usuario/todos", 
                    type: 'GET',
                    data: {
                            
            },
            success: function (data) {
                        $("#respuesta").html(data);
                    },
                    failure:function (data){
                        
                    }
                }); /*cierra ajax*/
             }); /*cierra click*/
            });
            
        </script>
    </head>
    <body>
        <h1 id="mensaje" class="btn btn-lg btn-primary">Apachurrame</h1>
        <div id="respuesta">Ya me quiero ir!!</div>
    </body>
</html>
