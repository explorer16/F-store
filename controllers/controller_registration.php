<?php

if($_GET['method']=='show'){
    \Model\Registration::show();
}
else if($_GET['method']=='checkAndWrite'){
    $user=new Model\Registration();
    $user->registrate();
}
