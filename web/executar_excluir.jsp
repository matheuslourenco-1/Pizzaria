<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Dao.ClienteDAO" %>

<%
    try {
           ClienteDAO cld = new ClienteDAO();
           int codigo_cliente = Integer.parseInt(request.getParameter("codigo"));
           cld.excluir(codigo_cliente);
           out.print("<script>alert('Registro excluido') </script>");
           out.print("<script>window.location.href='controle.jsp' </script>");
           
        } catch (Exception erro) {
            throw new RuntimeException("ERRO 10: "+ erro);
        }
%>

