<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Personas</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link href="css/micss.css" rel="stylesheet">
</head>
<body>
<div class="topnav">
    <a href="/formulario/">Agregar Persona</a>
</div>
<br>
<div>
    <form action="/formulario/" method="get" enctype="application/x-www-form-urlencoded">
       Busqueda por ID: <input name="idBusquda" type="text">
        <button name="Buscar" type="submit" class="buscar">Buscar</button>
    </form>
</div>
<br>
<div class="list">
    <table border="1" id="t01">
        <caption>Listado de personas</caption>
        <tr>
            <th>ID</th>
            <th>Nombre</th>
            <th>Apellido</th>
            <th>Correo</th>
            <th>Telefono</th>
        </tr>
        <#if persona?size != 0>
            <#list persona as per>
                <tr>
                    <td>${per.id}</td>
                    <td>${per.nombre}</td>
                    <td>${per.apellido}</td>
                    <td>${per.correo}</td>
                    <td>${per.telefono}</td>
                    <td><a href="/eliminar/${per.id}">Eliminar</a></td>
                </tr>
                <#assign id = id + 1>
            </#list>
        </#if>
    </table>
</div>
</body>
</html>