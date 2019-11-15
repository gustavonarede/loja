<?php

$to = $_POST['txtinputemail'];
$subject = 'Contato - Rarrissicima SemiJoias';
$message = $_POST['txtinputarea'];
$headers = 'From:' . Config::EMAIL_HOST . ' ' . "\r\r" .

    'Reply-To: webmaster@example.com' . "\r\r" .
    'X-Mailer: PHP/' . phpversion();

mail($to, $subject, $message, $headers);

?>