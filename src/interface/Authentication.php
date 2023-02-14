<?php

namespace Interfaces;

abstract class Authentication
{
    protected string $name, $password;
    public function __construct()
    {
        $this->name=$_POST['name'];
        $this->name=htmlentities($this->name);

        $this->password=$_POST['password'];
        $this->password=htmlentities($this->password);

    }

    /** Description
     * The method checks
     * if the user exists in the database
     */
    protected function checking():bool
    {
        $dbh=new \PDO('mysql:dbname=bookshop;host=127.0.0.1','root', '');
        $statement=$dbh->prepare("SELECT name, password FROM user WHERE name= :name ");
        $statement->bindParam('name',$this->name);
        $statement->execute();
        $result=$statement->fetch(\PDO::FETCH_ASSOC);

        if(!$result)
            return false;
        if(password_verify($this->password,$result['password'])){
            return true;
        } else {
            return false;
        }
    }
    abstract public function createCookie();
}