<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MenuPrincipal.aspx.cs" Inherits="OrdenesProteccionPenal.Vistas.MenuPrincipal" %>

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
    </style>
    <form id="form1" runat="server">

        <div class="col-sm-4" id="cerrar-sesion">
            <asp:LinkButton runat="server" ID="cerrar" AutoPostBack="true" class="btn btn-dark"
                Font-Size="20px" OnClick="btnCerrar_Click" Visible="true" Style="font-size: 16px; color: white; margin-left: 257px;">Cerrar Sesión</asp:LinkButton>
        </div>

        <asp:Panel runat="server" Style="width: 100%; height: 100px;">
            <asp:Panel runat="server" Style="display: flex; margin: 0 auto; height: 90px; width: 40%">
                <asp:Image runat="server" ImageUrl="../img/pjem.png" />
                <h2>Poder Judicial del Estado de México</h2>

            </asp:Panel>


        </asp:Panel>

            <asp:Panel runat="server" style="width:100%; height: 30px; background: linear-gradient(-135deg, #9d2424, #c80000);"/>



        <asp:Panel runat="server" Style="width: 100%; padding-top: 50px;">

            <asp:Panel runat="server">

                <asp:ImageMap ID="Buttons" class="mx-auto d-block"
                    ImageUrl="../img/completo.png"
                    Width="900px"
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
                    <asp:CircleHotSpot
                        NavigateUrl="Proceso.aspx"
                        X="450"
                        Y="110"
                        Radius="60"
                        HotSpotMode="Navigate"
                        AlternateText="Secretaría de seguridad"></asp:CircleHotSpot>
                    <asp:CircleHotSpot
                        NavigateUrl="Proceso.aspx"
                        X="800"
                        Y="110"
                        Radius="60"
                        HotSpotMode="Navigate"
                        AlternateText="Secretaría de Movilidad y Comunicaciones"></asp:CircleHotSpot>


                    <asp:CircleHotSpot
                        NavigateUrl="Proceso.aspx"
                        X="260"
                        Y="210"
                        Radius="60"
                        HotSpotMode="Navigate"
                        AlternateText="Secretaría de la Defensa Nacional"></asp:CircleHotSpot>
                    <asp:CircleHotSpot
                        NavigateUrl="Proceso.aspx"
                        X="620"
                        Y="210"
                        Radius="60"
                        HotSpotMode="Navigate"
                        AlternateText="Secretaría General de Gobierno"></asp:CircleHotSpot>


                    <asp:CircleHotSpot
                        NavigateUrl="Proceso.aspx"
                        X="100"
                        Y="400"
                        Radius="60"
                        HotSpotMode="Navigate"
                        AlternateText="Dirección de Seguridad (Municipales)"></asp:CircleHotSpot>
                    <asp:CircleHotSpot
                        NavigateUrl="Proceso.aspx"
                        X="450"
                        Y="400"
                        Radius="60"
                        HotSpotMode="Navigate"
                        AlternateText="CEAVEM"></asp:CircleHotSpot>
                    <asp:CircleHotSpot
                        NavigateUrl="Proceso.aspx"
                        X="800"
                        Y="400"
                        Radius="60"
                        HotSpotMode="Navigate"
                        AlternateText="Instituto de la Función Registral"></asp:CircleHotSpot>




                    <asp:CircleHotSpot
                        NavigateUrl="Proceso.aspx"
                        X="260"
                        Y="510"
                        Radius="60"
                        HotSpotMode="Navigate"
                        AlternateText="Colegio de Notarios y Corredores Públicos"></asp:CircleHotSpot>
                    <asp:CircleHotSpot
                        NavigateUrl="Proceso.aspx"
                        X="620"
                        Y="510"
                        Radius="60"
                        HotSpotMode="Navigate"
                        AlternateText="Oficialias, Mediadoras"></asp:CircleHotSpot>

                    <asp:CircleHotSpot
                        NavigateUrl="Proceso.aspx"
                        X="100"
                        Y="650"
                        Radius="60"
                        HotSpotMode="Navigate"
                        AlternateText="Secretaría de Relaciones Exteriores"></asp:CircleHotSpot>
                    <asp:CircleHotSpot
                        NavigateUrl="Proceso.aspx"
                        X="450"
                        Y="650"
                        Radius="60"
                        HotSpotMode="Navigate"
                        AlternateText="Secretaría de la mujer"></asp:CircleHotSpot>
                    <asp:CircleHotSpot
                        NavigateUrl="Proceso.aspx"
                        X="800"
                        Y="650"
                        Radius="60"
                        HotSpotMode="Navigate"
                        AlternateText="Ayuntamientos municipales"></asp:CircleHotSpot>


                    <asp:CircleHotSpot
                        NavigateUrl="Proceso.aspx"
                        X="260"
                        Y="760"
                        Radius="60"
                        HotSpotMode="Navigate"
                        AlternateText="CEMECA"></asp:CircleHotSpot>
                    <asp:CircleHotSpot
                        NavigateUrl="MenuFiscalia.aspx"
                        X="620"
                        Y="760"
                        Radius="60"
                        HotSpotMode="Navigate"
                        AlternateText="DIF"></asp:CircleHotSpot>


                </asp:ImageMap>



            </asp:Panel>




        </asp:Panel>




    </form>

    <asp:Panel runat="server" style="width:100%; height: 50px; background: linear-gradient(-135deg, #9d2424, #c80000);">


    </asp:Panel>
</body>
</html>
