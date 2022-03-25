<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Proceso.aspx.cs" Inherits="OrdenesProteccionPenal.Vistas.Proceso" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>


    <%--CSS--%>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" />
    <link rel="stylesheet" href="css/Sesion.css" />
    <link rel="stylesheet" href="PNotify/pnotify.custom.min.css" />

    <%--JS--%>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>

    <script runat="server">

        void ButtonsMap_Clicked(object sender, ImageMapEventArgs e)
        {
        }

    </script>
</head>
<body>
    <style>
        .icono-imagen {
            width: 250px;
            height: 250px;
            margin: 0 auto;
        }

        .icono-imagen:hover {
            background-color: gold;
        }

        #area1:hover, #area2:hover {
            opacity: 0.50;
        }
    </style>
    <form id="form1" runat="server">

    

        <asp:Panel runat="server" Style="width: 100%; height: 100px;">
            <asp:Panel runat="server" Style="display: flex; margin: 0 auto; height: 90px; width: 40%">
                <asp:Image runat="server" ImageUrl="../img/pjem.png" />
                <h2>Poder Judicial del Estado de México</h2>

            </asp:Panel>


        </asp:Panel>

            <asp:Panel runat="server" Style="width: 100%; height: 46px; background: linear-gradient(-135deg, #9d2424, #c80000);">
            <asp:Panel runat="server" ID="Menu" class="container">
                <asp:Panel runat="server" class="row col-xl">
                  <asp:Panel runat="server" class="col-sm-2 p-2"></asp:Panel>
                  <asp:Panel runat="server" class="col-sm-2 p-2"></asp:Panel>
                  <asp:Panel runat="server" class="col-sm-2 p-2"></asp:Panel>
                  <asp:Panel runat="server" class="col-sm-2 p-2"></asp:Panel>
                  <asp:Panel runat="server" class="col-sm-2 p-2"><a href="MenuPrincipal.aspx" style="color: white;text-decoration:none;">Regresar al menú</a></asp:Panel>
                  <asp:Panel runat="server" class="col-sm-2 p-1"><asp:LinkButton runat="server" style="text-decoration:none;color: white;" class="btn btn-dark" CausesValidation="false" OnClick="btnCerrar_Click"  Autopostback ="true">Cerrar Sesión</asp:LinkButton></asp:Panel>
                </asp:Panel>             
            </asp:Panel>
                </asp:Panel>



        <asp:Panel runat="server" Style="width: 100%; padding-top: 80px; padding-bottom: 80px;">

            <asp:Panel runat="server">

                <asp:ImageMap ID="Buttons" class="mx-auto d-block"
                    ImageUrl="../img/proceso.png"
                    Width="300px"
                    AlternateText="Navigation buttons"
                    HotSpotMode="NotSet"
                    OnClick="ButtonsMap_Clicked"
                    runat="Server">

                    <asp:CircleHotSpot 
                        NavigateUrl="MenuFiscalia.aspx"
                        X="100"
                        Y="110"
                        Radius="60"
                        HotSpotMode="Navigate"
                        AlternateText="Fiscalía"></asp:CircleHotSpot>

                </asp:ImageMap>



            </asp:Panel>




        </asp:Panel>




    </form>

    <asp:Panel runat="server" style="width:100%; height: 50px; background: linear-gradient(-135deg, #9d2424, #c80000);">


    </asp:Panel>
</body>
</html>
