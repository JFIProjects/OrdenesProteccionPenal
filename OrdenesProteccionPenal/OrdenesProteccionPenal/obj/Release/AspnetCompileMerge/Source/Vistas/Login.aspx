﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="OrdenesProteccionPenal.Vistas.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Login</title>
     <%--CSS--%>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css"  />
    <link rel="stylesheet" href="../css/Sesion.css" />
    <link rel="stylesheet" href="../PNotify/animate.css" />
    <link rel="stylesheet" href="../PNotify/pnotify.custom.min.css" />

    <%--JS--%>
      <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" ></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="../js/Sesion.js"></script>
     <script src="../PNotify/pnotify.custom.min.js"></script>
</head>
<body>
    <form runat="server" class="login_contenedor d-flex align-items-center justify-content-center">
        <asp:ScriptManager ID="ajax_login" runat="server"/>
        <asp:UpdatePanel runat="server">
            <ContentTemplate>
                <asp:Panel runat="server" CssClass="central_panel p-4">
                    <asp:Panel runat="server" CssClass="row m-0 p-3 d-flex align-items-center justify-content-center">
                        <asp:Label runat="server" CssClass="titulo_central_panel text-center font-weight-bold">MEDIDAS DE PROTECCIÓN MATERIA PENAL</asp:Label>
                    </asp:Panel>
                    <asp:Panel runat="server" CssClass="row m-0">
                        <asp:Panel runat="server" CssClass="col-sm-6 p-3 d-flex align-items-center justify-content-center">
                            <asp:Image runat="server" ImageUrl="../img/pjem.png" />
                        </asp:Panel>
                        <asp:Panel runat="server" CssClass="col-sm-6 p-3">
                            <asp:Panel runat="server" CssClass="d-flex align-items-center justify-content-center">
                                <asp:Label runat="server" CssClass="titulo_login_panel text-center font-weight-bold p-2">Bienvenido</asp:Label>
                            </asp:Panel>
                            <asp:Panel runat="server" CssClass="form-group">
                                <asp:Label runat="server" CssClass="">Usuario</asp:Label>
                                <asp:Panel runat="server" CssClass="input-group">
                                    <asp:Panel runat="server" CssClass="input-group-prepend">
                                        <span class="input-group-text">
                                            <i class="fas fa-user-tie"></i>
                                        </span>
                                    </asp:Panel>
                                    <asp:TextBox ID="TextBox_user_name" runat="server" CssClass="form-control" Placeholder="Usuario"/>
                                </asp:Panel>
                            </asp:Panel>
                            <asp:Panel runat="server" CssClass="form-group">
                                <asp:Label runat="server" CssClass="">Contraseña</asp:Label>
                                <asp:Panel runat="server" CssClass="input-group">
                                    <asp:Panel runat="server" CssClass="input-group-prepend">
                                        <asp:Label runat="server" CssClass="input-group-text"><i class="fas fa-lock"></i></asp:Label>
                                    </asp:Panel>
                                    <asp:TextBox TextMode="Password" ID="TextBox_password" runat="server" CssClass="form-control" Placeholder="Contraseña"/>
                                </asp:Panel>
                            </asp:Panel>
                            <asp:Panel runat="server" CssClass="form-group d-flex align-items-center justify-content-center">
                                <asp:Button runat="server" ID="btn_login" Text="Iniciar sesión" CssClass="btn btn-secondary" OnClick="btn_login_Click"/>
                            </asp:Panel>                     
                        </asp:Panel>
                    </asp:Panel>
                </asp:Panel>
            </ContentTemplate>
        </asp:UpdatePanel>
    </form>
</body>
</html>
