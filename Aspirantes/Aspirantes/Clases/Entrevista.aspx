<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Entrevista.aspx.cs" Inherits="Aspirantes.Clases.Entrevista" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Entrevista</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
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
    <form id="form1" runat="server">
        <div>
            <asp:Panel runat="server" class="container">
                <asp:Panel runat="server" class="row p-0 m-3">
                    <div class="col-sm-12 p-0 m-0 px-3 mt-2 mb-5 d-flex justify-content-center"><span style="color: #9d2424;font-size:28px;font-weight: bold;">Entrevista</span></div>
                
                <div class="col-sm-4  m-0 p-2 form-group">
                <asp:Label runat="server" CssClass="" Style="font-weight: bold;">Buscar Aspirante</asp:Label>
                <asp:TextBox runat="server" ID="buscarTexto" placeholder="Folio" CssClass="form-control"></asp:TextBox>
                </div>

                <div class="col-sm-2  m-0 p-4 form-group">
                <asp:LinkButton runat="server" ID="buscar" AutoPostBack="true"  CssClass="btn  btn-primary"
                style="font-size: 20px; color: #767474; border-color: gray; background-color: #DAD7D7;" 
                OnClick="BuscarAspirante" Visible="true">Buscar</asp:LinkButton>
                </div>

                <div class="col-sm-12 p-0 m-0 px-3 mt-2 mb-5 d-flex"><span style="font-size:28px;font-weight: bold;">Ficha de Identificación</span></div>

                <div class="col-sm-4  m-0 p-2 form-group">
                <asp:Label runat="server" CssClass="" Style="font-weight: bold;">Nombre</asp:Label>
                <asp:TextBox runat="server" ID="nombre"  CssClass="form-control"></asp:TextBox>
                </div>

                <div class="col-sm-4  m-0 p-2 form-group">
                <asp:Label runat="server" CssClass="" Style="font-weight: bold;">Fecha Nacimiento</asp:Label>
                <asp:TextBox runat="server" ID="fecNac"  CssClass="form-control"></asp:TextBox>
                </div>

                <div class="col-sm-4  m-0 p-2 form-group">
                <asp:Label runat="server" CssClass="" Style="font-weight: bold;">Edad</asp:Label>
                <asp:TextBox runat="server" ID="edad"  CssClass="form-control"></asp:TextBox>
                </div>

                <div class="col-sm-4  m-0 p-2 form-group">
                <asp:Label runat="server" CssClass="" Style="font-weight: bold;">Estado Civil</asp:Label>
                <asp:TextBox runat="server" ID="edoCivil"  CssClass="form-control"></asp:TextBox>
                </div>

                <div class="col-sm-4  m-0 p-2 form-group">
                <asp:Label runat="server" CssClass="" Style="font-weight: bold;">Dirección</asp:Label>
                <asp:TextBox runat="server" ID="direccion"  CssClass="form-control"></asp:TextBox>
                </div>

                <div class="col-sm-4  m-0 p-2 form-group">
                <asp:Label runat="server" CssClass="" Style="font-weight: bold;">Telefono Fijo</asp:Label>
                <asp:TextBox runat="server" ID="telFijo"  CssClass="form-control"></asp:TextBox>
                </div>

                <div class="col-sm-4  m-0 p-2 form-group">
                <asp:Label runat="server" CssClass="" Style="font-weight: bold;">Telefono Móvil</asp:Label>
                <asp:TextBox runat="server" ID="telMovil"  CssClass="form-control"></asp:TextBox>
                </div>

                <div class="col-sm-4  m-0 p-2 form-group">
                <asp:Label runat="server" CssClass="" Style="font-weight: bold;">Correo Electrónico</asp:Label>
                <asp:TextBox runat="server" ID="correo"  CssClass="form-control"></asp:TextBox>
                </div>

                <div class="col-sm-12 p-0 m-0 px-3 mt-2 mb-5 d-flex"><span style="font-size:28px;font-weight: bold;">Formación académica</span></div>

                <div class="col-sm-4  m-0 p-2 form-group">
                <asp:Label runat="server" CssClass="" Style="font-weight: bold;">Licenciatura</asp:Label>
                <asp:TextBox runat="server" ID="licen"  CssClass="form-control"></asp:TextBox>
                </div>

                <div class="col-sm-4  m-0 p-2 form-group">
                <asp:Label runat="server" CssClass="" Style="font-weight: bold;">Universidad/Escuela de Procedencia</asp:Label>
                <asp:TextBox runat="server" ID="uni"  CssClass="form-control"></asp:TextBox>
                </div>

                <div class="col-sm-4  m-0 p-2 form-group">
                <asp:Label runat="server" CssClass="" Style="font-weight: bold;">Último Semestre Cursado</asp:Label>
                <asp:TextBox runat="server" ID="semestre"  CssClass="form-control"></asp:TextBox>
                </div>

                <div class="col-sm-4  m-0 p-2 form-group">
                <asp:Label runat="server" CssClass="" Style="font-weight: bold;">Promedio</asp:Label>
                <asp:TextBox runat="server" ID="porc"  CssClass="form-control"></asp:TextBox>
                </div>

                </asp:Panel>

                </asp:Panel>

        </div>
    </form>
</body>
</html>
