<style>
     @import url('https://fonts.googleapis.com/css2?family=Montserrat:ital@1&display=swap');
     @import url('https://fonts.googleapis.com/css2?family=Noto+Sans:wght@300&display=swap');
.retell-area{
    position: absolute;
    width: 96%;
    height: 75%;
    top: 2%;
    left: 2%;
    background-color: #a0c1c9;
    border-radius: 10px;
}
.image-area{
    position: absolute;
    top: 2%;
    left: 2%;
    width: 20%;
    height:70%;
}
img{
    position: absolute;
    height: 100%;
    width: auto;
    border-radius: 10px;
}
.name-pos{
    position: absolute;
    top: 1%;
    left: 30%;
    width: auto;
    height: 50px;
}
.book-name{
    font-family: Montserrat;
    font-size: 40px;
    text-align: bottom;
}
.property{
    position: absolute;
    top: 73%;
    left: 2%;
}
.property-text{
    position: relative;
    font-family: Noto Sans;
    font-size: 20px;
}
.retelling-pos{
    position: absolute;
    top: 20%;
    left: 30%;
    width: 60%;
    height: auto;
    background-color: #a0c1c9;
    border-radius: 10px;
}
.retelling-text{
    font-family: Noto Sans;
    font-size: 18px;
}
.return-button{
    position: absolute;
    bottom: 2%;
    left: 2%;
    height: 5%;
    width: 20%;
    background-color: rgb(129, 123, 123);
    border-color: transparent;
    border-radius: 5px;
}
</style>
<div class="retell-area">
    <div class="image-area">
        <img src="static/img/books/<?=$book['image']?>">
    </div>
    <div class="name-pos">
        <p class="book-name"><?=$book['name']?></p>
    </div>
    <div class="property">
        <p class="property-text"><?=$book['autor']?></p>
        <p class="property-text"><?=$book['janr']?></p>
    </div>
    <div class="retelling-pos">
        <p class="retelling-text"><?=$book['brief_retelling']?></p>
    </div>
    <button class="return-button" onclick="window.location.href='books';">Вернуться к списку книг</button>
</div>