<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Dao.ClienteDAO"%>
<%@page import="model.Cliente"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE HTML>

<html>
	<head>
		<title>Auto Pizzaria</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
	</head>
	<body class="landing is-preload">

		<!-- Page Wrapper -->
			<div id="page-wrapper">

				<!-- Header -->
					<header id="header" class="alt">
						<h1><a href="index.jsp">Auto Pizzaria</a></h1>
						<nav id="nav">
							<ul>
								<li class="special">
									<a href="#menu" class="menuToggle"><span>Menu</span></a>
									<div id="menu">
										<ul>
											<li><a href="index.html">Inicio</a></li>
											<li><a href="pedido.html">Fazer Pedido</a></li>
											<li><a href="cadastro.html" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);margin: 5px 0px 0px 2px;"><img class="avatar" src="images/login.png" alt="">Login</a></li>
                                                                                        
										</ul>
									
                                                                        <div id="menu2">

                                                                                <ul>
                                                                                <li><a href="controle.jsp" >Controle Usuario</a></li> 
                                                                                </ul>
									</div>
                                                                        </div>
								</li>
							</ul>
						</nav>
					</header>

				<!-- Banner -->
					<section id="banner">
						<div class="inner">
							<h2>Auto Pizzaria</h2>
							<p>Onde você pede<br />
							com a mais facilidade<br /></p>
							<ul class="actions special">
								<li><a href="pedido.html" class="button primary">Fazer Pedido</a></li>
							</ul>
						</div>

					</section>

				<!-- One -->
					
				<!-- Footer -->
					<footer id="footer">
						<ul class="icons">
							<li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
							<li><a href="#" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
							<li><a href="#" class="icon fa-instagram"><span class="label">Instagram</span></a></li>
							<li><a href="#" class="icon fa-dribbble"><span class="label">Dribbble</span></a></li>
							<li><a href="#" class="icon fa-envelope-o"><span class="label">Email</span></a></li>
						</ul>
					</footer>

			</div>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

	</body>
</html>

