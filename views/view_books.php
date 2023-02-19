<style>
  @import url('https://fonts.googleapis.com/css2?family=Montserrat:ital@1&display=swap');
  @import url('https://fonts.googleapis.com/css2?family=Open+Sans&display=swap');
  .filter{
    position: absolute;
    top:0;
    left: 0;
    margin-top: 0;
    width: 250px;
    height: 590px;
    background-color: #7796a6;
    border-radius: 10px;
    border-style: double; /* Стиль рамки вокруг параграфа */
    border-width: 6px; /* Толщина границы */
    border-color: black;
}
.form-category{
    position:relative;
    display: block;
    margin-top: 10px;
    margin-left: 10px;
    color:black;
    font-family: 'Open Sans', sans-serif;
    font-size: 26px;
}
.property-name{
    position:relative;
    display: block;
    margin-top: 10px;
    margin-left: 10px;
    color:black;
    font-family:Son;
    font-size: 20px;
}
.property{
    position:relative;
    display: block;
    margin-top: 10px;
    margin-left: 10px;
    width:100px;
    height: 30px;
    border-radius: 10px;
}
.format-radio{
    position:relative;
    display: block;
    margin-top: 10px;
    margin-left: 5px;
}
.filtr-button{
    position:relative;
    display: block;
    margin-top: 10px;
    margin-left: 10px;
    background-color: #cfd8dc;
    color: black;
    font-family: 'Open Sans', sans-serif;
}
  .books{
    position: absolute;
    top:0;
    left: 280px;
    width: 1060px;
    height: 590px;
    background-color: #e4dcb4;
    border-radius: 10px;
      border-style: double;
      border-color: black;
      border-width: 6px;
}
.book{
    position:relative;
    display: inline-block;
    border: 5px;
    width: 470px;
    height: 220px;
    margin-top: 30px;
    margin-left: 30px;
    background-color: #dbad6a;
    border-radius: 10px;
}
.conteyner_img{
    position: absolute;
    height: 100%;
    width: 33%;
    border-width: 50px;
    border-bottom-left-radius: 10px;
    border-top-left-radius: 10px;
}
.book-img{
    position: absolute;
    top:3%;
    left:5%;
    width: auto;
    height: 90%;
    
}
.book-name{
    position:absolute;
    left: 33%;
    color: black;
    font-family: 'Montserrat';
    font-size: 20px;

}
.autor{
  position: absolute;
  top: 45px;
  left: 33%;
  color: black;
  font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
  font-size: 17px;
}
.janr{
  position: absolute;
  top: 70px;
  left: 33%;
  color: black;
  font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
  font-size: 15px;
}
.download-button{
  position:absolute;
  bottom:0;
  right:0;
  color: rgb(0, 0, 0);
  background-color: #cfd8dc;
  border-bottom-right-radius: 10px;
}
.book_retell_button{
  position:absolute;
  color: rgb(0, 0, 1);
  background-color: #cfd8dc;
  bottom: 0;
  right: 42px;
  width: 58%;
  height: 36px;
  font-size: larger;
  font-family:New Century Schoolbook, TeX Gyre Schola, serif;
}
.download-image{
  width: 30px;
  height: 30px;
  border: 0ch;
}
</style>
<div class="filter">
    <form method="POST">
        <p class="form-category">Сортировка</p>
        <p class="property-name">по имени</p><input type="text" name="name" class="property">
        <p class="property-name">по автору</p><input type="text" name="autor" class="property">
        <p class="property-name">по жанру</p><input type="number" name="janr" class="property">

          <div>
            <button type="submit" class="filtr-button">Поиск</button>
          </div>
    </form>
</div>
<div class="books">
  <?php foreach($data as $product){?>
  <div class="book">
    <div class="conteyner_img">
      <img src="<?=$product['image']?>" class="book-img">
    </div>
    <p class="book-name"><?=$product['name']?></p>
    <p class="autor"><?=$product['autor']?></p>
    <p class="janr"><?=$product['janr']?></p>
    <button class="download-button"><a href='files/<?=$product['file']?>' download><img src="img/template-photos/download-button.png" class="download-image"></a></button>
      <button class="book_retell_button" onclick="window.location.href = 'book_retelling?id=<?=$product['id']?>';">Описание</button>
  </div>
  <?php }?>
</div>