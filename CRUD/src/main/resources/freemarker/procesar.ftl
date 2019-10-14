<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" type = "text/css" href="css/micss.css">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Formulario Procesado</title>
</head>
<body>
<div class="topnavigation">
    <a class="active" href="/inicio/">Listado Personas</a>
    <a href="/formulario/">Agregar Persona</a>
</div>
<h1>Formulario Procesado</h1>
<table>
    <tbody>
    <tr><td>ID: </td><td>${persona.id}</td></tr>
    <tr><td>Nombre:</td><td>${persona.nombre}</td></tr>
    <tr><td>Apellido:</td><td>${persona.apellido}</td></tr>
    <tr><td>Correo</td><td>${persona.correo}</td></tr>
    <tr><td>Telefono:</td><td>${persona.telefono}</td></tr>
    </tbody>
</table>
</body>
</html>