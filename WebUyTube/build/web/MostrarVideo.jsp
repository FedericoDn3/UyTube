<%-- 
    Document   : MostrarVideo
    Created on : 28-oct-2019, 16:24:23
    Author     : visua
--%>

<%@page import="logica.Usuario"%>
<%@page import="logica.Comentario"%>
<%@page import="logica.Video"%>
<%@page import="java.util.List"%>
<%@page import="logica.Manejador"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <!--CSS ANIMATE-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.0/animate.min.css">
        <!--FONT AWESOME-->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
              integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
        <!-- BOOTSTRAP-->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <!-- GOOGLE FONT-->
        <link href="https://fonts.googleapis.com/css?family=Be+Vietnam&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="./resources/css/css.css">
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="resources/js/CheckMailUse.js" type="text/javascript"></script>
        <script src="http://code.jquery.com/jquery-1.10.2.js" type="text/javascript"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <style>
            body{
              background-image: url("./imagenes/FondoPro4.jpg");
            }
        </style>
    </head>
    <body>
        <%
            Manejador m = Manejador.getinstance();
            List<Video> Vid = m.getVideos();         
            for(int i=0; i<Vid.size(); i++)
            {
                if(Vid.get(i).getNombre().equals(request.getAttribute("Nombre")))
                {
                    %>
                    <centre>                        
                    <video contextmenu contenteditable controls src="<%=Vid.get(i).getUrl()%>" width="650" height="380" style="border: 5px solid black; margin: 15px"></video>
                    <div style=" margin: 15px; width: 650px; height: 150px">
                        <input type="submit" name="BotonConsultar" value="Me Gusta" id="BotonCatego" style='width:150px; height:30px'>
                        <input type="submit" name="BotonConsultar" value="No me Gusta" id="BotonCatego" style='width:150px; height:30px'>
                        <input type="submit" name="BotonConsultar" value="Agregar a Lista" id="BotonCatego" style='width:150px; height:30px'>
                        <br>
                        <br>
                        <div style="background-image: url('./imagenes/Textura1.jpg'); border: 5px solid black; width: 650px; height: 150px">
                            <text name="comment" rows=5 cols=40 style=" margin: 15px; width: 300px; height: 50px; color: white;">Nombre: <%=Vid.get(i).getNombre()%></text>
                            <br>
                            <br>
                            <text name="comment" rows=5 cols=40 style=" margin: 15px; width: 300px; height: 50px; color: white;">Descripción <%=Vid.get(i).getDescripcion()%></text>
                        </div>
                        <br>
                        <form style="width: 650px; height: 150px">
                            <textarea name="comment" rows=4 cols=80></textarea>
                        </form>
                        <div>
                            <%
                                List<Video> v = m.getVideos();
                            
                                for(int i2=0; i2<v.size(); i2++)
                                {
                                    if(v.get(i2).getNombre().equals(request.getAttribute("Nombre")))
                                    {
                                        List<Comentario> c = v.get(i2).getComentarios();
                                        if(c.size()>0)
                                        {
                                            for(int i3=0; i3<c.size(); i3++)
                                            {
                                            }
                                            
                                        }
                                        else
                                        {
                                            %>
                                            <div style="background-image: url('./imagenes/Textura6.jpg'); border: 5px solid black; width: 650px; height: auto;">
                                                <text name="comment" rows=5 cols=40 style="margin: 4px; color: white; float: left;">No hay Comentarios</text> 
                                            </div>
                                            <%
                                        }
                                        
                                        break;
                                    }    
                                }    
                            %>
                            <div style="background-image: url('./imagenes/Textura6.jpg'); border: 5px solid black; width: 650px; height: auto;">
                                <img alt="Sin Foto" src="" style="margin: 4px; width: 2px; height: 2px; float: left;"></img>
                                <text name="comment" rows=5 cols=40 style="margin: 4px; color: white; float: left;">Nombre y Fecha</text>
                                <br>
                                <text name="comment" rows=5 cols=40 style="margin: 4px; color: white; float: left;">Comentario</text> 
                            </div>
                        </div>
                     <br>
                    </div>
                         
                    </centre>
                    <%
                }
            }
        %>
        
    </body>
</html>
