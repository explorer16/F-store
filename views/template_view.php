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
            <img src="template-photos/F-logo.png" class="logo">
            <div class="nav-form">
                <form class="search-form">
                    <input type="text" name="search_object" class="search_bar" placeholder="Search...">
                    <input type="submit" value="Search" class="search-button">
                    <div class="reg_log-buttons">
                        <button class="reg_log-button" onclick="window.location.href='registration';">Registration</button>
                        <button class="reg_log-button" onclick="window.location.href='login';">Login</button>
                    </div>
                </form>
            </div>
        </div>
        <header>
            <button class="header-button" onclick="window.location.href = 'books';">HOME</button>
            <button class="header-button" onclick="window.location.href = 'basket';">BASKET</button>
            <button class="header-button" onclick="window.location.href = 'adress';">ADRESS</button>
            <button class="header-button" onclick="window.location.href = 'contacts ';">CONTACTS</button>
        </header>
    </div>
    <article>
        <?php
        include_once "controllers/controller_books.php";
        ?>
        <footer>
            <img src="template-photos/footer-logo.png" class="footer-logo">
        </footer>
    </article>
</body>
</html>