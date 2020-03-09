<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Edit</title>
        <meta charset="UTF-8"></meta>
  <meta name="description" content="ASP.NET MVC 2 CRUD Video"></meta>
  <meta name="keywords" content="ASP.NET, MVC, Facpya"></meta>
  <meta name="author" content="Juan Daniel Mata Lopez"></meta>
  <meta name="viewport" content="width=device-width, initial-scale=1.0"></meta>
    <link href="../../Content/Site.css" rel="stylesheet" type="text/css" />
</head>
<body>
     <form action="/Video/Edit" method="post">
    <fieldset>
    <legend> Datos del Video</legend>

        <label for="idVideo">No. Video</label>
        <input type="text" name="IdVideo" />

         <label for="titulo">Titulo</label>
        <input type="text" name="titulo" />

         <label for="repro">Reproducciones</label>
        <input type="text" name="repro" />

         <label for="url">URL</label>
        <input type="text" name="url" />

        <input type="submit" value="Registrar" />

    </fieldset>
    </form>
</body>
</html>
