<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="Dao.ClienteDAO"%>
<%@page import="model.Cliente"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
    <head>
        	<head>
		<title>Auto Pizzaria</title>
		<meta charset="utf-8" />
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
	</head>

    <body>
        <form action="index.jsp" method="post">

<form>
	<input type="search" placeholder="pesquisar">
</form>
        </form>  
        <%
            String nome_cliente = request.getParameter("nome");
            try{
            out.print("<div class='tabela_controle'>");
                out.print("<table border='1'>");
                    out.print("<tr>");
                    out.print("<th>ID</th>");
                    out.print("<th>NOME</th>");
                    out.print("<th>EMAIL</th>");
                    out.print("<th>SENHA</th>");
                    out.print("<th>EDITAR</th>");
                    out.print("<th>EXCLUIR</th>");
                    out.print("</tr>");
                    ClienteDAO cli = new ClienteDAO();
                    
                    if(nome_cliente == "" || nome_cliente == null){
                        ArrayList<Cliente> lista = cli.ListaTodos();
                        for(int i=0; i < lista.size(); i++){
                            out.print("<tr>");
                            out.print("<td>" + lista.get(i).getCodigo_usuario() + "</td>");
                            out.print("<td>" + lista.get(i).getNome_usuario() + "</td>");
                            out.print("<td>" + lista.get(i).getEmail_usuario() + "</td>");
                            out.print("<td>" + lista.get(i).getSenha_usuario() + "</td>");
                            out.print("<td><a href='alterar.jsp?codigo="+ lista.get(i).getCodigo_usuario() + 
                                    "&nome="+ lista.get(i).getNome_usuario()+
                                    "&email=" + lista.get(i).getEmail_usuario()+
                                    "&senha=" + lista.get(i).getSenha_usuario()+"'>CLIQUE</a></td>");
                            out.print("<td><a href='excluir.jsp?codigo="+ 
                                    lista.get(i).getCodigo_usuario()+
                                    "&nome="+lista.get(i).getNome_usuario()+ "'>CLIQUE</a></td>");
                            out.print("</tr>");
                        }
                    } else {
                        ArrayList<Cliente> lista = cli.ListaTodosNome(nome_cliente);
                         for(int i=0; i < lista.size(); i++){
                            out.print("<tr>");
                            out.print("<td>" + lista.get(i).getCodigo_usuario() + "</td>");
                            out.print("<td>" + lista.get(i).getNome_usuario() + "</td>");
                            out.print("<td>" + lista.get(i).getEmail_usuario() + "</td>");
                            out.print("<td>" + lista.get(i).getSenha_usuario() + "</td>");
                            out.print("<td><a href='alterar.jsp?codigo="+ lista.get(i).getCodigo_usuario() + 
                                    "&nome="+ lista.get(i).getNome_usuario()+
                                    "&email=" + lista.get(i).getEmail_usuario()+
                                    "&senha=" + lista.get(i).getSenha_usuario()+"'>CLIQUE</a></td>");
                            out.print("<td><a href='excluir.jsp?codigo="+ 
                                    lista.get(i).getCodigo_usuario()+
                                    "&nome="+lista.get(i).getNome_usuario()+ "'>CLIQUE</a></td>");
                            out.print("</tr>");
                        }
                    }
                out.print("</table>");
                out.print("</div>");
            } catch (Exception erro){
                throw new RuntimeException("Erro 6" + erro);
            }
        %>

            <button><a href="cadastro.html">NOVO CADASTRO</a> </button>
            <button><a type="submit" href="index.jsp">Pagina Inicial</a> </button>
    </body>
</html>
