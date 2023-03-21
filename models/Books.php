<?php

namespace Model;
use PDO;
use UserClasess\Change;

class Books
{
    public string $page;
    public int $countPages;
    private string $method,$specProperty;
    public function __construct($page,$method){
        if($page!='First')$this->page=$page;
        else $this->page=1;
        $this->method=$method;
    }
    public function getQuery():array
    {
        switch ($this->method){
            case 'searchLike' :{
                $where="WHERE name LIKE :1";
                $this->specProperty=$_POST['name'].'%';
                break;
            }
            case 'takeByGenre' :{
                $where='WHERE janrs.:1=1';
                $this->specProperty=$_POST['genre'];
                break;
            }
            case 'takeAll': $where='';break;
        }
        return [
            'SELECT COUNT(id) FROM book '.$where,
            'SELECT id, name, autor, image, file FROM book '.$where.' ORDER BY name LIMIT :skip,4',
        ];
    }
    public function getBooks(){
        $queries=$this->getQuery();

        $dbh=new PDO('mysql:dbname=bookshop;host=127.0.0.1','root', '');
        $statement=$dbh->prepare($queries[0]);
        if(isset($this->specProperty)){
            $statement->bindParam(':1', $this->specProperty, PDO::PARAM_STR);
        }
        $statement->execute();
        $result=$statement->fetch();

        $this->countPages=ceil($result[0]/4);
        if($this->page=='Last'){
            $this->page=$this->countPages;
        }

        $statement=$dbh->prepare($queries[1]);
        $var=$this->page*4-4;
        $statement->bindParam(':skip', $var, PDO::PARAM_INT);
        if(isset($this->specProperty)){
            $statement->bindParam(':1', $this->specProperty);
        }
        $statement->execute();
        $data=$statement->fetchAll(PDO::FETCH_ASSOC);

        for($i=0;$i<count($data);$i++){
            $data[$i]['janr']=$this->getGenre($data[$i]['id']);
        }

        return $data;
    }
    private static function getGenre($id): string
    {
        $dbh=new PDO('mysql:dbname=bookshop;host=127.0.0.1','root', '');
        $statement=$dbh->prepare("SELECT GROUP_CONCAT(genre.name SEPARATOR ', ') as genre 
                                        FROM genre JOIN bookgenres ON genre.id=bookgenres.genre_id 
                                        WHERE bookgenres.book_id=:id;
                                ");
        $statement->bindParam(':id',$id);
        $statement->execute();
        $row=$statement->fetch(PDO::FETCH_ASSOC);

        return $row['genre'];
    }
    static public function getInfoOfBook(int $id){
        $dbh=new PDO('mysql:dbname=bookshop;host=127.0.0.1','root', '');
        $statement=$dbh->prepare("SELECT name, autor, brief_retelling, image FROM book WHERE id= :id");
        $statement->bindParam(':id',$id);
        $statement->execute();

        $result=$statement->fetch(PDO::FETCH_ASSOC);

        $result['janr']=self::getGenre($id);
        return $result;
    }

}