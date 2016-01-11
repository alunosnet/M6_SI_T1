<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="listarNotasPorAlunoV2.aspx.cs" Inherits="m6_alunos_t1.listarNotasPorAlunoV2" %>

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
                    </ul>
                </li>
                <!--Estatísticas-->
            </ul>
        </nav>
    
        <asp:SqlDataSource ID="SQLAlunos" runat="server" ConnectionString="<%$ ConnectionStrings:m6_bd_alunos_t1ConnectionString %>" SelectCommand="SELECT nprocesso, nome FROM alunos"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SQLNotas" runat="server" ConnectionString="<%$ ConnectionStrings:m6_bd_alunos_t1ConnectionString %>" SelectCommand="SELECT Disciplinas.nome, Notas.nr_modulo, Notas.data, Notas.nota FROM Notas INNER JOIN Disciplinas ON Notas.codigo_disciplina = Disciplinas.codigo WHERE (Notas.nprocesso = @nprocesso)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="nprocesso" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        Escolha o aluno:
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SQLAlunos" DataTextField="nome" DataValueField="nprocesso">
        </asp:DropDownList>
        <asp:Button ID="Button1" runat="server" Text="Pesquisar" CssClass="btn btn-info" />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SQLNotas" CssClass="table table-striped">
            <Columns>
                <asp:BoundField DataField="nome" HeaderText="nome" SortExpression="nome" />
                <asp:BoundField DataField="nr_modulo" HeaderText="nr_modulo" SortExpression="nr_modulo" />
                <asp:BoundField DataField="data" HeaderText="data" SortExpression="data" />
                <asp:BoundField DataField="nota" HeaderText="nota" SortExpression="nota" />
            </Columns>
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
