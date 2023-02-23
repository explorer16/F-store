<style>
  @import url('https://fonts.googleapis.com/css2?family=Montserrat:ital@1&display=swap');
  @import url('https://fonts.googleapis.com/css2?family=Open+Sans&display=swap');
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
  border: 0;
}
.page-button-form{
    position:absolute;
    background-color: transparent;
    width: 60%;
    height: 8%;
    left: 20%;
    bottom: 0;
    border-radius: 10px;
}
.prev{
    position: relative;
    height: 100%;
    width: 20%;
    border-top-left-radius: 10px;
    border-bottom-left-radius: 10px;
    margin-left: -4px;
    background-color: #cfd8dc;
}
.last{
    position: relative;
    height: 100%;
    width: 20%;
    border-top-right-radius: 10px;
    border-bottom-right-radius: 10px;
    margin-left: -4px;
    background-color: #cfd8dc;
}
.page-button{
    position: relative;
    height: 100%;
    align-self: center;
    background-color: #a0c1c9;
    border-radius: 10px;
    margin-left: -4px;
}
</style>
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
  <form class="page-button-form">
    <?php
    if($countPages<=5&&$countPages!=1):
        for($i=1;$i<=$countPages;$i++):?>
          <input type="submit" class="page-button" name="page" value="<?=$i?>" style="width:<?=100/$countPages?>%" >
        <?php endfor;
        elseif ($countPages>5):?>
            <input type="submit" class="prev" name="page" value="Начало">
            <?php $middleId=\UserClasess\calculateMiddleButton::calculate($currentPage,$countPages);
            for($i=$middleId-2;$i<=$middleId+2;$i++):?>
                <input type="submit" class="page-button" name="page" value="<?=$i?>" style="width:12%" >
            <?php endfor;?>
            <input type="submit" class="last" name="page" value="Конец">
      <?php endif; ?>
  </form>
</div>