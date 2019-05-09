<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
    <title>Login</title>
    <link rel="stylesheet" href="css/normalize.css">
    <link rel="stylesheet" href="css/shared.css">
    <link rel="stylesheet" href="css/login.css">
    <link rel="shortcut icon" href="img/favicon.ico" />
</head>

<body>
    <main class="container flex-container">
        <div class="center">
            <h1 class="h1-container left">Mais de um bilh�o de usu�rios j� cadastrados</h1>
        </div>
        <div class="center">
            <div class="container form-container">
                <img src="img/logo.png" class="logo">
                <form action="TentativaLogin" method="POST">
                    <input type="email" name="Email" placeholder="Email">
                    <input type="password" name="Senha" placeholder="Senha">
                    <a class='form-link' href="esqueceu-senha.jsp">Esqueci minha senha</a>
                    <a class='form-link' href="cadastro.jsp">Crie uma conta</a>
                    <input type="submit" value="Entrar" class="btn btn--main">
                </form>
            </div>   
        </div>
        <div class="center">
            <h1 class="h1-container right">Crie uma conta e acesse j�!</h1>
        </div>
    </main>
</body>

</html>