<?php
/* Smarty version 3.1.33, created on 2019-11-09 00:24:48
  from 'C:\xampp\htdocs\loja\view\pedido_confirmar.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_5dc63180cb7ca9_12868452',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'f2d143155fe9d1b11e00496eb5c9a94a14a4e03c' => 
    array (
      0 => 'C:\\xampp\\htdocs\\loja\\view\\pedido_confirmar.tpl',
      1 => 1569553129,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5dc63180cb7ca9_12868452 (Smarty_Internal_Template $_smarty_tpl) {
?><h3>Confirmar Pedido</h3>
<hr>
<!-- botoes e opções de cima -->
<section class="row">

    <div class="col-md-12 " align="right">
        <a href="<?php echo $_smarty_tpl->tpl_vars['PAG_CARRINHO']->value;?>
" class="btn btn-info" title="">Voltar para Carrinho</a>
    </div>
    <div class="col-md-4">

    </div>
    <div class="col-md-4 text-right">

    </div>

</section>
<br>

<!--  table listagem de itens -->
<section class="row ">

    <center>
        <table class="table table-bordered" style="width: 95%">

            <!--
                    <tr>


                        <td colspan="6" align="right"><a href="" class="btn btn-success" title="">Comprar Mais</a></td>
                    </tr> -->

            <tr class="text-danger bg-danger">
                <td></td>
                <td>Produto</td>
                <td>Valor R$</td>
                <td>X</td>
                <td>Sub Total R$</td>


            </tr>


            <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['PRO']->value, 'P');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['P']->value) {
?>
                <tr>

                    <td><img src="<?php echo $_smarty_tpl->tpl_vars['P']->value['pro_img'];?>
" alt="<?php echo $_smarty_tpl->tpl_vars['P']->value['pro_nome'];?>
"></td>
                    <td>  <?php echo $_smarty_tpl->tpl_vars['P']->value['pro_nome'];?>
 </td>
                    <td>  <?php echo $_smarty_tpl->tpl_vars['P']->value['pro_valor'];?>
 </td>
                    <td> <?php echo $_smarty_tpl->tpl_vars['P']->value['pro_qtd'];?>
  </td>
                    <td>  <?php echo $_smarty_tpl->tpl_vars['P']->value['pro_subTotal'];?>
 </td>


                </tr>
            <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>

        </table>

    </center>


</section><!-- fim da listagem itens -->

<!-- botoes de baixo e valor total -->
<section class="row" id="total">

    <div class="col-md-4 text-right">

    </div>

    <div class="col-md-4 text-right text-danger bg-warning">
        <h4>
            Total : R$ <?php echo $_smarty_tpl->tpl_vars['TOTAL']->value;?>

        </h4>

        <h4>
            Frete : R$ <?php echo $_smarty_tpl->tpl_vars['FRETE']->value;?>

        </h4>
        <hr>
        <h4>
            Total com Frete : R$ <?php echo $_smarty_tpl->tpl_vars['TOTAL_FRETE']->value;?>

        </h4>
    </div>

    <!-- botão de limpar-->
    <div class="col-md-4 ">


        <form name="pedido_finalizar" id="pedido_finalizar"
        " method="post" action="<?php echo $_smarty_tpl->tpl_vars['PAG_FINALIZAR']->value;?>
">
        <button class="btn btn-success btn-block" type="submit"><i class="glyphicon glyphicon-ok"></i> Finalizar Pedido
        </button>
        </form>

    </div>


    <!-- botão finalzar -->


</section>
<br>


<hr>

</form>

</div>


</section>
<br>
<br>
<br>
<br><?php }
}
