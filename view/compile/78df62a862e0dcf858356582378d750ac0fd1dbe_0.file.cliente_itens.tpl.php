<?php
/* Smarty version 3.1.33, created on 2019-11-09 00:59:58
  from 'C:\xampp\htdocs\loja\view\cliente_itens.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_5dc639bec62348_40903755',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '78df62a862e0dcf858356582378d750ac0fd1dbe' => 
    array (
      0 => 'C:\\xampp\\htdocs\\loja\\view\\cliente_itens.tpl',
      1 => 1570755678,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5dc639bec62348_40903755 (Smarty_Internal_Template $_smarty_tpl) {
?><br><h4 class="text-center">Dados do pedido</h4>

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
" alt=""> </td>
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

                        <td class="text-danger"> <b>Frete:</b> <?php echo $_smarty_tpl->tpl_vars['ITENS']->value[1]['ped_frete_valor'];?>
</td>

                        <td class="text-danger"> <b>Total:</b> <?php echo $_smarty_tpl->tpl_vars['TOTAL']->value;?>
</td>

                        <td class="text-danger"> <b>Final:</b> <?php echo $_smarty_tpl->tpl_vars['ITENS']->value[1]['ped_frete_valor']+$_smarty_tpl->tpl_vars['TOTAL']->value;?>
</td>

                    </tr>  


                </table>
             
                        
        </section>  
                        
                        
              <?php if ($_smarty_tpl->tpl_vars['ITENS']->value[1]['ped_pag_status'] == 'NAO') {?>          
                         <!--  modos de pagamento e outras informações --> 
        <section class="row">
            <h3 class="text-center"> Formas de pagamento </h3>     
            
            <div class="col-md-4">
              
            </div>
            <!-- botao de pagamento  -->
            <div class="col-md-4">
               
                 <button class="btn btn-success btn-lg btn-block" onclick="PagSeguroLightbox({
    code: '<?php echo $_smarty_tpl->tpl_vars['PS_COD']->value;?>
'
    }, {
    success : function(transactionCode) {
      alert('Transação efetuada - ' + transactionCode);
        window.location ='<?php echo $_smarty_tpl->tpl_vars['PAG_RETORNO']->value;?>
/<?php echo $_smarty_tpl->tpl_vars['REF']->value;?>
';
    },
    abort : function() {
       alert('Erro no processo de pagamento');
         window.location ='<?php echo $_smarty_tpl->tpl_vars['PAG_ERRO']->value;?>
/<?php echo $_smarty_tpl->tpl_vars['REF']->value;?>
';
    }
});   

"> Pague com o Pagseguro </button>
                
                
                   <img src="<?php echo $_smarty_tpl->tpl_vars['TEMA']->value;?>
/images/logo-pagseguro.png"  alt=""> 
                   <?php echo '<script'; ?>
 type="text/javascript" src="<?php echo $_smarty_tpl->tpl_vars['PS_SCRIPT']->value;?>
"><?php echo '</script'; ?>
>
                
            </div>
            <div class="col-md-4">
                
            </div>
         
            
        </section>



 <?php }?>


<?php }
}
