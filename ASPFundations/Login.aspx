<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ASPFundations.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <main>
    <div class="container mt-5">
        <div class="row justify-content-center">
            <!-- Columna de la tarjeta con un tamaño fijo en pantallas medianas (col-md-4) -->
            <div class="col-md-4">
                <!-- Tarjeta con sombra para darle un buen efecto -->
                <div class="card shadow">
                    <!-- Encabezado de la tarjeta con un fondo primario y texto blanco -->
                    <div class="card-header text-center bg-primary text-white">
                        <h4>Login</h4>
                    </div>
                    <!-- Cuerpo de la tarjeta que contiene el formulario -->
                    <div class="card-body">
                        <form>
                            <!-- Campo de Usuario -->
                            <div class="form-group mb-3">
                                <asp:Label ID="LabelUser" runat="server" Text="Usuario" CssClass="form-label"></asp:Label>
                                <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" Placeholder="Ingrese su usuario" />
                            </div>

                            <!-- Campo de Contraseña -->
                            <div class="form-group mb-3">
                                <asp:Label ID="LabelPassword" runat="server" Text="Contraseña" CssClass="form-label"></asp:Label>
                                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control" Placeholder="Ingrese su contraseña" />
                            </div>

                            <!-- Botón de Login -->
                            <div class="d-grid">
                                <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn btn-primary btn-block" OnClick="btnLogin_Click" />
                            </div>
                        </form>
                    </div>
                    <!-- Pie de la tarjeta para mostrar errores -->
                    <div class="card-footer text-center">
                        <asp:Label ID="LabelError" runat="server" Text="" CssClass="text-danger"></asp:Label>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>
</asp:Content>
