{include 'header.tpl'}
    <article>
        <section>
            <h1>Registrate acá</h1>
            <form action="registerUser" method="POST">
                <input type="email" name="email" placeholder="Ingresa tu email">
                <input type="password" name="password" placeholder="Ingresa tu contraseña">
                <button type="submit">Enviar</button>
            </form>
        </section>
    </article>
{include 'footer.tpl'}