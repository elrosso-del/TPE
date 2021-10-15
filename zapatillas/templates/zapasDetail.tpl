{include 'header.tpl'}
{include 'categorias.tpl'}
<div>
    <h1>{$zapa->nombre}</h1>
    <img src="{$zapa->imagen}" class="img-thumbnail" width="200" height="200">
    <h4>Precio: {$zapa->precio}</h4>
    <p>Descripción: {$zapa->descripcion}</p>
    <p>Deporte: {$zapa->deporte}</p>
    <p>Genero: {$zapa->genero}</p>
    <p>Marca: {$marca->nombre}</p>
    <p>Nacionalidad: {$marca->nacionalidad}</p>
</div>

{include 'footer.tpl'}