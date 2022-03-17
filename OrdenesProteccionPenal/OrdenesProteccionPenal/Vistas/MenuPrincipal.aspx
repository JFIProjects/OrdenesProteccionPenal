<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MenuPrincipal.aspx.cs" Inherits="OrdenesProteccionPenal.Vistas.MenuPrincipal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Inicio de Sesión correcto.....
        </div>
        <div class="col-sm-4" id="cerrar-sesion">
            <asp:LinkButton runat="server" ID="cerrar" AutoPostBack="true"  
                Font-Size="20px" OnClick="btnCerrar_Click" Visible="true" style="font-size: 16px;color: black;margin-left: 257px;">Cerrar Sesión</asp:LinkButton>
            </div>
    </form>
</body>
</html>
