<?php include("includes/header.php"); ?>

<!-- Normal Breadcrumb Begin -->
<section class="normal-breadcrumb set-bg" data-setbg="../img/normal-breadcrumb.jpg">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <div class="normal__breadcrumb__text">
                    <h2>Regístrate</h2>
                    <p>Bienvenido a AnimeBook, donde podrás encontrar
                        el manga o ánime que estás buscando
                    </p>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Normal Breadcrumb End -->

<!-- Signup Section Begin -->
<section class="signup spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-6">
                <div class="login__form">
                    <h3>Regístrate</h3>
                    <form>
                        <div class="input__item">
                            <input type="text" id="user_email" placeholder="Email address">
                            <span class="icon_mail"></span>
                        </div>
                        <div class="input__item">
                            <input id="credentials" type="text" placeholder="cédula o indentificación">
                            <span class="icon_lock"></span>
                        </div>
                        <div class="input__item">
                            <input id="names" type="text" placeholder="Tus nombres">
                            <span class="icon_profile"></span>
                        </div>
                        <div class="input__item">
                            <input id="lname" type="text" placeholder="Tus apellidos">
                            <span class="icon_profile"></span>
                        </div>
                        <div class="input__item">
                            <input id="password1" type="password" placeholder="Contraseña">
                            <span class="icon_lock"></span>
                        </div>
                        <!-- <div class="input__item">
                            <input type="text" placeholder="Password">
                            <span class="icon_lock"></span>
                        </div> -->
                        <div class="input__item">
                            <input id="password2" type="password" placeholder="Repite contraseña">
                            <span class="icon_lock"></span>
                        </div>
                        <button id="buttonSubmit" class="site-btn">Registrate</button>
                    </form>
                    <h5>¿Ya tienes una cuenta? <a href="login.php">!Inicia sesión!</a></h5>
                </div>
            </div>
            <!-- <div class="col-lg-6">
                <div class="login__social__links">
                    <h3>Login With:</h3>
                    <ul>
                        <li><a href="#" class="facebook"><i class="fa fa-facebook"></i> Sign in With Facebook</a>
                        </li>
                        <li><a href="#" class="google"><i class="fa fa-google"></i> Sign in With Google</a></li>
                        <li><a href="#" class="twitter"><i class="fa fa-twitter"></i> Sign in With Twitter</a></li>
                    </ul>
                </div>
            </div> -->
        </div>
    </div>
</section>

<!-- Signup Section End -->

<?php include("includes/footer.php"); ?>