<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ASPFundations._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main>
     <section class="row" aria-labelledby="aspnetTitle">
         <h1 id="aspnetTitle">ASP.NET</h1>
         <p class="lead">ASP.NET is a free web framework for building great Web sites and Web applications using HTML, CSS, and JavaScript.</p>
         <p><a href="http://www.asp.net" class="btn btn-primary btn-md">Learn more &raquo;</a></p>
     </section>
     
        <div class="container row">
            <!-- Primera fila: Etiqueta, TextBox y Botón -->
            <div class="col-6 mb-3 align-items-center g-2">
                <!-- Etiqueta -->
                <div class="col-auto">
                    <asp:Label ID="LabelNombre" runat="server" Text="Nombre:" CssClass="form-label"></asp:Label>
                </div>
                <!-- Campo de texto -->
                <div class="col-auto">
                    <asp:TextBox ID="TextBoxNombre" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <!-- Botón -->
                <div class="col-auto">
                    <asp:Button ID="ButtonProbar" runat="server" Text="Probar" CssClass="btn btn-primary" OnClick="ButtonProbar_Click"></asp:Button>
                </div>
            </div>

            <!-- Segunda fila: ListBox y Botón -->
            <div class="col-6 mb-3">
                
                    <!-- ListBox -->
                    <div class="col-md-8">
                        <asp:ListBox ID="ListBoxDias" runat="server" 
                            CssClass="form-select" 
                            OnSelectedIndexChanged="ListBoxDias_SelectedIndexChanged" 
                            AutoPostBack="True"></asp:ListBox>
                    </div>
                    <!-- Botón -->
                    <div class="col-md-4 d-flex align-items-center">
                        <asp:Button ID="ButtonDias" runat="server" Text="Ver Días" CssClass="btn btn-secondary" OnClick="ButtonDias_Click"></asp:Button>
                    </div>
                
            </div>
        </div>
</main>

</asp:Content>
