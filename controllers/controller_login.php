<?php

if($_GET['method']=='show'){
\Model\Login::show();
} elseif($_GET['method']=='check'){
    $user=new \Model\Login();
    $user->login();
}