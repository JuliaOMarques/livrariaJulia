<%@page import="modelo.Autor"%>
<%@page import="dao.AutorDAO"%>
<%@page import="modelo.Categoria"%>
<%@page import="java.util.List"%>
<%@page import="dao.CategoriaDAO"%>
<!DOCTYPE html>
<%
    CategoriaDAO cdao = new CategoriaDAO();
    List<Categoria> clista = cdao.listar();

    AutorDAO adao = new AutorDAO();
    List<Autor> alista = adao.listar();
%>
<html lang="en">
    <head>
        <title>Wonderland</title>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="description" content="Wish shop project">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" type="text/css" href="styles/bootstrap4/bootstrap.min.css">
        <link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.carousel.css">
        <link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
        <link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/animate.css">
        <link href="plugins/colorbox/colorbox.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" type="text/css" href="styles/main_styles.css">
        <link rel="stylesheet" type="text/css" href="styles/responsive.css">
        <link rel="stylesheet" type="text/css" href="styles/product.css">
        <link rel="stylesheet" type="text/css" href="styles/product_responsive.css">
    </head>
    <body>

        <div class="super_container">

            <!-- Header -->

            <header class="header">
                <div class="header_inner d-flex flex-row align-items-center justify-content-start">
                    <div class="logo"><a href="#">Wonderland</a></div>
                    <nav class="main_nav">
                        <ul>
                            <li><a href="index.jsp">home</a></li>
                            <li><a href="categories.html">livros</a></li>
                            <li><a href="categories.html">digitais</a></li>
                            <li><a href="categories.html">lanšamentos</a></li>
                            <li><a href="contact.html">contato</a></li>
                        </ul>
                    </nav>
                    <div class="header_content ml-auto">
                        <div class="search header_search">
                            <form action="#">
                                <input type="search" class="search_input" required="required">
                                <button type="submit" id="search_button" class="search_button"><img src="images/magnifying-glass.svg" alt=""></button>
                            </form>
                        </div>
                        <div class="shopping">
                            <!-- Cart -->
                            <a href="#">
                                <div class="cart">
                                    <img src="images/shopping-bag.svg" alt="">
                                    <div class="cart_num_container">
                                        <div class="cart_num_inner">
                                            <div class="cart_num">1</div>
                                        </div>
                                    </div>
                                </div>
                            </a>
                            <!-- Star -->
                            <a href="#">
                                <div class="star">
                                    <img src="images/star.svg" alt="">
                                    <div class="star_num_container">
                                        <div class="star_num_inner">
                                            <div class="star_num">0</div>
                                        </div>
                                    </div>
                                </div>
                            </a>
                            <!-- Avatar -->
                            <a href="#">
                                <div class="avatar">
                                    <img src="images/avatar.svg" alt="">
                                </div>
                            </a>
                        </div>
                    </div>

                    <div class="burger_container d-flex flex-column align-items-center justify-content-around menu_mm"><div></div><div></div><div></div></div>
                </div>
            </header>

            <!-- Menu -->

            <div class="menu d-flex flex-column align-items-end justify-content-start text-right menu_mm trans_400">
                <div class="menu_close_container"><div class="menu_close"><div></div><div></div></div></div>
                <div class="logo menu_mm"><a href="#">Wonderland</a></div>
                <div class="search">
                    <form action="#">
                        <input type="search" class="search_input menu_mm" required="required">
                        <button type="submit" id="search_button_menu" class="search_button menu_mm"><img class="menu_mm" src="images/magnifying-glass.svg" alt=""></button>
                    </form>
                </div>
                <nav class="menu_nav">
                    <ul class="menu_mm">
                        <li class="menu_mm"><a href="#">home</a></li>
                        <li class="menu_mm"><a href="#">livros</a></li>
                        <li class="menu_mm"><a href="#">digitais</a></li>
                        <li class="menu_mm"><a href="#">lanšamentos</a></li>
                        <li class="menu_mm"><a href="#">contato</a></li>
                    </ul>
                </nav>
            </div>