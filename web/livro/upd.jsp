<%@page import="modelo.Categoria"%>
<%@page import="modelo.Editora"%>
<%@page import="java.util.List"%>
<%@page import="modelo.Autor"%>
<%@page import="dao.EditoraDAO"%>
<%@page import="dao.AutorDAO"%>
<%@page import="dao.CategoriaDAO"%>
<%@page import="util.StormData"%>
<%@page import="java.math.BigDecimal"%>
<%@page import="modelo.Livro"%>
<%@page import="dao.LivroDAO"%>
<%@include file="../cabecalho.jsp" %>
<%
String msg ="";
String classe = "";
    
    LivroDAO dao = new LivroDAO();
    CategoriaDAO cdao = new CategoriaDAO();
    AutorDAO adao = new AutorDAO();
    EditoraDAO edao = new EditoraDAO();    
    
    Livro obj = new Livro();

    //verifica se é postm ou seja, quer alterar
    if(request.getMethod().equals("POST")){
        
    }else{
        //e GET
        if(request.getParameter("codigo") == null){
            response.sendRedirect("index.jsp");
            return;
        }
        
        obj = dao.buscarPorChavePrimaria(Integer.parseInt(request.getParameter("codigo")));
        
        if(obj == null){
            response.sendRedirect("index.jsp");
            return;
        } 
    }
    List<Autor> autores = adao.listar();
    List<Editora> editoras = edao.listar();
    List<Categoria> categorias = cdao.listar();
%>
<div class="row">
    <div class="col-lg-12">
        <h1 class="page-header">
            Sistema de Comércio Eletrônico
            <small>Admin</small>
        </h1>
        <ol class="breadcrumb">
            <li>
                <i class="fa fa-dashboard"></i>  <a href="index.jsp">Área Administrativa</a>
            </li>
            <li class="active">
                <i class="fa fa-file"></i> Aqui vai o conteúdo de apresentação
            </li>
        </ol>
    </div>
</div>
<!-- /.row -->
<div class="row">
    <div class="panel panel-default">
        <div class="panel-heading">
            Livro
        </div>
        <div class="panel-body">

            <div class="alert <%=classe%>">
                <%=msg%>
            </div>
            <form action="../UploadWS" method="post" enctype="multipart/form-data">
                
                <div class="col-lg-6">

                    <div class="form-group">
                        <label>Código:</label>
                        <input class="form-control" type="text" name="txtId" readonly value="<%=obj.getId()%>"/>
                    </div>
                    
                    <div class="form-group">
                        <label>Nome:</label>
                        <input class="form-control" type="text" name="txtNome" required value="<%=obj.getNome() %>" />
                    </div>
                    
                    <div class="form-group">
                        <label>Preço:</label>
                        <input class="form-control" type="text" name="txtPreco" required value="<%=obj.getPreco() %>" />
                    </div>
                    
                    <div class="form-group">
                        <label>Sinopse</label>
                        <textarea class="form-control"  name="txtSinopse"><%=obj.getSinopse()%>
                        </textarea>
                    </div>
                    
                    <div class="form-group">
                        <label>Data Publicação:</label>
                        <input class="form-control" type="text" name="txtDatapublicacao" required value="<%=obj.getDatapublicacao() %>" />
                    </div>
                    
                    <div class="form-group">
                        <label>Editora</label>
                        <select name="selEditora" class="form-control">
                            <option>Selecione</option>
                        <%
                         String selecionado1;
                         for(Editora e:editoras){
                             
                            if(obj.getEditora().getCnpj()==e.getCnpj()){
                                selecionado1="selected";
                            }
                            else{
                                selecionado1="";
                            }
                        %>
                        <option value="<%=e.getCnpj()%>" <%=selecionado1%>>
                            
                            
                        <%=e.getNome()%>
                        </option>
                        <%}%>
                        </select>
                    </div>
                    
                    <div class="form-group">
                        <label>Categoria</label>
                        <select name="selCategoria" class="form-control">
                            <option>Selecione</option>
                        <%
                         String selecionado;
                         for(Categoria c:categorias){
                             
                            if(obj.getCategoria().getId()==c.getId()){
                                selecionado="selected";
                            }
                            else{
                                selecionado="";
                            }
                        %>
                        <option value="<%=c.getId()%>" <%=selecionado%>>
                            
                            
                        <%=c.getNome()%>
                        </option>
                        <%}%>
                        </select>
                    </div>
                    
                    <div class="form-group">
                        <label>Foto 1:</label>
                        <input class="form-control" type="file" name="arquivo1" id="arquivo1"  accept="image/*" />
                        <img src="../arquivos/<%=obj.getFoto1()%>" id="img1"/>
                        <inbut type="hidden" name="txtFotoVelha" value="<%=obj.getFoto1()%>"/>
                    </div>
                    
                    <div class="form-group">
                        <label>Foto 2:</label>
                        <input class="form-control" type="file" name="arquivo2" id="arquivo2"  accept="image/*" />
                        <img src="../arquivos/<%=obj.getFoto2()%>" id="img1"/>
                        <inbut type="hidden" name="txtFotoVelha" value="<%=obj.getFoto2()%>"/>
                    </div>
                    
                    <div class="form-group">
                        <label>Foto 3:</label>
                        <input class="form-control" type="file" name="arquivo3" id="arquivo3"  accept="image/*" />
                        <img src="../arquivos/<%=obj.getFoto3()%>" id="img1"/>
                        <inbut type="hidden" name="txtFotoVelha" value="<%=obj.getFoto3()%>"/>
                    </div>
                    
                    <div class="form-group">
                        <label>Autores</label>

                        <%for (Autor a : autores) {
                            if(obj.getAutorList().contains(a))
                            {
                                selecionado = "checked";
                            }
                            else
                            {
                                selecionado = "";
                            }
                        %>
                        <input type="checkbox" name="autoreschk" value="<%=a.getId()%>"><%=a.getNome()%>

                        <%}%>
                    </div>

                <button class="btn btn-info btn-sm" type="submit">Salvar</button>
                
            </form>
s
        </div>


    </div>
</div>
<!-- /.row -->
<%@include file="../rodape.jsp" %>

<script>
    function readURL(input,destino) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            
            reader.onload = function (e) {
                $('#'+destino).attr('src', e.target.result);
            }
            
            reader.readAsDataURL(input.files[0]);
        }
    }
    
    $("#arquivo1").change(function(){
        readURL(this,"img1");
    });
</script>