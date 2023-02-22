<?php

namespace UserClasess;

class Change
{
    /**
     * @var array|string[]
     */
    private static array $dictionary= [
        'detektiv'=>'детектив',
        'novel'=>'роман',
        'thriller'=>'триллер',
        'science_fiction'=>'научная фантастика',
        'fantasy'=>'фентези',
        'horror'=>'ужасы',
        'art'=>'искусство',
        'biography'=>'биография',
        'history'=>'история',
        'philosophy'=>'философия',
        'psychology'=>'психология',
        'policy'=>'политика',
        'religion'=>'религия',
        'humor'=>'юмор',
        'fairy_tales'=>'сказки',
        'adventures'=>'приключения',
        'post-apocalypse'=>'постапокалипсис',
        'drama'=>'драма',
        'comedy'=>'комедия',
        'antiutopia'=>'антиутопия'
    ];
    public static function changeToRussian(string $word){
        return self::$dictionary[$word];
    }
}