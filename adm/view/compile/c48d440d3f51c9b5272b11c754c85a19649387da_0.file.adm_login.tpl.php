<?php
/* Smarty version 3.1.33, created on 2019-11-09 01:02:47
  from 'C:\xampp\htdocs\loja\adm\view\adm_login.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_5dc63a67cec248_64339719',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'c48d440d3f51c9b5272b11c754c85a19649387da' => 
    array (
      0 => 'C:\\xampp\\htdocs\\loja\\adm\\view\\adm_login.tpl',
      1 => 1569553128,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5dc63a67cec248_64339719 (Smarty_Internal_Template $_smarty_tpl) {
?><!DOCTYPE html>

<html>
<head>
    <title>Area restrita </title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link href="<?php echo $_smarty_tpl->tpl_vars['GET_TEMA']->value;?>
/tema/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->tpl_vars['GET_TEMA']->value;?>
/tema/js/jquery-2.2.1.min.js" type="text/javascript"><?php echo '</script'; ?>
>
    <?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->tpl_vars['GET_TEMA']->value;?>
/tema/js/bootstrap.min.js" type="text/javascript"><?php echo '</script'; ?>
>
    <!-- meu aquivo pessoal de CSS-->
    <link href="<?php echo $_smarty_tpl->tpl_vars['GET_TEMA']->value;?>
/tema/css/tema.css" rel="stylesheet" type="text/css"/>


</head>
<body style="background-color: #d7dcf8">

<section class="container">


    <section class="row">

        <div class="col-md-4"></div>

        <div class="col-md-4 thumbnail" id="bloco_login_adm">

            <h4 class="text-center"> Área restrita </h4>


            <form name="login" method="post" action="">

                <label>Email:</label>
                <input type="email" name="txt_email" class="form-control" required autocomplete="off">


                <label>Senha:</label>
                <input type="password" name="txt_senha" class="form-control" required>

                <br>
                <br>
                <button class="btn btn-success btn-block btn-lg" name="txt_logar" value="txt_logar"> Entrar</button>
                <br>


            </form>

            <!-- botão senha recovery -->
            <br>
            <center>
                <button class="btn btn-warning" data-toggle="collapse" data-target="#recovery"> Esqueci a senha</button>

                <a href="<?php echo $_smarty_tpl->tpl_vars['HOME']->value;?>
" class="btn btn-info"> Ir para Loja </a>
            </center>

            <div class="alert alert-danger collapse" id="recovery">

                <form name="recovery" method="post" action="">
                    <label>Digite o email do administrador </label>
                    <input type="email" name="txt_email" class="form-control" required>
                    <button class="btn btn-success" name="recovery" value="recovery">Solicitar senha</button>

                </form>

            </div>

        </div>

        <div class="col-md-4"></div>


    </section>


</section>


</body>
</html>

<?php }
}
