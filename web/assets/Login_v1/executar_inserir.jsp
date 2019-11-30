<%-- 
    Document   : executar_inserir
    Created on : 30/08/2019, 21:46:04
    Author     : Matheus Lourenço
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Cliente"%>
<%@page import="Dao.ClienteDAO" %>
<% 
try {
        Cliente cli = new Cliente();
        ClienteDAO cld = new ClienteDAO();
        String nome_cliente = request.getParameter("nome");
        String email_cliente = request.getParameter("email");
        String senha_cliente = request.getParameter("senha");
        
        if(nome_cliente.equals("") || email_cliente.equals("")||senha_cliente.equals("")){
            out.print("<script>alert('Campos obrigatórios:');</script>");
            response.sendRedirect("inserir.jsp");
        }else{
            cli.setNome_usuario(nome_cliente);
            cli.setEmail_usuario(email_cliente);
            cli.setSenha_usuario(senha_cliente);
            cld.inserir(cli);
           out.print("<script>alert('Cadastro com Sucesso!') </script>");
           out.print("<script>window.location.href='index.html' </script>");
        }
    } catch (Exception erro) {
        throw new RuntimeException ("ERRO 3:"+erro);
    }
%>