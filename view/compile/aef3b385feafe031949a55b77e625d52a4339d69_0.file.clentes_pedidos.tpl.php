<?php
/* Smarty version 3.1.33, created on 2019-11-09 00:59:36
  from 'C:\xampp\htdocs\loja\view\clentes_pedidos.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_5dc639a8858528_18722301',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'aef3b385feafe031949a55b77e625d52a4339d69' => 
    array (
      0 => 'C:\\xampp\\htdocs\\loja\\view\\clentes_pedidos.tpl',
      1 => 1570755678,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5dc639a8858528_18722301 (Smarty_Internal_Template $_smarty_tpl) {
?><br>
<br>

<section class="row" id="pedidos">
    
    <h4 class="text-center">Meus Pedidos</h4>
    
    <center>
    <?php if ($_smarty_tpl->tpl_vars['PEDIDOS_QUANTIDADE']->value > 0) {?>
    <table class="table table-bordered" style="width: 90%">
        
        <tr class="text-danger bg-danger">
            <td>Data</td>
            <td>Hora</td>
            <td>Ref</td>
           
            <td>Status</td>
            <td></td>
        </tr>
        
        <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['PEDIDOS']->value, 'P');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['P']->value) {
?>
        <tr>
            
            <td style="width: 10%"><?php echo $_smarty_tpl->tpl_vars['P']->value['ped_data'];?>
</td>
            <td style="width: 10%"><?php echo $_smarty_tpl->tpl_vars['P']->value['ped_hora'];?>
</td>
            <td style="width: 10%"><?php echo $_smarty_tpl->tpl_vars['P']->value['ped_ref'];?>
</td>
          
            
            <?php if ($_smarty_tpl->tpl_vars['P']->value['ped_pag_status'] == 'NAO') {?> 
             <td style="width: 15%"><span class="label label-danger"><?php echo $_smarty_tpl->tpl_vars['P']->value['ped_pag_status'];?>
</span></td>
            <?php } elseif ($_smarty_tpl->tpl_vars['P']->value['ped_pag_status'] == 'Pago') {?>
              <td style="width: 15%"><span class="label label-success"><?php echo $_smarty_tpl->tpl_vars['P']->value['ped_pag_status'];?>
</span></td>
            <?php } else { ?>
              <td style="width: 15%"><?php echo $_smarty_tpl->tpl_vars['P']->value['ped_pag_status'];?>
</td>
            <?php }?>
             
        <form name="itens" method="post" action="<?php echo $_smarty_tpl->tpl_vars['PAG_ITENS']->value;?>
">
            
             <input type="hidden" name="cod_pedido" id="cod_pedido" value="<?php echo $_smarty_tpl->tpl_vars['P']->value['ped_cod'];?>
">
             <td style="width: 10%"><button class="btn btn-default"><i class="glyphicon glyphicon-menu-hamburger"></i> Detalhes</button></td>
       
        </form>    
            
        </tr>

      

      <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>


    
        
    </table>

    <?php } else { ?>
        Você não tem nenhum pedido ainda!
        <?php }?>
      </center>



    
</section>


<section id="pagincao" class="row">
    <center>
    <?php echo $_smarty_tpl->tpl_vars['PAGINAS']->value;?>

    </center>
    </section>
      <?php }
}
