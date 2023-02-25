<?php
$dbh=new \PDO('mysql:dbname=bookshop;host=127.0.0.1','root', '');
//$statement=$dbh->prepare("SELECT id, name, autor, image, file FROM book ORDER BY name LIMIT :skip , 4");
$statement=$dbh->query("SELECT COUNT(id) FROM book WHERE name LIKE '%33%' ORDER BY name ");


$statement->execute();
$data=$statement->fetchAll(\PDO::FETCH_ASSOC);
echo'<pre>';
print_r($data);
echo'</pre>';
