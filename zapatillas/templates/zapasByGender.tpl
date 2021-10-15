{include 'header.tpl'}
{include 'categorias.tpl'}
<div class="container-fluid">
    <h1>Zapatillas en stock</h1>
    <ul class="list" style="list-style: none;">
        {foreach from=$zapasByGender item=$zapaByGender}
        <li>
            <a href="zapaDetail/{$zapaByGender->id}"><img src="{$zapaByGender->imagen}" class="img-thumbnail" width="200" height="200">{$zapaByGender->nombre}</a>
        </li>
        {/foreach}
        </ul>
</div>

{include 'footer.tpl'}