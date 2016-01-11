<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adicionarAluno.aspx.cs" Inherits="m6_alunos_t1.adicionarAluno" %>

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
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:m6_bd_alunos_t1ConnectionString %>" InsertCommand="INSERT INTO alunos(nome, data_nascimento) VALUES (@nome, @data_nascimento)" SelectCommand="select * from alunos">
            <InsertParameters>
                <asp:Parameter Name="nome" />
                <asp:Parameter Name="data_nascimento"
                    convertemptystringtonull="true"
                    type="DateTime"
                     />
            </InsertParameters>
        </asp:SqlDataSource>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="nprocesso" DataSourceID="SqlDataSource1" DefaultMode="Insert">
            <EditItemTemplate>
                nprocesso:
                <asp:Label ID="nprocessoLabel1" runat="server" Text='<%# Eval("nprocesso") %>' />
                <br />
                nome:
                <asp:TextBox ID="nomeTextBox" runat="server" Text='<%# Bind("nome") %>' />
                <br />
                data_nascimento:
                <asp:TextBox ID="data_nascimentoTextBox" runat="server" Text='<%# Bind("data_nascimento") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                nome:
                <asp:TextBox ID="nomeTextBox" runat="server" Text='<%# Bind("nome") %>' />
                <br />
                data_nascimento:
                <asp:TextBox ID="data_nascimentoTextBox" runat="server" Text='<%# Bind("data_nascimento") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                nprocesso:
                <asp:Label ID="nprocessoLabel" runat="server" Text='<%# Eval("nprocesso") %>' />
                <br />
                nome:
                <asp:Label ID="nomeLabel" runat="server" Text='<%# Bind("nome") %>' />
                <br />
                data_nascimento:
                <asp:Label ID="data_nascimentoLabel" runat="server" Text='<%# Bind("data_nascimento") %>' />
                <br />
                <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
    
    </div>
    </form>
</body>
</html>
