{include 'userHeader.tpl'}
<div class="container-fluid">
    <h1>Bienvenido!</h1>
    <h2>Ingresar Zapatilla</h2>
    <form action="createZapa" method="post">
        <h3>Marca es: 1 = Nike, 2 = Adidas, 3 = Under Armour, 4 = Fila, 5 = Puma.</h3>
        <input type="txt" placeholder="Nombre" name="nombre">
        <input type="txt" placeholder="Descripcion" name="descripcion">
        <input type="txt" placeholder="URL de la imagen" name="img">
        <input type="txt" placeholder="Deporte" name="deporte">
        <input type="numeric" placeholder="Precio" name="precio">
        <input type="txt" placeholder="Genero" name="genero">
        <input type="numeric" placeholder="Marca" name="marca">
        <button type="submit">Enviar</button>
    </form>
    <ul class="list" style="list-style: none;">
        {foreach from=$zapatillas item=$zapa}
        <li>
            <a href="zapaDetail/{$zapa->id}"><img src="{$zapa->imagen}" class="img-thumbnail" width="200" height="200">{$zapa->nombre}</a><a href="deleteZapa/{$zapa->id}">Borrar</a><a href="updateZapa/{$zapa->id}">Actualizar Zapatilla</a>
        </li>
        {/foreach}
    </ul>
</div>