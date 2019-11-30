<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
        	<head>
		<title>Auto Pizzaria</title>
		<meta charset="utf-8" />
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
	</head>
    <body>
        <form action="executar_alterar.jsp" method="get">
            <label>Código:</label><br>
            <div class="input1">
            <input type="text" name="codigo" value="<%=request.getParameter("codigo")%>"/><br>
            </div>
            <label>Nome:</label><br>
            <div class="input1">
            <input type="text" name="nome" value="<%=request.getParameter("nome")%>"/><br>
            </div>
            <label>Email:</label><br>
            <div class="input1">
            <input type="text" name="email" value="<%=request.getParameter("email")%>"/><br>
            </div>
            <label>Senha:</label><br>
            <div class="input1">
            <input type="text" name="senha" value="<%=request.getParameter("senha")%>"/><br>
            </div>
            <button type="submit">ATUALIZAR</button>
        </form>              
    </body>
</html>
