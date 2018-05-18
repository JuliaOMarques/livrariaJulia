
<%@page import="java.util.ArrayList"%>
<%@page import="modelo.Autor"%>
<%@page import="dao.AutorDAO"%>
<%@page import="util.StormData"%>
<%@page import="java.util.Date"%>
<%@page import="modelo.Categoria"%>
<%@page import="modelo.Editora"%>
<%@page import="java.math.BigDecimal"%>
<%@page import="dao.LivroDAO"%>
<%@page import="modelo.Livro"%>
<%@page import="java.util.List"%>

<%@include file="../cabecalho.jsp" %>
<%
    String msg = "";
    String classe = "";
    AutorDAO adao = new AutorDAO();
    Categoria c = new Categoria();
    Editora e = new Editora();
    
    Livro obj = new Livro();
    
    if(request.getMethod().equals("POST"))
    {
        //pego uma lista de autores(com mesmo name)
        String[] autoresid = request.getParameter("autores").split(";");
        //popular o livro
        Livro l = new Livro();
        l.setNome("StorTroopers - Uma viagem que nao sai");
        l.setDatapublicacao(new Date());
        l.setPreco(13.12f);
        l.setCategoria(c);
        l.setEditora(e);
        //Autores
        List<Autor> listaautores = new ArrayList<>();
        for (String id : autoresid) {
            Integer idinteger = Integer.parseInt(id);
            listaautores.add(adao.buscarPorChavePrimaria(idinteger));
        }
        
        l.setAutorList(listaautores);
        
        LivroDAO dao = new LivroDAO();
        dao.incluir(l);
    }
    //pego meus autores
    List<Autor> autores = adao.listar();
%>
<div class="row">
    <div class="col-lg-12">
        <h1 class="page-header">
            Livraria Teste
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
            Livros
        </div>
        <div class="panel-body">

            <div class="alert <%=classe%>">
                <%=msg%>
            </div>
            <form action="../UploadWS" method="post" enctype="multipart/form-data">
             
                <div class="col-lg-6">

                    <div class="form-group">
                        <label>Autores</label>
                        <select name="autores" multiple>
                            <%for(Autor a:autores){%>
                            <option value="<%=a.getId()%>"><%=a.getNome()%>
                            </option>
                            <%}%>
                        </select>
                     </div>
                        
                    <div class="form-group">
                        <label>Autores com checkbox</label>
                       
                            <%for(Autor a:autores){%>
                            <input type="checkbox" name="autoreschk" value="<%=a.getId()%>"><%=a.getNome()%>
                           
                            <%}%>
                        </select>
                    </div>
                    
                    <div class="form-group">
                        <label>Preço:</label>
                        <input class="form-control" type="text"  name="txtPreco"  required />
                    </div>
                    
                    <div class="form-group">
                        <label>Sinopse:</label>
                        <input class="form-control" type="text"  name="txtSinopse"  required />
                    </div>
                    
                    <div class="form-group">
                        <label>Data Publicação:</label>
                        <input class="form-control" type="text"  name="txtDatapublicacao"  required />
                    </div>
                    
                    <div class="form-group">
                        <label>Editora:</label>
                        <input class="form-control" type="text"  name="txtEditora"  required />
                    </div>
                    
                    <div class="form-group">
                        <label>Categoria:</label>
                        <input class="form-control" type="text"  name="txtCategoria"  required />
                    </div>
                    
                    
                    <div class="form-group">
                        <label>Foto 1:</label>
                        <input class="form-control" type="file" name="txtFoto1" required value="<%=obj.getFoto1()%>" />
                        <img src="../arquivos/<%=obj.getFoto1()%>" id=""Foto/>
                    </div>

                    <div class="form-group">
                        <label>Foto 2:</label>
                        <input class="form-control" type="file" name="txtFoto2" required value="<%=obj.getFoto2()%>" />
                        <img src="../arquivos/<%=obj.getFoto2()%>" id=""Foto/>
                    </div>
                    
                    
                    <div class="form-group">
                        <label>Foto 3:</label>
                        <input class="form-control" type="file" name="txtFoto3" required value="<%=obj.getFoto3()%>" />
                        <img src="../arquivos/<%=obj.getFoto3()%>" id=""Foto/>
                    </div>
                    
                    <button class="btn btn-warning btn-sm" type="submit">Salvar</button>

            </form>

        </div>


    </div>
</div>
<!-- 1/.row -->
<%@include file="../rodape.jsp" %>