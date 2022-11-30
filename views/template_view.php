<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="Cache-Control" content="no-cache">
    <meta http-equiv="Cache-Control" content="private">
    <title></title>
    <link type = "text/css" rel = "stylesheet" href = "styles/main_page_style.css">
</head>
<body>
    <div>
        <div class="nav-bar">
            <img src="img/template-photos/F-logo.png" class="logo">
            <div class="nav-form">
                <form class="search-form" action="book_retelling">
                    <input type="text" name="search_object" class="search_bar" placeholder="Search...">
                    <input type="submit" value="Search" class="search-button">
                    
                </form>
                <div class="reg_log-buttons">
                    <button class="reg-button" onclick="window.location.href='registration';">Регистрация</button>
                    <button class="log-button" onclick="window.location.href='login';">Вход</button>
                </div>
            </div>
        </div>
        <header>
            <button class="header-button" onclick="window.location.href = 'books';">КНИГИ</button>
            <button class="header-button" onclick="window.location.href = 'basket';">КОРЗИНА</button>
            <button class="header-button" onclick="window.location.href = 'adress';">АДРЕСС</button>
            <button class="header-button" onclick="window.location.href = 'credits';">РАЗРАБОТЧИКИ</button>
        </header>
    </div>
    <article>
        <?php include_once "controllers/".$controller;?>
        <footer>
            <?php include_once "view_footer.html" ?>
        </footer>
    </article>
</body>
</html>