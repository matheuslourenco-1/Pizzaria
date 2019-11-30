<%-- 
    Document   : inserir
    Created on : 30/08/2019, 21:23:27
    Author     : Matheus Lourenço
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
        	<head>
		<title>Auto Pizzaria</title>
		<meta charset="utf-8" />
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/Login_v1/css/main_1.css" />
		<noscript><link rel="stylesheet" href="assets/Login_v1/css/noscript.css" /></noscript>
	</head>
    <body>
        <form action="executar_inserir.jsp" method="post">
            <label>Nome: </label>
            <input type="text" name="nome" placeholder="Insira um nome aqui." /><br>
            <label>Email: </label>
            <input type="text" name="email" placeholder="Ex.: contato@contato.com.br" /><br>
            <label>Senha: </label>
            <input type="password" name="senha" placeholder="Insira uma Senha." /><br>
            <button type="submit">Cadastrar</button>
        </form>
    </body>
</html>
