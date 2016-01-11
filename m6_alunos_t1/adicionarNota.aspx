<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adicionarNota.aspx.cs" Inherits="m6_alunos_t1.adicionarNota" %>

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
    
        <asp:SqlDataSource ID="SQLNotas" runat="server" ConnectionString="<%$ ConnectionStrings:m6_bd_alunos_t1ConnectionString %>" InsertCommand="INSERT INTO Notas(nprocesso, codigo_disciplina, nr_modulo, data, nota) VALUES (@nprocesso, @codigo_disciplina, @nr_modulo, @data, @nota)" SelectCommand="select * from notas">
            <InsertParameters>
                <asp:Parameter Name="nprocesso" />
                <asp:Parameter Name="codigo_disciplina" />
                <asp:Parameter Name="nr_modulo" />
                <asp:Parameter Name="data" 
                    convertemptystringtonull="true"
                    type="DateTime"/>
                <asp:Parameter Name="nota" />
            </InsertParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SQLAlunos" runat="server" ConnectionString="<%$ ConnectionStrings:m6_bd_alunos_t1ConnectionString %>" SelectCommand="SELECT * FROM [alunos]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SQLDisciplinas" runat="server" ConnectionString="<%$ ConnectionStrings:m6_bd_alunos_t1ConnectionString %>" SelectCommand="SELECT * FROM [Disciplinas]"></asp:SqlDataSource>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="nr_nota" DataSourceID="SQLNotas" DefaultMode="Insert" Width="472px">
            <EditItemTemplate>
                nr_nota:
                <asp:Label ID="nr_notaLabel1" runat="server" Text='<%# Eval("nr_nota") %>' />
                <br />
                nprocesso:
                <asp:TextBox ID="nprocessoTextBox" runat="server" Text='<%# Bind("nprocesso") %>' />
                <br />
                codigo_disciplina:
                <asp:TextBox ID="codigo_disciplinaTextBox" runat="server" Text='<%# Bind("codigo_disciplina") %>' />
                <br />
                nr_modulo:
                <asp:TextBox ID="nr_moduloTextBox" runat="server" Text='<%# Bind("nr_modulo") %>' />
                <br />
                data:
                <asp:TextBox ID="dataTextBox" runat="server" Text='<%# Bind("data") %>' />
                <br />
                nota:
                <asp:TextBox ID="notaTextBox" runat="server" Text='<%# Bind("nota") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                Nº processo:
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SQLAlunos" DataTextField="nome" DataValueField="nprocesso" SelectedValue='<%# Bind("nprocesso") %>'>
                </asp:DropDownList>
                <br />
                Disciplina:
                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SQLDisciplinas" DataTextField="nome" DataValueField="codigo" SelectedValue='<%# Bind("codigo_disciplina") %>'>
                </asp:DropDownList>
                <br />
                nr_modulo:
                <asp:TextBox ID="nr_moduloTextBox" runat="server" Text='<%# Bind("nr_modulo") %>' />
                <br />
                data:
                <asp:TextBox ID="dataTextBox" runat="server" Text='<%# Bind("data") %>' />
                <br />
                nota:
                <asp:TextBox ID="notaTextBox" runat="server" Text='<%# Bind("nota") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                nr_nota:
                <asp:Label ID="nr_notaLabel" runat="server" Text='<%# Eval("nr_nota") %>' />
                <br />
                nprocesso:
                <asp:Label ID="nprocessoLabel" runat="server" Text='<%# Bind("nprocesso") %>' />
                <br />
                codigo_disciplina:
                <asp:Label ID="codigo_disciplinaLabel" runat="server" Text='<%# Bind("codigo_disciplina") %>' />
                <br />
                nr_modulo:
                <asp:Label ID="nr_moduloLabel" runat="server" Text='<%# Bind("nr_modulo") %>' />
                <br />
                data:
                <asp:Label ID="dataLabel" runat="server" Text='<%# Bind("data") %>' />
                <br />
                nota:
                <asp:Label ID="notaLabel" runat="server" Text='<%# Bind("nota") %>' />
                <br />
                <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
    
    </div>
    </form>
</body>
</html>
