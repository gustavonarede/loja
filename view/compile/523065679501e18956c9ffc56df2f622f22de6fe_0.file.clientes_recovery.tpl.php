<?php
/* Smarty version 3.1.33, created on 2019-11-22 16:56:38
  from 'C:\xampp\htdocs\loja\view\clientes_recovery.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_5dd83d765960f2_62839543',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '523065679501e18956c9ffc56df2f622f22de6fe' => 
    array (
      0 => 'C:\\xampp\\htdocs\\loja\\view\\clientes_recovery.tpl',
      1 => 1570755678,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5dd83d765960f2_62839543 (Smarty_Internal_Template $_smarty_tpl) {
?><h4 class="text-center">Digite seu email cadatrado para receber uma nova senha </h4>
<hr>

<form name="recuperarsenha" method="post" action="">
    
    <section>
        <div class="col-md-4"></div>
        
        <div class="col-md-4">
            <label>Digite seu email cadastrado</label>
          
            <input type="email" name="cli_email" id="cli_email" class="form-control" required>
            <br>
            <button type="submit" class="btn btn-warning btn-block"> Recuperar </button>
        </div>
       
        <div class="col-md-4">
       
            
            
        </div>
        
        
        
    </section>

  
    
</form><?php }
}
