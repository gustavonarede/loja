<?php
/* Smarty version 3.1.33, created on 2019-10-09 21:47:06
  from 'C:\wamp64\www\loja\adm\view\adm_categorias.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_5d9e7f8a88bc89_81558523',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'a32ad949a25b90de4ec4fbd47dd7172db6ef6665' => 
    array (
      0 => 'C:\\wamp64\\www\\loja\\adm\\view\\adm_categorias.tpl',
      1 => 1569553128,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5d9e7f8a88bc89_81558523 (Smarty_Internal_Template $_smarty_tpl) {
?><h4 class="text-center"> Gerenciar categorias </h4>
<hr>

<section class="row">

    <form name="categoriainsere" method="post" action="">

        <div class="col-md-4">
            <input type="text" name="cate_nome" class="form-control" required>
        </div>
        <div class="col-md-4">
            <button class="btn btn-success" name="cate_nova" value="cate_nova"> Inserir nova</button>

        </div>
        <div class="col-md-4"></div>


    </form>

</section>
<hr>

<!-- section listar categorias -->
<section class="row" id="listarcategorias">

    <center>
        <table class="table table-bordered" style="width: 90%">


            <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['CATEGORIAS']->value, 'C');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['C']->value) {
?>
                <form name="categorias_editar" method="post" action="">

                    <tr>

                        <td style="width: 70%">
                            <input type="text" name="cate_nome" value="<?php echo $_smarty_tpl->tpl_vars['C']->value['cate_nome'];?>
" class="form-control" required>
                            <input type="hidden" name="cate_id" value="<?php echo $_smarty_tpl->tpl_vars['C']->value['cate_id'];?>
">
                        </td>

                        <td>
                            <button class="btn btn-success" name="cate_editar" value="cate_editar">Editar</button>
                        </td>

                        <td>
                            <button class="btn btn-danger" name="cate_apagar" value="cate_apagar">Apagar</button>
                        </td>


                    </tr>

                </form>
            <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>

        </table>
    </center>


</section><?php }
}
