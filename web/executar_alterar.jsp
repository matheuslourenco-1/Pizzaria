<%@page import="javax.management.RuntimeErrorException"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Cliente"%>
<%@page import="Dao.ClienteDAO"%>

<%
  try {
         Cliente cli = new Cliente();
         ClienteDAO cld = new ClienteDAO();
         
         String nome_cliente = request.getParameter("nome");
         String email_cliente = request.getParameter("email");
         String senha_cliente = request.getParameter("senha");
         int codigo_cliente = Integer.parseInt(request.getParameter("codigo"));
         
         if(nome_cliente.equals("") || email_cliente.equals("") || senha_cliente.equals("")){
             response.sendRedirect("index.jsp");
         }
         else {
             cli.setNome_usuario(nome_cliente);
             cli.setEmail_usuario(email_cliente);
             cli.setSenha_usuario(senha_cliente);
             cli.setCodigo_usuario(codigo_cliente);
             cld.atualizar(cli);
             out.print("<script>alert('Atualizado com sucesso');</script>");
             out.print("<script>window.location.href='controle.jsp';</script>");
         }
         
         
      } catch (Exception erro) {
          throw new RuntimeException("Erro 9: " + erro);
      }
  
%>
