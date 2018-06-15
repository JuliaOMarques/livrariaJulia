<%@page import="java.util.List"%>
<%@page import="modelo.Livro"%>
<%@page import="dao.LivroDAO"%>
<%@include file="cabecalho.jsp" %>
<%
    LivroDAO dao = new LivroDAO();
    List<Livro> lista = dao.listar();
    dao.fecharConexao();
%>
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
</head>
<!-- Home -->

<div class="home">

    <!-- Home Slider -->

    <div class="home_slider_container">
        <div class="owl-carousel owl-theme home_slider">

            <!-- Home Slider Item -->
            <div class="owl-item">
                <div class="home_slider_background" style="background-image:url(images/home_slider_1.jpg)"></div>
                <div class="home_slider_content">
                    <div class="home_slider_content_inner">
                        <div class="home_slider_subtitle">Preços Promocionais</div>
                        <div class="home_slider_title">Lançamentos</div>
                    </div>	
                </div>
            </div>

            <!-- Home Slider Item -->
            <div class="owl-item">
                <div class="home_slider_background" style="background-image:url(images/home_slider_1.jpg)"></div>
                <div class="home_slider_content">
                    <div class="home_slider_content_inner">
                        <div class="home_slider_subtitle">Preços Promocionais</div>
                        <div class="home_slider_title">Promoções</div>
                    </div>	
                </div>
            </div>

            <!-- Home Slider Item -->
            <div class="owl-item">
                <div class="home_slider_background" style="background-image:url(images/home_slider_1.jpg)"></div>
                <div class="home_slider_content">
                    <div class="home_slider_content_inner">
                        <div class="home_slider_subtitle">Preços Promocionais</div>
                        <div class="home_slider_title">Digitais</div>
                    </div>	
                </div>
            </div>

        </div>

        <!-- Home Slider Nav -->

        <div class="home_slider_next d-flex flex-column align-items-center justify-content-center"><img src="images/arrow_r.png" alt=""></div>

        <!-- Home Slider Dots -->

        <div class="home_slider_dots_container">
            <div class="container">
                <div class="row">
                    <div class="col">
                        <div class="home_slider_dots">
                            <ul id="home_slider_custom_dots" class="home_slider_custom_dots">
                                <li class="home_slider_custom_dot active">01.<div></div></li>
                                <li class="home_slider_custom_dot">02.<div></div></li>
                                <li class="home_slider_custom_dot">03.<div></div></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>		
        </div>
    </div>
</div>

<!-- New Arrivals -->

<div class="arrivals">
    <div class="container">
        <div class="row">
            <div class="col">
                <div class="section_title_container text-center">
                    <div class="section_subtitle">apenas o melhor</div>
                    <div class="section_title">Produtos novos</div>
                </div>
            </div>
        </div>
        <div class="row products_container">
            <%for (Livro livro : lista) {
            %>
            <!-- Product -->
            <div class="col-lg-4 product_col">
                <div class="product">
                    <div class="product_image">
                        <img src="images/product_1.jpg" alt="">
                    </div>
                    <div class="rating rating_4">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                    </div>
                    <div class="product_content clearfix">
                        <div class="product_info">
                            <div class="product_name"><a href="product.html">Harry Potter e a Camâra Secreta</a></div>
                            <div class="product_price">R$25.00</div>
                        </div>
                        <div class="product_options">
                            <div class="product_buy product_option"><img src="images/shopping-bag-white.svg" alt=""></div>
                            <div class="product_fav product_option">+</div>
                        </div>
                    </div>
                </div>
            </div>
            <% }%>
        </div>
    </div>
</div>

<!-- Extra -->

<div class="extra clearfix">
    <div class="extra_promo extra_promo_1">
        <div class="extra_promo_image" style="background-image:url(images/extra_1.jpg)"></div>
        <div class="extra_1_content d-flex flex-column align-items-center justify-content-center text-center">
            <div class="extra_1_price">30%<span>off</span></div>
            <div class="extra_1_title">Livros de Romance</div>
            <div class="button extra_1_button"><a href="checkout.html">confira</a></div>
        </div>
    </div>
    <div class="extra_promo extra_promo_2">
        <div class="extra_promo_image" style="background-image:url(images/extra_2.jpg)"></div>
        <div class="extra_2_content d-flex flex-column align-items-center justify-content-center text-center">
            <div class="extra_2_title">
                <div class="extra_2_center">&</div>
                <div class="extra_2_top">Mix</div>
                <div class="extra_2_bottom">Match</div>
            </div>
            <div class="extra_2_text"> </div>
            <div class="button extra_2_button"><a href="checkout.html">confira</a></div>
        </div>
    </div>
</div>

<!-- Gallery -->

<div class="gallery">
    <div class="gallery_image" style="background-image:url(images/gallery.jpg)"></div>
    <div class="container">
        <div class="row">
            <div class="col">
                <div class="gallery_title text-center">
                    <ul>
                        <li><a href="#">#Wonderland</a></li>
                        <li><a href="#">#WonderlandInstagram</a></li>
                        <li><a href="#">#WonderladBookStore</a></li>
                    </ul>
                </div>
                <div class="button gallery_button"><a href="#">increva-se</a></div>
            </div>
        </div>
    </div>	
    <div class="gallery_slider_container">

        <!-- Gallery Slider -->
        <div class="owl-carousel owl-theme gallery_slider">

            <!-- Gallery Item -->
            <div class="owl-item gallery_item">
                <a class="colorbox" href="images/gallery_1.jpg">
                    <img src="images/gallery_1.jpg" alt="">
                </a>
            </div>

            <!-- Gallery Item -->
            <div class="owl-item gallery_item">
                <a class="colorbox" href="images/gallery_2.jpg">
                    <img src="images/gallery_2.jpg" alt="">
                </a>
            </div>

            <!-- Gallery Item -->
            <div class="owl-item gallery_item">
                <a class="colorbox" href="images/gallery_3.jpg">
                    <img src="images/gallery_3.jpg" alt="">
                </a>
            </div>

            <!-- Gallery Item -->
            <div class="owl-item gallery_item">
                <a class="colorbox" href="images/gallery_4.jpg">
                    <img src="images/gallery_4.jpg" alt="">
                </a>
            </div>

            <!-- Gallery Item -->
            <div class="owl-item gallery_item">
                <a class="colorbox" href="images/gallery_5.jpg">
                    <img src="images/gallery_5.jpg" alt="">
                </a>
            </div>

            <!-- Gallery Item -->
            <div class="owl-item gallery_item">
                <a class="colorbox" href="images/gallery_6.jpg">
                    <img src="images/gallery_6.jpg" alt="">
                </a>
            </div>

        </div>
    </div>	
</div>

<!-- Testimonials -->

<div class="testimonials">
    <div class="container">
        <div class="row">
            <div class="col">
                <div class="section_title_container text-center">
                    <div class="section_subtitle">apenas o melhor</div>
                    <div class="section_title">depoimentos</div>
                </div>
            </div>
        </div>
        <div class="row test_slider_container">
            <div class="col">

                <!-- Testimonials Slider -->
                <div class="owl-carousel owl-theme test_slider text-center">

                    <!-- Testimonial Item -->
                    <div class="owl-item">
                        <div class="test_content">
                            <div class="test_image"><img src="images/testimonials.jpg" alt=""></div>
                            <div class="test_name">Chris Smith</div>
                            <div class="test_title">cliente</div>
                        </div>
                    </div>

                    <!-- Testimonial Item -->
                    <div class="owl-item">
                        <div class="test_content">
                            <div class="test_image"><img src="images/testimonials.jpg" alt=""></div>
                            <div class="test_name">Sophia</div>
                            <div class="test_title">cliente</div>
                        </div>
                    </div>

                    <!-- Testimonial Item -->
                    <div class="owl-item">
                        <div class="test_content">
                            <div class="test_image"><img src="images/testimonials.jpg" alt=""></div>
                            <div class="test_name">Helmet</div>
                            <div class="test_title">cliente</div>
                        </div>
                    </div>

                </div>

            </div>
        </div>
    </div>
</div>
<script src="js/jquery-3.2.1.min.js"></script>
<script src="styles/bootstrap4/popper.js"></script>
<script src="styles/bootstrap4/bootstrap.min.js"></script>
<script src="plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
<script src="plugins/easing/easing.js"></script>
<script src="plugins/parallax-js-master/parallax.min.js"></script>
<script src="plugins/colorbox/jquery.colorbox-min.js"></script>
<script src="js/custom.js"></script>
<%@include file="rodape.jsp" %>