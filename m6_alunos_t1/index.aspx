<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="m6_alunos_t1.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <script src="js/jquery-1.11.3.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <!--MENU-->
    <!--Alunos Disciplinas Notas Estatísticas-->
    <!-- Adicionar/Gerir/Listar/Pesquisar-->
    <div class="container">
        <nav class="navbar navbar-default">
            <ul class="nav navbar-nav">
                <!--Alunos-->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">Alunos<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="adicionaraluno.aspx">Adicionar</a></li>
                        <li><a href="editaralunos.aspx">Gerir</a></li>
                        <li><a href="listaralunos.aspx">Listar</a></li>
                        <li><a href="pesquisaralunos.aspx">Pesquisar</a></li>
                    </ul>
                </li>
                <!--Alunos-->
                <!--Disciplinas-->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">Disciplinas<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="adicionardisciplina.aspx">Adicionar</a></li>
                        <li><a href="editardisciplinas.aspx">Gerir</a></li>
                        <li><a href="listardisciplinas.aspx">Listar</a></li>
                        <li><a href="pesquisardisciplinas.aspx">Pesquisar</a></li>
                    </ul>
                </li>
                <!--Disciplinas-->
                <!--Notas-->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">Notas<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="adicionarnota.aspx">Adicionar</a></li>
                        <li><a href="listarnotas.aspx">Listar</a></li>
                        <li><a href="listarnotasporaluno.aspx">Listar por aluno</a></li>
                        <li><a href="listarnotasporalunov2.aspx">Listar por aluno v2</a></li>
                    </ul>
                </li>
                <!--Notas-->
                <!--Estatísticas-->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">Estatísticas<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="alunoComMelhorMedia.aspx">Aluno com Melhor Média</a></li>
                        <li><a href="mediasporaluno.aspx">Médias por Aluno</a></li>
                        <li><a href="numeromodulosporaluno.aspx">Número de módulos por aluno</a></li>
                        <li><a href="alunosmelhormedia.aspx">Alunos melhor que a média</a></li>
                    </ul>
                </li>
                <!--Estatísticas-->
            </ul>
        </nav>
    </div>
    <!--MENU-->
    </form>
</body>
</html>
