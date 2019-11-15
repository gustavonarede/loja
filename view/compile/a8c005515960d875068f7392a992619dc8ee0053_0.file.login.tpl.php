<?php
/* Smarty version 3.1.33, created on 2019-11-09 00:59:26
  from 'C:\xampp\htdocs\loja\view\login.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_5dc6399ec86de5_51000711',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'a8c005515960d875068f7392a992619dc8ee0053' => 
    array (
      0 => 'C:\\xampp\\htdocs\\loja\\view\\login.tpl',
      1 => 1569553129,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5dc6399ec86de5_51000711 (Smarty_Internal_Template $_smarty_tpl) {
if ($_smarty_tpl->tpl_vars['LOGADO']->value == true) {?>


<?php } else { ?>
    <section class="row" id="fazerlogin">

        <form name="cliente_login" method="post" action="">

            <div class="col-md-4 text-center">


            </div>

            <!---  aqui estão os campos -->
            <div class="col-md-4">


                <div class="form-group">
                    <label></i> Email: </label>
                    <input type="email" class="form-control " name="txt_email" value="" placeholder="Digite seu email"
                           required autocomplete="off">

                </div>


                <div class="form-group">
                    <label> Senha: </label>
                    <input type="password" class="form-control " name="txt_senha" value=""
                           placeholder="Digite sua senha" required>

                </div>


                <div class="form-group">

                    <button class="btn btn-geral btn-block btn-lg"><i class="glyphicon glyphicon-log-in"></i> Entrar
                    </button>


                </div>
                <div class="form-group">

                    <a href="<?php echo $_smarty_tpl->tpl_vars['PAG_CADASTRO']->value;?>
" class="btn btn-default "><i class="glyphicon glyphicon-pencil"></i> Me
                        Cadastrar</a>


                    <a href="<?php echo $_smarty_tpl->tpl_vars['PAG_RECOVERY']->value;?>
" class="btn btn-default "><i class="glyphicon glyphicon-question-sign"></i>
                        Esqueci a Senha</a>


                </div>


            </div><!-- fim dos campos -->


            <div class="col-md-4 text-center">


            </div>

        </form>


    </section>
<?php }?>


<?php }
}
