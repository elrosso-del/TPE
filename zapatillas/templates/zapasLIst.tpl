{include 'header.tpl'}
{include 'categorias.tpl'}
<div class="container-fluid">
    <h1>Zapatillas en stock</h1>
    <ul class="list" style="list-style: none;">
        {foreach from=$zapas item=$zapa}
        <li>
            <a href="zapaDetail/{$zapa->id}"><img src="{$zapa->imagen}" class="img-thumbnail" width="200" height="200">{$zapa->nombre}</a>
        </li>
        {/foreach}
    </ul>
</div>
{include 'footer.tpl'}