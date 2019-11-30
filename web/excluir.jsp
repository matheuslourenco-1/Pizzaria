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
        <form action="executar_excluir.jsp" method="post">
            <label>CÓDIGO: </label>
            <div class="input2">
            <input type="text" name="codigo" value="<%=request.getParameter("codigo")%>"/><br>
            </div>
            <label>NOME: </label>
            <div class="input2">
            <input type="text" name="nome" value="<%=request.getParameter("nome")%>"/><br>
            </div>
            <button type="submit">excluir</button>
        </form>
    </body>
</html>
