<?php

namespace UserClasess;

class calculateMiddleButton
{
    public static function calculate($currentPage,$countPage){
        if($currentPage==$countPage){
            return $currentPage-2;
        } elseif ($currentPage==$countPage-1){
            return $currentPage-1;
        } elseif ($currentPage==1||$currentPage==2){
            return 3;
        } else {
            return $currentPage;
        }
    }
}