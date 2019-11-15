<?php
/* Smarty version 3.1.33, created on 2019-10-09 22:56:27
  from 'C:\wamp64\www\loja\adm\view\adm_itens.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_5d9e8fcbf21780_61669980',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'b9078923c09da1e8bfdebba20d549091def2502b' => 
    array (
      0 => 'C:\\wamp64\\www\\loja\\adm\\view\\adm_itens.tpl',
      1 => 1569553128,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5d9e8fcbf21780_61669980 (Smarty_Internal_Template $_smarty_tpl) {
?><h4 class="text-center">Dados do pedido</h4>

<!-- informações sobre o pedido -->
<section class="row">

    <center>
        <table class="table table-bordered" style="width: 80%">
            <tr class="bg-success">

                <td><b>Data:</b> <?php echo $_smarty_tpl->tpl_vars['ITENS']->value[1]['ped_data'];?>
</td>

                <td><b>Hora:</b> <?php echo $_smarty_tpl->tpl_vars['ITENS']->value[1]['ped_hora'];?>
</td>

                <td><b>Ref:</b> <?php echo $_smarty_tpl->tpl_vars['ITENS']->value[1]['ped_ref'];?>
</td>

                <td><b>Status:</b> <?php echo $_smarty_tpl->tpl_vars['ITENS']->value[1]['ped_pag_status'];?>
</td>

            </tr>


        </table>
    </center>

</section>


<!-- listagem dos itens -->
<section class="row" id="listaitens">

    <center>
        <table class="table table-bordered" style="width: 80%">

            <tr class="text-success bg-success">
                <td></td>
                <td>Item</td>
                <td>Valor Uni</td>
                <td>X</td>
                <td>Sub</td>
            </tr>

            <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['ITENS']->value, 'P');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['P']->value) {
?>
                <tr>

                    <td><img src="<?php echo $_smarty_tpl->tpl_vars['P']->value['item_img'];?>
" alt=""></td>
                    <td> <?php echo $_smarty_tpl->tpl_vars['P']->value['item_nome'];?>
</td>
                    <td class="text-right"> <?php echo $_smarty_tpl->tpl_vars['P']->value['item_valor'];?>
</td>
                    <td class="text-center"> <?php echo $_smarty_tpl->tpl_vars['P']->value['item_qtd'];?>
</td>
                    <td class="text-right"> <?php echo $_smarty_tpl->tpl_vars['P']->value['item_sub'];?>
</td>

                </tr>
            <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>


        </table>
    </center>


</section>


<section class="row" id="resumo">

    <center>
        <table class="table table-bordered" style="width: 80%">
            <tr>

                <td class="text-danger"><b>Frete:</b> <?php echo $_smarty_tpl->tpl_vars['ITENS']->value[1]['ped_frete_valor'];?>
</td>

                <td class="text-danger"><b>Total:</b> <?php echo $_smarty_tpl->tpl_vars['TOTAL']->value;?>
</td>

                <td class="text-danger"><b>Final:</b> <?php echo $_smarty_tpl->tpl_vars['ITENS']->value[1]['ped_frete_valor']+$_smarty_tpl->tpl_vars['TOTAL']->value;?>
</td>

            </tr>


        </table>
    </center>

</section><?php }
}
