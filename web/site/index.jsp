<%@page import="modelo.Categoria"%>
<%@page import="java.util.List"%>
<%@page import="modelo.Livro"%>
<%@page import="dao.LivroDAO"%>
<%@include file="cabecalho.jsp" %>
<%
    LivroDAO dao = new LivroDAO();
    List<Livro> lista;
    //se é para filtrar por categoria
    if(request.getParameter("categoriaid")!=null){
        
        Integer id = 
                Integer.parseInt(request.getParameter("categoriaid"));
        Categoria c = cdao.buscarPorChavePrimaria(id);
        lista = c.getLivroList();
    }
    else{
        lista = dao.listar();
    }
   
    dao.fecharConexao();
%>
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
            <%for (Livro livro : lista){
            %>
            <!-- Product -->
            <div class="col-lg-4 product_col">
                <div class="product">
                    <div class="product_image">
                        <img src="images/product_1.jpg"<%=livro.getFoto1()%> alt="">
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
                            <div class="product_name"><a href="produtos.jsp"><%=livro.getNome()%></a></div>
                            <div class="product_price"><%=livro.getPreco()%></div>
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
<%@include file="rodape.jsp" %>