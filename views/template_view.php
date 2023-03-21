<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="Cache-Control" content="no-cache">
    <meta http-equiv="Cache-Control" content="private">
    <title></title>
    <link type = "text/css" rel = "stylesheet" href = "styles/main_page_style.css">
    <title>F-store</title>
</head>
<body>
<div class="nav-bar">
        <img src="static/img/template-photos/F-logo.png" class="logo" onclick="window.location.href = 'main_page'; ">
    <div class="nav-form">
        <form class="search-form" action="books" method="POST">
            <input type="hidden" name="method" value="searchLike">
            <input type="search" name="name" class="search_bar" placeholder="Search...">
            <input type="submit" value="Search" class="search-button">
        </form>
        <div class="reg_log-buttons">
            <button class="reg-button" onclick="window.location.href='registration?method=show';">Регистрация</button>
            <button class="log-button" onclick="window.location.href='login?method=show';">Вход</button>
        </div>
    </div>
</div>
<article>
    <?php include_once 'controllers/'.$controller;?>
    <footer>
        <?php include_once "view_footer.html" ?>
    </footer>
</article>
</body>
</html>