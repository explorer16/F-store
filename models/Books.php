<?php

namespace Model;

use UserClasess\Change;

class Books
{
    private $page,$min_id_book, $max_id_book, $countPages;
    public function __construct($page,$method){
        $this->page=$page;
        $this->min_id_book=$page*4-3;
        $this->max_id_book=$page*4;
    }
    public function show(array $data){
        $currentPage=$this->page;
        $countPages=$this->countPages;

        require('views/view_books.php');
        require('views/view_filtr.html');
    }
    public function allBooks(){
        $dbh=new \PDO('mysql:dbname=bookshop;host=127.0.0.1','root', '');

        $statement=$dbh->prepare("SELECT COUNT(:1) FROM book");
        $var='id';
        $statement->bindParam(':1', $var);
        $statement->execute();
        $result=$statement->fetch(\PDO::FETCH_BOTH);

        $this->countPages=ceil($result[0]/4);

        $statement=$dbh->prepare("SELECT id, name, autor, image, file FROM book WHERE id BETWEEN :1 AND :2 ");
        $statement->bindParam(':1',$this->min_id_book);
        $statement->bindParam(':2',$this->max_id_book);
        $statement->execute();

        for($i=1;$i<=4;$i++){
            $data[$i]=$statement->fetch(\PDO::FETCH_ASSOC);
        }

        for($i=1;$i<=4;$i++){
            $data[$i]['janr']=$this->getJanr($data[$i]['id']);
        }
        return $data;
    }
    private static function getJanr($id){
        $result=array();
        $dbh=new \PDO('mysql:dbname=bookshop;host=127.0.0.1','root', '');
        $statement=$dbh->prepare("SELECT * FROM janrs WHERE book_id = :id ");
        $statement->bindParam(':id',$id);

        $statement->execute();

        $row=$statement->fetch(\PDO::FETCH_ASSOC);
        array_shift($row);

        foreach ($row as $name=>$singleJanr){
            if($singleJanr=='1'){
                $result[]=Change::changeToRussian($name);
            }
        }

        $result=implode(', ',$result);

        return $result;
    }
    static public function getBook(int $id){
        $result=[];

        $dbh=new \PDO('mysql:dbname=bookshop;host=127.0.0.1','root', '');
        $statement=$dbh->prepare("SELECT name, autor, brief_retelling, image FROM book WHERE id= :id");
        $statement->bindParam(':id',$id);
        $statement->execute();

        $result=$statement->fetch(\PDO::FETCH_ASSOC);

        $result['janr']=self::getJanr($id);
        return $result;
    }

}