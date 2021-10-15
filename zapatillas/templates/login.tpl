{include 'header.tpl'}
   <article>
        <h2>Iniciar Sesion</h2>
        <section class="formulario">
            <form action="verify" method="POST">
                <input type="email" name="email" class="form-control" aria-describedby="emailHelp" placeholder="Email" id="email" required>
                <input type="password" name="password" class="form-control" aria-describedby="emailHelp" placeholder="Contraseña" id="password" required>
                <button id="enviar" class="btn btn-light" type="submit" value="Login">Iniciar Sesion</button>
            </form>
        </section>        
    </article>
    <h2>{$error}</h2>
{include 'footer.tpl'}
