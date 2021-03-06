
<%@page import="java.util.ArrayList"%>
<%@page import="modelo.Compralivro"%>
<%@page import="java.util.List"%>
<%@page import="modelo.Livro"%>
<%@page import="dao.LivroDAO"%>
<%@include file="cabecalho.jsp" %>
<%    if (request.getParameter("id") == null) {
        response.sendRedirect("index.jsp");
        return;
    }

    Integer id = Integer.parseInt(request.getParameter("id"));
    LivroDAO dao = new LivroDAO();
    Livro obj = dao.buscarPorChavePrimaria(id);
%>
<!-- Home -->
<div class="home">
    <div class="home_background parallax-window" data-parallax="scroll" data-image-src="images/product.jpg" data-speed="0.8"></div>
    <div class="container">
        <div class="row">
            <div class="col">
                <div class="home_container">
                    <div class="home_content">
                        <div class="home_title">Fisicos</div>
                        <div class="breadcrumbs">
                            <ul>
                                <li><a href="index.html">Home</a></li>
                                <li>Livros</li>
                                <li>Romance</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Product -->

<div class="product">
    <div class="container">
        <div class="row">
            <div class="col">
                <div class="current_page">
                    <ul>
                        <li><a href="categories.html">Fisicos</a></li>
                        <li><a href="categories.html">Romance</a></li>
                        <li><%=obj.getNome()%></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="row product_row">

            <!-- Product Image -->
            <div class="col-lg-7">
                <div class="product_image">
                    <div class="product_image_large"><img src="images/product_image_1.jpg" alt=""></div>
                    <div class="product_image_thumbnails d-flex flex-row align-items-start justify-content-start">
                        <div class="product_image_thumbnail" style="background-image:url(images/product_image_1.jpg)" data-image="images/product_image_1.jpg"></div>
                        <div class="product_image_thumbnail" style="background-image:url(images/product_image_2.jpg)" data-image="images/product_image_2.jpg"></div>
                        <div class="product_image_thumbnail" style="background-image:url(images/product_image_4.jpg)" data-image="images/product_image_4.jpg"></div>
                    </div>
                </div>
            </div>

            <!-- Product Content -->
            <div class="col-lg-5">
                <div class="product_content">
                    <div class="product_name"><%=obj.getNome()%></div>
                    <div class="product_price">R$<%=obj.getPreco()%></div>
                    <div class="rating rating_4" data-rating="4">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                    </div>
                    <!-- In Stock -->
                    <div class="in_stock_container">
                        <div class="in_stock in_stock_true"></div>
                        <span>no estoque</span>
                    </div>
                    <div class="product_text">
                        <p>sinopse aqui</p>
                    </div>
                    <!-- Product Quantity -->
                    <div class="product_quantity_container">
                        <span>Quantidade</span>
                        <div class="product_quantity clearfix">
                            <input id="quantity_input" type="text" pattern="[0-9]*" value="1">
                            <div class="quantity_buttons">
                                <div id="quantity_inc_button" class="quantity_inc quantity_control"><i class="fa fa-caret-up" aria-hidden="true"></i></div>
                                <div id="quantity_dec_button" class="quantity_dec quantity_control"><i class="fa fa-caret-down" aria-hidden="true"></i></div>
                            </div>
                        </div>
                    </div>
                    <!-- Product Size -->
                    <div class="product_size_container">
                        <div class="button cart_button"><a href="#">adicionar ao carrinho</a></div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Reviews -->

        <div class="row">
            <div class="col">
                <div class="reviews">
                    <div class="reviews_title">comentarios</div>
                    <div class="reviews_container">
                        <ul>
                            <!-- Review -->
                            <li class=" review clearfix">
                                <div class="review_image"><img src="images/review_1.jpg" alt=""></div>
                                <div class="review_content">
                                    <div class="review_name"><a href="#">Maria Smith</a></div>
                                    <div class="review_date">Jun 02, 2018</div>
                                    <div class="rating rating_4 review_rating" data-rating="4">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                    </div>
                                    <div class="review_text">
                                        <p>bl� bl� bl�</p>
                                    </div>
                                </div>
                            </li>
                            <!-- Review -->
                            <li class=" review clearfix">
                                <div class="review_image"><img src="images/review_2.jpg" alt=""></div>
                                <div class="review_content">
                                    <div class="review_name"><a href="#">Helmet</a></div>
                                    <div class="review_date">/mai 28, 2018</div>
                                    <div class="rating rating_4 review_rating" data-rating="4">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                    </div>
                                    <div class="review_text">
                                        <p>bl� bl� bl�</p>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <!-- Leave a Review -->

        <div class="row">
            <div class="col">
                <div class="review_form_container">
                    <div class="review_form_title">deixe seu comentario</div>
                    <div class="review_form_content">
                        <form action="#" id="review_form" class="review_form">
                            <div class="d-flex flex-md-row flex-column align-items-start justify-content-between">
                                <input type="text" class="review_form_input" placeholder="Nome" required="required">
                                <input type="email" class="review_form_input" placeholder="E-mail" required="required">
                                <input type="text" class="review_form_input" placeholder="Assunto">
                            </div>
                            <textarea class="review_form_text" name="review_form_text" placeholder="Mensagem"></textarea>
                            <button type="submit" class="review_form_button">deixe seu comentario</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>		
</div>
<%@include file="rodape.jsp"%>