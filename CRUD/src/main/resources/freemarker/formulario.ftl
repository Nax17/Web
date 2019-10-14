<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="css/micss.css">

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Registrar Persona</title>
</head>
<body>
<div class="topnavigation">
    <a class="active" href="/inicio/">Listado Personas</a>
</div>

<div class="divtabla">
    <#if persona??>
        <form action="/modificar/" method="post"  enctype="application/x-www-form-urlencoded">
            ID: <input name="id" type="text" id="id" value=${persona.id}/><br/>
            Nombre: <input name="nombre" type="text" id="nombre" value=${persona.nombre}/><br/>
            Apellido: <input name="apellido" type="text" id="apellido" value=${persona.apellido}/><br/>
            Correo: <input name="correo" type="text" id="correo" value=${persona.correo}/><br/>
            Telefono: <input name="telefono" type="text" id="telefono" value=${persona.telefono}/><br/>
            <button name="Modificar" type="submit" class="modificar">Modificar</button>
        </form>
        <#else>
            <form action="/procesarFormulario/" method="post"  enctype="application/x-www-form-urlencoded">
                ID: <input name="id" type="text" id="id"/><br/>
                Nombre: <input name="nombre" type="text" id="nombre"/><br/>
                Apellido: <input name="apellido" type="text" id="apellido"/><br/>
                Correo: <input name="correo" type="text" id="correo"/><br/>
                Telefono: <input name="telefono" type="text" id="telefono"/><br/>
                <button name="Guardar" type="submit" class="guardar">Guardar</button>
            </form>
    </#if>
</div>
</body>
</html>