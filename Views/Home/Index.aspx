<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Index</title>
     <meta charset="UTF-8"></meta>
  <meta name="description" content="ASP.NET MVC 2 CRUD Video"></meta>
  <meta name="keywords" content="ASP.NET, MVC, Facpya"></meta>
  <meta name="author" content="Juan Daniel Ma5ta Lopez"></meta>
  <meta name="viewport" content="width=device-width, initial-scale=1.0"></meta>
    <link href="../../Content/divs.css" rel="stylesheet" type="text/css" />
</head>
<body style="background-color:#FA5858">
<style type="text/css">
  .boton_2{
    text-decoration: none;
    padding: 40px;
    font-family: arial;
    text-transform: uppercase;
    padding-left: 10px;
    padding-right: 10px;
    font-weight: 800;
    font-size: 25px;
    color: black;
    display: block;   
    background-color: #9b0e0e;
  }
  .boton_2:hover{
    color: #9b0e0e;
    background-color: #bc6355;
    text-decoration: none;
  }
</style>
    <h1>        
    <marquee behavior="alternate" direction="up" width="80%">
	<marquee direction="right" behavior="alternate">Opciones</marquee>
</marquee></h1>
    <br />   

      <a href="/Video/Index" class=boton_2>Lista Video</a>
          <br />  
     <a href="/Video/Create"  class=boton_2>Agregar Video</a>
         <br />  
     <a href="/Video/Delete" class=boton_2>Eliminar Video</a>
         <br />  
     <a href="/Video/Edit"  class=boton_2>Modificar Video</a>
         <br />  
     <a href="/Video/Search" class=boton_2>Buscar Video</a>
      
</body>
</html>
