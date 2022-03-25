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


        .area {
            background: #fff;
            display: block;
            height: 120px;
            opacity: 0;
            position: absolute;
            width: 120px;
            border-radius: 50%;
        }


        #area1 {
            left: calc(50% - 380px);
            margin-top: 60px;
        }
        #area2 {
            left: calc(50% - 60px);
            margin-top: 60px;
        }
        #area3 {
            left: calc(50% + 260px);
            margin-top: 60px;
        }


        #area4 {
            left: calc(50% - 220px);
            margin-top: 150px;
        }
        #area5 {
            left: calc(50% + 100px);
            margin-top: 150px;
        }



        #area6 {
            left: calc(50% - 380px);
            margin-top: 280px;
        }
        #area7 {
            left: calc(50% - 60px);
            margin-top: 280px;
        }
        #area8 {
            left: calc(50% + 260px);
            margin-top: 280px;
        }


        #area9 {
            left: calc(50% - 220px);
            margin-top: 375px;
        }
        #area10 {
            left: calc(50% + 100px);
            margin-top: 375px;
        }


        #area11 {
            left: calc(50% - 380px);
            margin-top: 500px;
        }
        #area12 {
            left: calc(50% - 60px);
            margin-top: 500px;
        }
        #area13 {
            left: calc(50% + 260px);
            margin-top: 500px;
        }


        #area14 {
            left: calc(50% - 220px);
            margin-top: 590px;
        }
        #area15 {
            left: calc(50% + 100px);
            margin-top: 590px;
        }

         #area16 {
            left: calc(50% - 60px);
            margin-top: 718PX;
        }

        #area1:hover, #area2:hover, #area3:hover, #area4:hover, #area5:hover, #area5:hover, #area6:hover, #area7:hover, #area8:hover, 
            #area9:hover, #area10:hover, #area11:hover, #area12:hover, #area13:hover, #area14:hover, #area15:hover, #area16:hover {
                opacity: 0.70;
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
                  <asp:Panel runat="server" class="col-sm-2 p-2"></asp:Panel>
                  <asp:Panel runat="server" class="col-sm-2 p-1"><asp:LinkButton runat="server" style="text-decoration:none;color: white;" class="btn btn-dark" CausesValidation="false" OnClick="btnCerrar_Click"  Autopostback ="true">Cerrar Sesión</asp:LinkButton></asp:Panel>
                </asp:Panel>             
            </asp:Panel>
                </asp:Panel>



        <asp:Panel runat="server" Style="width: 100%;">

            <asp:Panel runat="server" style="BACKGROUND-COLOR: #EBECF0;
">

                <asp:Panel runat="server">
                    <map name="mapa">
                        <area shape="circle" id="area1" class="area" coords="100,110,60" href="MenuFiscalia.aspx" title="Fiscalía" alt="Fiscalía" />
                        <area shape="circle" id="area2" class="area" coords="450,110,60" href="Proceso.aspx" title="Poder Judicial" alt="Poder Judicial" />
                        <area shape="circle" id="area3" class="area" coords="800,110,60" href="Proceso.aspx" title="CEAVEM" alt="CEAVEM" />
                        <area shape="circle" id="area4" class="area" coords="260,210,60" href="Proceso.aspx" title="Secretaría de la Defensa Nacional" alt="Secretaría de la Defensa Nacional" />
                        <area shape="circle" id="area5" class="area" coords="620,210,60" href="Proceso.aspx" title="Secretaría General de Gobierno" alt="Secretaría General de Gobierno" />
                        <area shape="circle" id="area6" class="area" coords="100,400,60" href="Proceso.aspx" title="Dirección de Seguridad (Municipales)" alt="Dirección de Seguridad (Municipales)" />
                        <area shape="circle" id="area7" class="area" coords="450,400,60" href="Proceso.aspx" title="Secretaría de Seguridad" alt="Secretaría de Seguridad" />
                        <area shape="circle" id="area8" class="area" coords="800,400,60" href="Proceso.aspx" title="Instituto de la Función Registral" alt="Instituto de la Función Registral" />
                        <area shape="circle" id="area9" class="area" coords="260,510,60" href="Proceso.aspx" title="Colegio de Notarios y Corredores Públicos" alt="Colegio de Notarios y Corredores Públicos" />
                        <area shape="circle" id="area10" class="area" coords="620,510,60" href="Proceso.aspx" title="Oficialias, Mediadoras" alt="Oficialias, Mediadoras" />
                        <area shape="circle" id="area11" class="area" coords="100,650,60" href="Proceso.aspx" title="Secretaría de Relaciones Exteriores" alt="Secretaría de Relaciones Exteriores" />
                        <area shape="circle" id="area12" class="area" coords="450,650,60" href="Proceso.aspx" title="Secretaría de la mujer" alt="Secretaría de la mujer" />
                        <area shape="circle" id="area13" class="area" coords="800,650,60" href="Proceso.aspx" title="Ayuntamientos municipales" alt="Ayuntamientos municipales" />
                        <area shape="circle" id="area14" class="area" coords="260,760,60" href="Proceso.aspx" title="CEMECA" alt="CEMECA" />
                        <area shape="circle" id="area15" class="area" coords="620,760,60" href="Proceso.aspx" title="DIF" alt="DIF" />
                        <area shape="circle" id="area16" class="area" coords="450,780,60" href="Proceso.aspx" title="Secretaría de Movilidad y Comunicaciones" alt="Secretaría de Movilidad y Comunicaciones" />
                    </map>
                    <img src="../img/completo3.png" usemap="#mapa" class="mx-auto d-block" style="width: 900px;" />
                </asp:Panel>


            </asp:Panel>




        </asp:Panel>



    </form>

    <asp:Panel runat="server" Style="width: 100%; height: 50px; background: linear-gradient(-135deg, #9d2424, #c80000);">
    </asp:Panel>
</body>
</html>
