<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MenuFiscalia.aspx.cs" Inherits="OrdenesProteccionPenal.Vistas.MenuInterno" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Menu Interno</title>
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
        <asp:ScriptManager ID="ajax_login" runat="server"/>
        <div>
            
          <asp:Panel runat="server" Style="width: 100%; height: 100px;">
            <asp:Panel runat="server" Style="display: flex; margin: 0 auto; height: 90px; width: 40%">
                <asp:Image runat="server" ImageUrl="../img/pjem.png" />
                <h2>Poder Judicial del Estado de México</h2>
            </asp:Panel>
        </asp:Panel>

            <asp:Panel runat="server" Style="width: 100%; height: 46px; background: linear-gradient(-135deg, #9d2424, #c80000);">
            <asp:Panel runat="server" ID="Menu" class="container">
                <asp:Panel runat="server" class="row col-xl">
                  <asp:Panel runat="server" class="col-sm-2 p-2"><asp:LinkButton runat="server" style="text-decoration:none;color: white;" CausesValidation="false" OnClick="MostrarSolicitud" Autopostback ="true">Solicitud</asp:LinkButton></asp:Panel>
                  <asp:Panel runat="server" class="col-sm-2 p-2"><asp:LinkButton runat="server" style="text-decoration:none;color: white;" CausesValidation="false" OnClick="MostrarVictima" Autopostback ="true">Víctima</asp:LinkButton></asp:Panel>
                  <asp:Panel runat="server" class="col-sm-2 p-2"><asp:LinkButton runat="server" style="text-decoration:none;color: white;" CausesValidation="false" OnClick="MostrarAgresor" Autopostback ="true">Agresor</asp:LinkButton></asp:Panel>
                  <asp:Panel runat="server" class="col-sm-2 p-2"><asp:LinkButton runat="server" style="text-decoration:none;color: white;" CausesValidation="false" OnClick="MostrarSeguimiento" Autopostback ="true">Seguimiento</asp:LinkButton></asp:Panel>
                  <asp:Panel runat="server" class="col-sm-2 p-2"><a href="MenuPrincipal.aspx" style="color: white;text-decoration:none;">Regresar al menú</a></asp:Panel>
                  <asp:Panel runat="server" class="col-sm-2 p-1"><asp:LinkButton runat="server" style="text-decoration:none;color: white;" class="btn btn-dark" CausesValidation="false" OnClick="btnCerrar_Click"  Autopostback ="true">Cerrar Sesión</asp:LinkButton></asp:Panel>
                </asp:Panel>             
            </asp:Panel>
                </asp:Panel>

             
             
            
            
           <%--//-------------------------------------------------------------------------------- SOLICITUD ------------------------------------------------------------------------------------//--%>
            <asp:Panel runat="server" ID="contenido_orden" ClientIDMode="Static" CssClass="content container p-4" Visible ="true">
                <h3><asp:Label runat="server" CssClass="font-weight-bold">FISCALIA</asp:Label></h3>
        <asp:Panel runat="server" CssClass="row">

            <asp:Panel runat="server" CssClass="form-group col-xl-12 p-0">
                <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="solicitud">Número Solicitud</asp:Label>
                <asp:Label runat="server" ID="solicitud" ClientIDMode="Static" placeholder="00000/0000" CssClass="form-control form-control-sm" />
            </asp:Panel>

            <asp:Panel runat="server" CssClass="form-group col-xl-12 p-0">
                <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="expediente">* Carpeta de Investigación</asp:Label>
                <asp:TextBox runat="server" ID="expediente" ClientIDMode="Static" placeholder="Carpeta de Investigación" CssClass="form-control form-control-sm" />
                <%--<asp:RequiredFieldValidator runat="server" ID="expediente_validator" ErrorMessage="* El nombre(s) no puede estar vació" ControlToValidate="expediente"
                    ForeColor="Red" Font-Size="Small" Font-Italic="true" SetFocusOnError="true" ValidationGroup="validation_solicitud" Display="Dynamic" />--%>
                <%--<asp:RegularExpressionValidator ID="expediente_reg_validator" runat="server" ControlToValidate="expediente" ValidationExpression="\d{1,5}/\d{4}"
                    AutoComplete="true" OnInvalidCssClass="text-danger" ErrorMessage="El expediente no tiene el formato requerido" SetFocusOnError="true"
                    ForeColor="Red" Font-Size="Small" Font-Italic="true" Display="Dynamic" />--%>
            </asp:Panel>

            <%--<asp:Panel runat="server" CssClass="form-group  col-xl-12 p-0">
                <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="juzgado">Juzgado</asp:Label>
                <asp:DropDownList runat="server" ID="juzgado" ClientIDMode="Static" CssClass="form-control custom-select custom-select-sm" AppendDataBoundItems="true" />
                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator2" ErrorMessage="* Selecciona una opción" ControlToValidate="juzgado"
                    InitialValue="" ForeColor="Red" Font-Size="Small" Font-Italic="true" SetFocusOnError="true" />
            </asp:Panel>--%>

            
            <asp:Panel runat="server" ID="aver_panel" Visible="true" CssClass="col-xl-12 p-0">
<%--                <hr />             --%>

                <asp:Panel runat="server" CssClass="form-group ">
                    <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="estado_aver">Estado</asp:Label>
                    <asp:DropDownList runat="server" ID="estado_aver" ClientIDMode="Static" CssClass="form-control custom-select custom-select-sm" AppendDataBoundItems="true">
                        <asp:ListItem Value="15" Text="México"  />
                        <asp:ListItem Value="21" Text="Puebla" />
                        <asp:ListItem Value="24" Text="San Luis Potosi"/>
                        <asp:ListItem Value="9" Text="Ciudad de México"/>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator runat="server" ID="estado_aver_validator" ErrorMessage="* Selecciona una opción" ControlToValidate="estado_aver"
                        InitialValue="" ForeColor="Red" Font-Size="Small" Font-Italic="true" SetFocusOnError="true" />
                </asp:Panel>

                <asp:Panel runat="server" CssClass="form-group ">
                    <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="municipio_aver">Municipio</asp:Label>
                    <asp:DropDownList runat="server" ID="municipio_aver" ClientIDMode="Static" CssClass="form-control custom-select custom-select-sm" AppendDataBoundItems="true">
                        <asp:ListItem Value="" Text="--- Municipio ---" Selected="True" />
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator runat="server" ID="municipio_aver_validator" ClientIDMode="Static" ErrorMessage="* Selecciona una opción" ControlToValidate="municipio_aver"
                        InitialValue="" ForeColor="Red" Font-Size="Small" Font-Italic="true" SetFocusOnError="true" />
                </asp:Panel>

                <asp:Panel runat="server" CssClass="form-group ">
                    <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="delitos">Delito</asp:Label>
                    <asp:DropDownList runat="server" ID="delitos" ClientIDMode="Static" CssClass="form-control custom-select custom-select-sm" AppendDataBoundItems="true">
                        <asp:ListItem Value="" Text="--- Selecciona Delito ---" Selected="True" />
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator runat="server" ID="juicios_validator" ClientIDMode="Static" ErrorMessage="* Selecciona una opción" ControlToValidate="delitos"
                        InitialValue="" ForeColor="Red" Font-Size="Small" Font-Italic="true" SetFocusOnError="true" ValidationGroup="validation_solicitud"/>
                </asp:Panel>

                
            </asp:Panel>

   

           

            <asp:Panel runat="server" ID="EspecOtro" Visible="false" CssClass="form-group col-xl-12 p-0">
                <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="espec_otro">* Especifique Medida de Protección</asp:Label>
                <asp:TextBox runat="server" ID="espec_otro" ClientIDMode="Static" placeholder="Especifique Medida de Protección" CssClass="form-control custom-select-sm" />
                <asp:RequiredFieldValidator runat="server" ID="espec_otro_validator" ErrorMessage="* Especifique Medida de Protección no puede estar vacio" ControlToValidate="espec_otro"
                    ForeColor="Red" Font-Size="Small" Font-Italic="true" SetFocusOnError="true" />
            </asp:Panel>

            <asp:Panel runat="server" CssClass="row col-xl-12 p-0">

                <asp:Panel runat="server" CssClass="form-group col-xl-6">
                    <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="emision">* Fecha Emisión</asp:Label>
                    <asp:Panel runat="server" ClientIDMode="AutoID" CssClass="input-group">
                        <asp:TextBox ID="emision" ClientIDMode="Static" runat="server" placeholder="dd/MM/yyyy hh:mm:ss" CssClass="form-control form-control-sm" />
                        <asp:Label runat="server" CssClass="input-group-append">
                            <asp:Label runat="server" ID="emision_icon" ClientIDMode="Static" CssClass="input-group-text bg-danger">
                                <asp:Label runat="server" CssClass="text-white far fa-calendar-alt"/>
                            </asp:Label>
                        </asp:Label>
                    </asp:Panel>
                    <axT:MaskedEditExtender ID="emision_extender" runat="server" TargetControlID="emision" MaskType="Date" Mask="99/99/9999"
                        MessageValidatorTip="true" AutoComplete="true" OnInvalidCssClass="text-danger" />
                    <axT:MaskedEditValidator ID="emision_validator" runat="server" ControlExtender="emision_extender" ControlToValidate="emision" IsValidEmpty="false"
                        EmptyValueMessage="* Fecha emisión no puede estar vació" InvalidValueMessage="* Fecha no valida" ForeColor="Red" Font-Size="Small" Font-Italic="true" Display="Dynamic" />
                    <axT:CalendarExtender runat="server" TargetControlID="emision" Format="dd/MM/yyyy" PopupButtonID="emision_icon"/>
                </asp:Panel>

                <asp:Panel runat="server" CssClass="form-group col-xl-6">
                    <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="inicio">* Fecha Inicio</asp:Label>
                    <asp:Panel runat="server" ClientIDMode="AutoID" CssClass="input-group">
                        <asp:TextBox ID="inicio" ClientIDMode="Static" runat="server" placeholder="dd/MM/yyyy hh:mm:ss" CssClass="form-control form-control-sm" />
                        <asp:Label runat="server" CssClass="input-group-append">
                            <asp:Label runat="server" ID="inicio_icon" ClientIDMode="Static" CssClass="input-group-text bg-danger">
                                <asp:Label runat="server" CssClass="text-white far fa-calendar-alt"/>
                            </asp:Label>
                        </asp:Label>
                    </asp:Panel>
                    <axT:MaskedEditExtender ID="inicio_extender" runat="server" TargetControlID="inicio" MaskType="DateTime" Mask="99/99/9999 99:99:99"
                        MessageValidatorTip="true" AutoComplete="true" OnInvalidCssClass="text-danger" />
                    <axT:MaskedEditValidator ID="inicio_validator" runat="server" ControlExtender="inicio_extender" ControlToValidate="inicio" IsValidEmpty="false"
                        EmptyValueMessage="* Fecha inicio no puede estar vació" InvalidValueMessage="Fecha no valida" ForeColor="Red" Font-Size="Small" Font-Italic="true" Display="Dynamic" />
                    <axT:CalendarExtender runat="server" TargetControlID="inicio" Format="dd/MM/yyyy hh:mm:ss" PopupButtonID="inicio_icon" />
                </asp:Panel>

                <asp:Panel runat="server" CssClass="form-group col-xl-6" ID="panel_fecha_fin">
                    <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="fin">Fecha Fin</asp:Label>
                    <asp:Panel runat="server" ClientIDMode="AutoID" CssClass="input-group">
                        <asp:TextBox ID="fin" ClientIDMode="Static" runat="server" placeholder="dd/MM/yyyy hh:mm:ss" CssClass="form-control form-control-sm" />
                        <asp:Label runat="server" CssClass="input-group-append">
                            <asp:Label runat="server" ID="fin_icon" ClientIDMode="Static" CssClass="input-group-text bg-danger">
                                <asp:Label runat="server" CssClass="text-white far fa-calendar-alt"/>
                            </asp:Label>
                        </asp:Label>
                    </asp:Panel>
                    <axT:MaskedEditExtender ID="fin_extender" runat="server" TargetControlID="fin" MaskType="DateTime" Mask="99/99/9999 99:99:99"
                        MessageValidatorTip="true" AutoComplete="true" OnInvalidCssClass="text-danger"/>
                    <axT:MaskedEditValidator ID="fin_validator" runat="server" ControlExtender="fin_extender" ControlToValidate="fin" IsValidEmpty="false" EmptyValueMessage="* Fecha emisión no puede estar vació"
                        InvalidValueMessage="* Fecha no valida" ForeColor="Red" Font-Size="Small" Font-Italic="true" Display="Dynamic" />
                    <axT:CalendarExtender runat="server" TargetControlID="fin" Format="dd/MM/yyyy hh:mm:ss" PopupButtonID="fin_icon" />

                </asp:Panel>

                <asp:Panel runat="server" CssClass="form-group col-xl-6">
                    <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="emision">* Fecha Ejecución</asp:Label>
                    <asp:Panel runat="server" ClientIDMode="AutoID" CssClass="input-group">
                        <asp:TextBox ID="TextBox1" ClientIDMode="Static" runat="server" placeholder="dd/MM/yyyy hh:mm:ss" CssClass="form-control form-control-sm" />
                        <asp:Label runat="server" CssClass="input-group-append">
                            <asp:Label runat="server" ID="Label1" ClientIDMode="Static" CssClass="input-group-text bg-danger">
                                <asp:Label runat="server" CssClass="text-white far fa-calendar-alt"/>
                            </asp:Label>
                        </asp:Label>
                    </asp:Panel>
                    <axT:MaskedEditExtender ID="MaskedEditExtender1" runat="server" TargetControlID="emision" MaskType="Date" Mask="99/99/9999"
                        MessageValidatorTip="true" AutoComplete="true" OnInvalidCssClass="text-danger" />
                    <axT:MaskedEditValidator ID="MaskedEditValidator1" runat="server" ControlExtender="emision_extender" ControlToValidate="emision" IsValidEmpty="false"
                        EmptyValueMessage="* Fecha emisión no puede estar vació" InvalidValueMessage="* Fecha no valida" ForeColor="Red" Font-Size="Small" Font-Italic="true" Display="Dynamic" />
                    <axT:CalendarExtender runat="server" TargetControlID="emision" Format="dd/MM/yyyy" PopupButtonID="emision_icon"/>
                </asp:Panel>

                <asp:CheckBox runat="server" ID="situacion_riesgo" ClientIDMode="Static" CssClass="form-group custom-control custom-switch col-xl-6" 
                    AutoPostBack="true" Text="Hasta que cese la situación de riesgo" name="riesgo" />

            </asp:Panel>

             <asp:Panel runat="server" CssClass="form-group col-xl-12 p-0">
                <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="medidas_protec">Medidas de protección</asp:Label>
                <asp:CheckBoxList runat="server" ID="medidas_protec" CssClass="checkboxlist form-control"  AutoPostBack="true" />
            </asp:Panel>

           <%-- <asp:CheckBox runat="server" ID="juicio" ClientIDMode="Static" CssClass="form-group custom-control custom-switch col-xl-12" 
                AutoPostBack="true" Text="¿La orden de protección está relacionada con un asunto penal?" name="juicio" />--%>

            <asp:Panel runat="server" ID="juicio_panel" Visible="false" CssClass="col-xl-12 p-0">

                <hr />
                <h4>Asunto</h4>

                <asp:Panel runat="server" CssClass="form-group  ">
                    <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="estado_juicio">Estado</asp:Label>
                    <asp:DropDownList runat="server" ID="estado_juicio" ClientIDMode="Static" CssClass="form-control custom-select custom-select-sm" AppendDataBoundItems="true">
                        <asp:ListItem Value="15" Text="México"  />
                        <asp:ListItem Value="21" Text="Puebla"  />
                        <asp:ListItem Value="24" Text="San Luis Potosi"  />
                        <asp:ListItem Value="9" Text="Ciudad de México"/>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator runat="server" ID="estado_validator" ErrorMessage="* Selecciona una opción" ControlToValidate="estado_juicio"
                        InitialValue="" ForeColor="Red" Font-Size="Small" Font-Italic="true" SetFocusOnError="true" />
                </asp:Panel>

                <asp:Panel runat="server" CssClass="form-group ">
                    <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="municipio_juicio">Municipio</asp:Label>
                    <asp:DropDownList runat="server" ID="municipio_juicio" ClientIDMode="Static" CssClass="form-control custom-select custom-select-sm" AppendDataBoundItems="true">
                        <asp:ListItem Value="" Text="--- Municipio ---" Selected="True" />
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator runat="server" ID="municipio_validator" ClientIDMode="Static" ErrorMessage="* Selecciona una opción" ControlToValidate="municipio_juicio"
                        InitialValue="" ForeColor="Red" Font-Size="Small" Font-Italic="true" SetFocusOnError="true" />
                </asp:Panel>

                <asp:Panel runat="server" CssClass="form-group ">
                    <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="exp_juicio">Número de causa o expediente</asp:Label>
                    <asp:TextBox runat="server" ID="exp_juicio" ClientIDMode="Static" placeholder="00000/0000" CssClass="form-control custom-select-sm" />
                    <asp:RequiredFieldValidator runat="server" ID="expjuicio_validator" ErrorMessage="* Expediente no puede estar vació" ControlToValidate="exp_juicio"
                        ForeColor="Red" Font-Size="Small" Font-Italic="true" SetFocusOnError="true" Display="Dynamic" />
                    <asp:RegularExpressionValidator runat="server" ControlToValidate="exp_juicio" ValidationExpression="\d{1,5}/\d{4}"
                        AutoComplete="true" OnInvalidCssClass="text-danger" ErrorMessage="El expediente no tiene el formato requerido" SetFocusOnError="true"
                        ForeColor="Red" Font-Size="Small" Font-Italic="true" Display="Dynamic" />
                </asp:Panel>

            </asp:Panel>

            <%--<asp:CheckBox runat="server" ID="aver" ClientIDMode="Static" CssClass="form-group custom-control custom-switch col-xl-12" 
                AutoPostBack="true" Text="¿La orden de protección está relacionada con una carpeta de investigación?" name="aver" />--%>



        </asp:Panel>

    </asp:Panel>
           <%--//-------------------------------------------------------------------------------- SOLICITUD ------------------------------------------------------------------------------------//--%>
            

            <%--//-------------------------------------------------------------------------------- VICTIMAS ------------------------------------------------------------------------------------//--%>
            <asp:Panel runat="server" ID="contenido_victima" ClientIDMode="Static" CssClass="content container p-4" Visible="false" >
            <asp:Panel runat="server" CssClass="row">
                <asp:Panel runat="server" ID="contenido" ClientIDMode="Static" CssClass="p-2" Visible="true">
            <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="tuto"><h3>Domicilio</h3></asp:Label>

            <div class="row p-0 m-3">
                <asp:Panel runat="server" CssClass="form-group col-sm-4  m-0 p-2 form-group">
                    <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="pais">* País</asp:Label>
                    <asp:DropDownList runat="server" ID="pais" ClientIDMode="Static" CssClass="form-control custom-select" AppendDataBoundItems="true">
                        <asp:ListItem Value="" Text="--- País ---" Selected="True" />
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator runat="server" ID="pais_validator" ClientIDMode="Static" ErrorMessage="* Selecciona una opción de país" ControlToValidate="pais"
                        InitialValue="" ForeColor="Red" Font-Size="Small" Font-Italic="true" SetFocusOnError="true"/>
                </asp:Panel>

                <asp:Panel runat="server" CssClass="form-group col-sm-4  m-0 p-2 form-group">
                    <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="edo">* Estado</asp:Label>
                    <asp:DropDownList runat="server" ID="edo" ClientIDMode="Static" CssClass="form-control custom-select" AppendDataBoundItems="true">
                        <asp:ListItem Value="15" Text="México" Selected="True" />
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" ClientIDMode="Static" ErrorMessage="* Selecciona una opción de estado" ControlToValidate="edo"
                        InitialValue="" ForeColor="Red" Font-Size="Small" Font-Italic="true" SetFocusOnError="true"/>
                </asp:Panel>

                <asp:Panel runat="server" CssClass="form-group col-sm-4  m-0 p-2 form-group">
                    <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="mun">* Municipio</asp:Label>
                    <asp:DropDownList runat="server" ID="mun" ClientIDMode="Static" CssClass="form-control custom-select" AppendDataBoundItems="true">
                        <asp:ListItem Value="" Text="--- Municipio ---" Selected="True" />
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator2" ClientIDMode="Static" ErrorMessage="* Selecciona una opción de municipio" ControlToValidate="mun"
                        InitialValue="" ForeColor="Red" Font-Size="Small" Font-Italic="true" SetFocusOnError="true"/>
                </asp:Panel>

                <asp:Panel runat="server" CssClass="form-group col-sm-4  m-0 p-2 form-group">
                    <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="loc">* Localidad</asp:Label>
                    <asp:DropDownList runat="server" ID="loc" ClientIDMode="Static" CssClass="form-control custom-select" AppendDataBoundItems="true">
                        <asp:ListItem Value="" Text="--- Localidad ---" Selected="True" />
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator runat="server" ID="localidad_validator" ClientIDMode="Static" ErrorMessage="* Selecciona una opción de localidad" ControlToValidate="loc"
                        InitialValue="" ForeColor="Red" Font-Size="Small" Font-Italic="true" SetFocusOnError="true"/>
                </asp:Panel>

                <asp:Panel runat="server" CssClass="form-group col-sm-4  m-0 p-2 form-group">
                    <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="calle">* Calle</asp:Label>
                    <asp:TextBox runat="server" ID="calle" ClientIDMode="Static" placeholder="Calle" CssClass="form-control" />
                    <asp:RequiredFieldValidator runat="server" ID="calle_validator" ClientIDMode="Static" ErrorMessage="* ingrese información de calle" ControlToValidate="calle"
                        InitialValue="" ForeColor="Red" Font-Size="Small" Font-Italic="true" SetFocusOnError="true"/>
                </asp:Panel>

                <asp:Panel runat="server" CssClass="form-group col-sm-4  m-0 p-2 form-group">
                    <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="numE">Número Exterior</asp:Label>
                    <asp:TextBox runat="server" ID="numE" ClientIDMode="Static" placeholder="Número Exterior" CssClass="form-control" />
                    <asp:RequiredFieldValidator runat="server" ID="numeE_validator" ClientIDMode="Static" ErrorMessage="* ingrese información de Número Exterior" ControlToValidate="numE"
                      InitialValue="" ForeColor="Red" Font-Size="Small" Font-Italic="true" SetFocusOnError="true"  Display="Dynamic"/>
                    <asp:RegularExpressionValidator ID="numE_reg_validator" runat="server" ControlToValidate="numE" ValidationExpression="^([0-9])*$"
                    MessageValidatorTip="true" AutoComplete="true" OnInvalidCssClass="text-danger" ErrorMessage="El dato a ingresar debe ser solo número"
                    ForeColor="Red" Font-Size="Small" Font-Italic="true" SetFocusOnError="true"  Display="Dynamic"/>
                </asp:Panel>

                <asp:Panel runat="server" CssClass="form-group col-sm-4  m-0 p-2 form-group">
                    <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="numI">Número Interior</asp:Label>
                    <asp:TextBox runat="server" ID="numI" ClientIDMode="Static" placeholder="Número Interior" CssClass="form-control" />
                    <%--<asp:RequiredFieldValidator runat="server" ID="numI_validator" ClientIDMode="Static" ErrorMessage="* ingrese información de Numero Interior" ControlToValidate="numI"
                        InitialValue="" ForeColor="Red" Font-Size="Small" Font-Italic="true" />--%>
                </asp:Panel>

                <asp:Panel runat="server" CssClass="form-group col-sm-4  m-0 p-2 form-group">
                    <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="cp">* Código Postal</asp:Label>
                    <asp:TextBox runat="server" ID="cp" ClientIDMode="Static" placeholder="Código Postal" CssClass="form-control" />
                    <asp:RequiredFieldValidator runat="server" ID="cp_validator" ClientIDMode="Static" ErrorMessage="* ingrese información código postal" ControlToValidate="cp"
                        InitialValue="" ForeColor="Red" Font-Size="Small" Font-Italic="true" SetFocusOnError="true"  Display="Dynamic"/>
                    <asp:RegularExpressionValidator ID="cp_validator_exp" runat="server" ControlToValidate="cp" ValidationExpression="^([0-9])*$"
                    MessageValidatorTip="true" AutoComplete="true" OnInvalidCssClass="text-danger" ErrorMessage="* El dato a ingresar debe ser solo número"
                    ForeColor="Red" Font-Size="Small" Font-Italic="true" SetFocusOnError="true"  Display="Dynamic"/>
                </asp:Panel>

                <asp:Panel runat="server" CssClass="form-group col-sm-4  m-0 p-2 form-group">
                    <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="tel">* Telefono</asp:Label>
                    <asp:TextBox runat="server" ID="tel" ClientIDMode="Static" placeholder="Observaciones" CssClass="form-control" />
                    <asp:RequiredFieldValidator runat="server" ID="tel_validator" ClientIDMode="Static" ErrorMessage="* ingrese telefono de la victima" ControlToValidate="tel"
                        InitialValue="" ForeColor="Red" Font-Size="Small" Font-Italic="true" SetFocusOnError="true"  Display="Dynamic"/>
                    <asp:RegularExpressionValidator ID="tel_validator_exp" runat="server" ControlToValidate="numE" ValidationExpression="^([0-9])*$"
                    MessageValidatorTip="true" AutoComplete="true" OnInvalidCssClass="text-danger" ErrorMessage="* El dato a ingresar debe ser solo número"
                    ForeColor="Red" Font-Size="Small" Font-Italic="true" SetFocusOnError="true"  Display="Dynamic"/>
                </asp:Panel>

                <asp:Panel runat="server" CssClass="form-group col-sm-4  m-0 p-2 form-group">
                    <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="obs">* Observaciones</asp:Label>
                    <asp:TextBox runat="server" ID="obs" ClientIDMode="Static" placeholder="Observaciones" CssClass="form-control" />
                    <asp:RequiredFieldValidator runat="server" ID="obs_validator" ClientIDMode="Static" ErrorMessage="* ingrese información" ControlToValidate="obs"
                        InitialValue="" ForeColor="Red" Font-Size="Small" Font-Italic="true" SetFocusOnError="true"/>
                </asp:Panel>
            </div>

            <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="tuto"><h3>* Expediente Victima</h3></asp:Label>
            <div class="row p-0 m-3">
                <asp:Panel runat="server" CssClass="form-group col-sm-4  m-0 p-2 form-group">
                    <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="pate">* Apellido Paterno</asp:Label>
                    <asp:TextBox runat="server" ID="pate" ClientIDMode="Static" placeholder="Paterno" CssClass="form-control" />
                    <asp:RequiredFieldValidator runat="server" ID="pate_validator" ClientIDMode="Static" ErrorMessage="* Ingrese Apellido Paterno" ControlToValidate="loc"
                        InitialValue="" ForeColor="Red" Font-Size="Small" Font-Italic="true" SetFocusOnError="true"/>
                </asp:Panel>

                <asp:Panel runat="server" CssClass="form-group col-sm-4  m-0 p-2 form-group">
                    <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="mate">* Apellido Materno</asp:Label>
                    <asp:TextBox runat="server" ID="mate" ClientIDMode="Static" placeholder="Materno" CssClass="form-control" />
                    <asp:RequiredFieldValidator runat="server" ID="mate_validator" ClientIDMode="Static" ErrorMessage="* Ingrese Apellido Materno" ControlToValidate="mate"
                        InitialValue="" ForeColor="Red" Font-Size="Small" Font-Italic="true" SetFocusOnError="true"/>
                </asp:Panel>

                <asp:Panel runat="server" CssClass="form-group col-sm-4  m-0 p-2 form-group">
                    <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="nom">* Nombre</asp:Label>
                    <asp:TextBox runat="server" ID="nom" ClientIDMode="Static" placeholder="Nombre" CssClass="form-control" />
                    <asp:RequiredFieldValidator runat="server" ID="nom_validator" ClientIDMode="Static" ErrorMessage="* Ingrese Nombre" ControlToValidate="nom"
                        InitialValue="" ForeColor="Red" Font-Size="Small" Font-Italic="true" SetFocusOnError="true"/>
                </asp:Panel>


                <asp:Panel runat="server" CssClass="form-group col-sm-4  m-0 p-2 form-group">
                    <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="fecha">* Fecha Nacimiento</asp:Label>
                    <asp:Panel runat="server" ClientIDMode="AutoID" CssClass="input-group">
                        <asp:TextBox ID="fecha" ClientIDMode="Static" runat="server" placeholder="dd/MM/yyyy" CssClass="form-control" />
                        <asp:Label runat="server" CssClass="input-group-append">
                            <asp:Label runat="server" ID="nac_icon" ClientIDMode="Static" CssClass="input-group-text bg-danger">
                                <asp:Label runat="server" CssClass="text-white far fa-calendar-alt"/>
                            </asp:Label>
                        </asp:Label>
                    </asp:Panel>
                    <axT:MaskedEditExtender ID="nac_extender" runat="server" TargetControlID="fecha" MaskType="Date" Mask="99/99/9999"
                        MessageValidatorTip="true" AutoComplete="true" OnInvalidCssClass="text-danger"/>
                    <axT:MaskedEditValidator ID="naci_validator" runat="server" ControlExtender="nac_extender" ControlToValidate="fecha" IsValidEmpty="false"
                        EmptyValueMessage="* Fecha nacimiento no puede estar vació" InvalidValueMessage="* Fecha no valida" ForeColor="Red" Font-Size="Small" Font-Italic="true" SetFocusOnError="true" Display="Dynamic"/>
                    <axT:CalendarExtender runat="server" TargetControlID="fecha" Format="dd/MM/yyyy" PopupButtonID="nac_icon" />
                </asp:Panel>


                <asp:Panel runat="server" CssClass="form-group col-sm-4  m-0 p-2 form-group">
                    <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="curp">* Curp</asp:Label>
                    <asp:TextBox runat="server" ID="curp" ClientIDMode="Static" placeholder="Curp" CssClass="form-control" />
                    <asp:RequiredFieldValidator runat="server" ID="curp_validator" ClientIDMode="Static" ErrorMessage="* Ingrese curp" ControlToValidate="curp" 
                        InitialValue="" ForeColor="Red" Font-Size="Small" Font-Italic="true" SetFocusOnError="true"  Display="Dynamic"/>
                    <asp:RegularExpressionValidator ID="curp_validator_exp" runat="server" ControlToValidate="curp" 
                        ValidationExpression="^[A-Z][AEIOUX][A-Z]{2}[0-9][0-9](0[1-9]|1[0-2])(0[1-9]|(1|2)[0-9]|3[0-1])[H|M](AS|BS|CL|CS|DF|GT|HG|MC|MS|NL|PL|QR|SL|TC|TL|YN|BC|CC|CM|CH|DG|GR|JC|MN|NT|OC|QT|SP|SR|TS|VZ|ZS|NE)[B-DF-HJ-NP-TV-Z]{3}[0-1A-Z][0-9]$"
                    MessageValidatorTip="true" AutoComplete="true" OnInvalidCssClass="text-danger" ErrorMessage="El curp debe tener el formato correcto"
                    ForeColor="Red" Font-Size="Small" Font-Italic="true" SetFocusOnError="true"  Display="Dynamic"/>
                </asp:Panel>

                <asp:Panel runat="server" CssClass="form-group col-sm-4  m-0 p-2 form-group">
                    <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="paisNac">* País Nacimiento</asp:Label>
                    <asp:DropDownList runat="server" ID="paisNac" ClientIDMode="Static" CssClass="form-control custom-select" AppendDataBoundItems="true">
                        <asp:ListItem Value="" Text="--- País ---" Selected="True" />
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator runat="server" ID="paisNac_validator" ClientIDMode="Static" ErrorMessage="* Selecciona una opción de país de nacimiento" ControlToValidate="paisNac"
                        InitialValue="" ForeColor="Red" Font-Size="Small" Font-Italic="true" SetFocusOnError="true"/>
                </asp:Panel>

                <asp:Panel runat="server" CssClass="form-group col-sm-4  m-0 p-2 form-group">
                    <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="edoNac">* Estado Nacimiento</asp:Label>
                    <asp:DropDownList runat="server" ID="edoNac" ClientIDMode="Static" CssClass="form-control custom-select" AppendDataBoundItems="true">
                        <asp:ListItem Value="" Text="--- Estado ---" Selected="True" />
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator runat="server" ID="edoNac_validator" ClientIDMode="Static" ErrorMessage="* Selecciona una opción de estado de nacimiento" ControlToValidate="edoNac"
                        InitialValue="" ForeColor="Red" Font-Size="Small" Font-Italic="true" SetFocusOnError="true"/>
                </asp:Panel>

                <asp:Panel runat="server" CssClass="form-group col-sm-4  m-0 p-2 form-group">
                    <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="sex">* Sexo</asp:Label>
                    <asp:DropDownList runat="server" ID="sex" ClientIDMode="Static" CssClass="form-control custom-select" AppendDataBoundItems="true">
                        <asp:ListItem Value="" Text="--- Sexo ---" Selected="True" />
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator runat="server" ID="sex_validator" ClientIDMode="Static" ErrorMessage="* Selecciona una opción de sexo" ControlToValidate="sex"
                        InitialValue="" ForeColor="Red" Font-Size="Small" Font-Italic="true" SetFocusOnError="true"/>
                </asp:Panel>

            </div>

            <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="tuto"><h3>Perfil Víctima</h3></asp:Label>
            <div class="row p-0 m-3">
                <asp:Panel runat="server" CssClass="form-group col-sm-4  m-0 p-2 form-group">
                    <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="edoCivil">* Estado Civil</asp:Label>
                    <asp:DropDownList runat="server" ID="edoCivil" ClientIDMode="Static" CssClass="form-control custom-select" AppendDataBoundItems="true">
                        <asp:ListItem Value="" Text="--- Estado Civil ---" Selected="True" />
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator runat="server" ID="edoCivil_validator" ClientIDMode="Static" ErrorMessage="* Selecciona una opción de estado civil" ControlToValidate="edoCivil"
                        InitialValue="" ForeColor="Red" Font-Size="Small" Font-Italic="true" SetFocusOnError="true"/>
                </asp:Panel>

                <asp:Panel runat="server" CssClass="form-group col-sm-4  m-0 p-2 form-group">
                    <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="vive">* Con Quien Vive</asp:Label>
                    <asp:TextBox runat="server" ID="vive" ClientIDMode="Static" placeholder="Con Quien Vive" CssClass="form-control" />
                    <asp:RequiredFieldValidator runat="server" ID="vive_validator" ClientIDMode="Static" ErrorMessage="* Ingrese datos de vivienda" ControlToValidate="vive"
                        InitialValue="" ForeColor="Red" Font-Size="Small" Font-Italic="true" SetFocusOnError="true"/>
                </asp:Panel>

                <asp:Panel runat="server" CssClass="form-group col-sm-4  m-0 p-2 form-group">
                    <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="edadVic">* Edad</asp:Label>
                    <asp:TextBox runat="server" ID="edadVic" ClientIDMode="Static" placeholder="Edad" CssClass="form-control" />
                    <asp:RequiredFieldValidator runat="server" ID="edadVic_validator" ClientIDMode="Static" ErrorMessage="* Ingrese edad de la Víctima" ControlToValidate="edadVic"
                      InitialValue="" ForeColor="Red" Font-Size="Small" Font-Italic="true" SetFocusOnError="true"  Display="Dynamic"/>
                    <asp:RegularExpressionValidator ID="edadVic_validator_exp" runat="server" ControlToValidate="edadVic" ValidationExpression="^([0-9])*$"
                    MessageValidatorTip="true" AutoComplete="true" OnInvalidCssClass="text-danger" ErrorMessage="El dato a ingresar debe ser solo número"
                    ForeColor="Red" Font-Size="Small" Font-Italic="true" SetFocusOnError="true"  Display="Dynamic"/>
                </asp:Panel>

                <asp:Panel runat="server" CssClass="form-group col-sm-4  m-0 p-2 form-group">
                    <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="inter">* Es Interdicto</asp:Label>
                    <%--<asp:TextBox runat="server" ID="inter" ClientIDMode="Static" placeholder="Es Interdicto" CssClass="form-control" />--%>
                    <asp:DropDownList runat="server" ID="inter" ClientIDMode="Static" CssClass="form-control custom-select" AppendDataBoundItems="true"  AutoPostBack="true">
                        <asp:ListItem Value="" Text="--- Es Interdicto ---" Selected="True" />
                        <asp:ListItem Value="1" Text="Si" />
                        <asp:ListItem Value="2" Text="No" />
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator runat="server" ID="inter_validator" ClientIDMode="Static" ErrorMessage="* Selecciona una opción" ControlToValidate="inter"
                        InitialValue="" ForeColor="Red" Font-Size="Small" Font-Italic="true" SetFocusOnError="true"/>
                </asp:Panel>

                <asp:Panel runat="server" CssClass="form-group col-sm-4  m-0 p-2 form-group">
                    <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="habEsp">* Habla Español</asp:Label>
                    <asp:DropDownList runat="server" ID="habEsp" ClientIDMode="Static" CssClass="form-control custom-select" AppendDataBoundItems="true">
                        <asp:ListItem Value="" Text="--- Habla Español ---" Selected="True" />
                        <asp:ListItem Value="1" Text="Si" />
                        <asp:ListItem Value="2" Text="No" />
                        <%--<asp:ListItem Value="3" Text="N/S" />--%>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator runat="server" ID="habEsp_validator" ClientIDMode="Static" ErrorMessage="* Selecciona una opción" ControlToValidate="habEsp"
                        InitialValue="" ForeColor="Red" Font-Size="Small" Font-Italic="true" SetFocusOnError="true"/>
                </asp:Panel>

                <asp:Panel runat="server" CssClass="form-group col-sm-4  m-0 p-2 form-group">
                    <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="habExt">* Habla Extranjera</asp:Label>
                    <asp:DropDownList runat="server" ID="habExt" ClientIDMode="Static" CssClass="form-control custom-select" AppendDataBoundItems="true"  AutoPostBack="true">
                        <asp:ListItem Value="" Text="--- Habla Extranjera ---" Selected="True" />
                        <asp:ListItem Value="1" Text="Si" />
                        <asp:ListItem Value="2" Text="No" />
                        <%--<asp:ListItem Value="3" Text="N/S" />--%>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator runat="server" ID="habExt_validator" ClientIDMode="Static" ErrorMessage="* Selecciona una opción" ControlToValidate="habExt"
                        InitialValue="" ForeColor="Red" Font-Size="Small" Font-Italic="true" SetFocusOnError="true"/>
                </asp:Panel>

                <asp:Panel runat="server" id="Panel_descExt" Visible="false" CssClass="form-group col-sm-4  m-0 p-2 form-group">
                    <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="descExt">Descripción Extranjera</asp:Label>
                    <asp:TextBox runat="server" ID="descExt" ClientIDMode="Static" placeholder="Descripción Extranjera" CssClass="form-control" />
                    <asp:RequiredFieldValidator runat="server" ID="descExt_validator" ClientIDMode="Static" ErrorMessage="* Ingrese una opción" ControlToValidate="descExt"
                        InitialValue="" ForeColor="Red" Font-Size="Small" Font-Italic="true" SetFocusOnError="true"/>
                </asp:Panel>

                <asp:Panel runat="server" CssClass="form-group col-sm-4  m-0 p-2 form-group">
                    <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="perGpoEtn">* Pertenece Grupo Etnico</asp:Label>
                    <asp:DropDownList runat="server" ID="perGpoEtn" ClientIDMode="Static" CssClass="form-control custom-select" AppendDataBoundItems="true"  AutoPostBack="true">
                        <asp:ListItem Value="" Text="--- Pertenece Grupo Étnico ---" Selected="True" />
                        <asp:ListItem Value="1" Text="Si" />
                        <asp:ListItem Value="2" Text="No" />
                        <%--<asp:ListItem Value="3" Text="N/S" />--%>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator runat="server" ID="perGpoEtn_validator" ClientIDMode="Static" ErrorMessage="* Selecciona una opción" ControlToValidate="perGpoEtn"
                        InitialValue="" ForeColor="Red" Font-Size="Small" Font-Italic="true" SetFocusOnError="true"/>
                </asp:Panel>

                <asp:Panel runat="server" id="panel_perGpoEtnOtro" Visible="false" CssClass="form-group col-sm-4  m-0 p-2 form-group">
                    <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="perGpoEtnOtro">Otro Grupo Etnico</asp:Label>
                    <asp:DropDownList runat="server" ID="perGpoEtnOtro" ClientIDMode="Static" CssClass="form-control custom-select" AppendDataBoundItems="true">
                        <asp:ListItem Value="" Text="-- Seleccione --" Selected="True" />
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator runat="server" ID="perGpoEtnOtro_validator" ClientIDMode="Static" ErrorMessage="* Ingrese otro grupo Etnico" ControlToValidate="perGpoEtnOtro"
                        InitialValue="" ForeColor="Red" Font-Size="Small" Font-Italic="true" SetFocusOnError="true"/>
                </asp:Panel>

                <asp:Panel runat="server" CssClass="form-group col-sm-4  m-0 p-2 form-group">
                    <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="habInd">Habla Indigena</asp:Label>
                    <asp:DropDownList runat="server" ID="habInd" ClientIDMode="Static" CssClass="form-control custom-select" AppendDataBoundItems="true"  AutoPostBack="true">
                        <asp:ListItem Value="" Text="--- Habla Indigena ---" Selected="True" />
                        <asp:ListItem Value="1" Text="Si" />
                        <asp:ListItem Value="2" Text="No" />
                        <%--<asp:ListItem Value="3" Text="N/S" />--%>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator runat="server" ID="habInd_validator" ClientIDMode="Static" ErrorMessage="* Selecciona una opción" ControlToValidate="habInd"
                        InitialValue="" ForeColor="Red" Font-Size="Small" Font-Italic="true" SetFocusOnError="true"/>
                </asp:Panel>

                <asp:Panel runat="server" id="panel_otrLenInd" Visible="false"  CssClass="form-group col-sm-4  m-0 p-2 form-group">
                    <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="otrLenInd">Otra Lengua Indigena</asp:Label>
                    <asp:DropDownList runat="server" ID="otrLenInd" ClientIDMode="Static" CssClass="form-control custom-select" AppendDataBoundItems="true">
                        <asp:ListItem Value="" Text="-- Seleccione --" Selected="True" />
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator runat="server" ID="otrLenInd_validator" ClientIDMode="Static" ErrorMessage="* Ingrese otra lengua Indigena" ControlToValidate="otrLenInd"
                        InitialValue="" ForeColor="Red" Font-Size="Small" Font-Italic="true" SetFocusOnError="true"/>
                </asp:Panel>

                <asp:Panel runat="server" CssClass="form-group col-sm-4  m-0 p-2 form-group">
                    <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="nac">* Nacionalidad</asp:Label>
                    <asp:DropDownList runat="server" ID="nac" ClientIDMode="Static" CssClass="form-control custom-select" AppendDataBoundItems="true">
                        <asp:ListItem Value="" Text="--- Nacionalidad ---" Selected="True" />
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator runat="server" ID="nac_validator" ClientIDMode="Static" ErrorMessage="* Selecciona una opción de Nacionalidad" ControlToValidate="nac"
                        InitialValue="" ForeColor="Red" Font-Size="Small" Font-Italic="true" SetFocusOnError="true"/>
                </asp:Panel>

                <asp:Panel runat="server" CssClass="form-group col-sm-4  m-0 p-2 form-group">
                    <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="act">* Activiad Realiza</asp:Label>
                    <asp:DropDownList runat="server" ID="act" ClientIDMode="Static" CssClass="form-control custom-select" AppendDataBoundItems="true">
                        <asp:ListItem Value="" Text="--- Actividad ---" Selected="True" />
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator runat="server" ID="act_validator" ClientIDMode="Static" ErrorMessage="* Selecciona una opción de actividad" ControlToValidate="act"
                        InitialValue="" ForeColor="Red" Font-Size="Small" Font-Italic="true" SetFocusOnError="true"/>
                </asp:Panel>

                <asp:Panel runat="server" CssClass="form-group col-sm-4  m-0 p-2 form-group">
                    <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="ser">* Servicio Médico</asp:Label>
                    <asp:DropDownList runat="server" ID="ser" ClientIDMode="Static" CssClass="form-control custom-select" AppendDataBoundItems="true">
                        <asp:ListItem Value="" Text="--- Servicio Médico ---" Selected="True" />
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator runat="server" ID="ser_validator" ClientIDMode="Static" ErrorMessage="* Selecciona una opción de servicio médico" ControlToValidate="ser"
                        InitialValue="" ForeColor="Red" Font-Size="Small" Font-Italic="true" SetFocusOnError="true"/>
                </asp:Panel>

                <asp:Panel runat="server" CssClass="form-group col-sm-4  m-0 p-2 form-group">
                    <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="leer">* Sabe Leer</asp:Label>
                    <asp:DropDownList runat="server" ID="leer" ClientIDMode="Static" CssClass="form-control custom-select" AppendDataBoundItems="true">
                        <asp:ListItem Value="" Text="--- Sabe Leer ---" Selected="True" />
                        <asp:ListItem Value="1" Text="Si" />
                        <asp:ListItem Value="2" Text="No" />
                        <%--<asp:ListItem Value="3" Text="N/S" />--%>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator runat="server" ID="leer_validator" ClientIDMode="Static" ErrorMessage="* Selecciona una opción" ControlToValidate="leer"
                        InitialValue="" ForeColor="Red" Font-Size="Small" Font-Italic="true" SetFocusOnError="true"/>
                </asp:Panel>

                <asp:Panel runat="server" CssClass="form-group col-sm-4  m-0 p-2 form-group">
                    <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="escri">* Sabe Escribir</asp:Label>
                    <asp:DropDownList runat="server" ID="escri" ClientIDMode="Static" CssClass="form-control custom-select" AppendDataBoundItems="true">
                        <asp:ListItem Value="" Text="--- Sabe Escribir ---" Selected="True" />
                        <asp:ListItem Value="1" Text="Si" />
                        <asp:ListItem Value="2" Text="No" />
                        <%--<asp:ListItem Value="3" Text="N/S" />--%>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator runat="server" ID="escri_validator" ClientIDMode="Static" ErrorMessage="* Selecciona una opción" ControlToValidate="escri"
                        InitialValue="" ForeColor="Red" Font-Size="Small" Font-Italic="true" SetFocusOnError="true"/>
                </asp:Panel>

                <asp:Panel runat="server" CssClass="form-group col-sm-4  m-0 p-2 form-group">
                    <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="esco">* Escolaridad</asp:Label>
                    <asp:DropDownList runat="server" ID="esco" ClientIDMode="Static" CssClass="form-control custom-select" AppendDataBoundItems="true">
                        <asp:ListItem Value="" Text="--- Escolaridad ---" Selected="True" />
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator runat="server" ID="esco_validator" ClientIDMode="Static" ErrorMessage="* Selecciona una opción de escolaridad" ControlToValidate="esco"
                        InitialValue="" ForeColor="Red" Font-Size="Small" Font-Italic="true" SetFocusOnError="true"/>
                </asp:Panel>

                <asp:Panel runat="server" CssClass="form-group col-sm-4  m-0 p-2 form-group">
                    <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="difi">* Dificultades</asp:Label>
                    <asp:DropDownList runat="server" ID="difi" ClientIDMode="Static" CssClass="form-control custom-select" AppendDataBoundItems="true">
                        <asp:ListItem Value="" Text="--- Dificultades ---" Selected="True" />
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator runat="server" ID="difi_validator" ClientIDMode="Static" ErrorMessage="* Selecciona una opción" ControlToValidate="difi"
                        InitialValue="" ForeColor="Red" Font-Size="Small" Font-Italic="true" SetFocusOnError="true"/>
                </asp:Panel>

                <asp:Panel runat="server" CssClass="form-group col-sm-4  m-0 p-2 form-group">
                    <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="mdifi">* Motivo Dificultades</asp:Label>
                    <asp:DropDownList runat="server" ID="mdifi" ClientIDMode="Static" CssClass="form-control custom-select" AppendDataBoundItems="true">
                        <asp:ListItem Value="" Text="--- Motivo Dificultades ---" Selected="True" />
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator runat="server" ID="mdifi_validator" ClientIDMode="Static" ErrorMessage="* Selecciona una opción" ControlToValidate="mdifi"
                        InitialValue="" ForeColor="Red" Font-Size="Small" Font-Italic="true" SetFocusOnError="true"/>
                </asp:Panel>

                <asp:Panel runat="server" CssClass="form-group col-sm-4  m-0 p-2 form-group">
                    <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="rela">* Relación</asp:Label>
                    <asp:DropDownList runat="server" ID="rela" ClientIDMode="Static" CssClass="form-control custom-select" AppendDataBoundItems="true">
                        <asp:ListItem Value="" Text="--- Relación ---" Selected="True" />
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator runat="server" ID="rela_validator" ClientIDMode="Static" ErrorMessage="* Selecciona una opción" ControlToValidate="rela"
                        InitialValue="" ForeColor="Red" Font-Size="Small" Font-Italic="true" SetFocusOnError="true"/>
                </asp:Panel>

                <%--<asp:Panel runat="server" CssClass="form-group col-sm-4  m-0 p-2 form-group">
                    <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="apo">Apoyo</asp:Label>
                    <asp:DropDownList runat="server" ID="apo" ClientIDMode="Static" CssClass="form-control custom-select" AppendDataBoundItems="true">
                        <asp:ListItem Value="" Text="--- Apoyo ---" Selected="True" />
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator runat="server" ID="apo_validator" ClientIDMode="Static" ErrorMessage="* Selecciona una opción" ControlToValidate="apo"
                        InitialValue="" ForeColor="Red" Font-Size="Small" Font-Italic="true" SetFocusOnError="true"/>
                </asp:Panel>--%>

                <asp:Panel runat="server" CssClass="form-group col-xl-12 p-0">
                <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="ageLe">* Apoyo</asp:Label>
                <asp:CheckBoxList runat="server" ID="apo" CssClass="checkboxlist form-control" />
                </asp:Panel>

                <asp:Panel runat="server" CssClass="form-group col-sm-4  m-0 p-2 form-group">
                    <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="tuto">* Tiene Tutor</asp:Label>
                    <asp:DropDownList runat="server" ID="tuto" ClientIDMode="Static" CssClass="form-control custom-select" AppendDataBoundItems="true"  AutoPostBack="true">
                        <asp:ListItem Value="" Text="--- Tiene Tutor ---" Selected="True" />
                        <asp:ListItem Value="1" Text="Si" />
                        <asp:ListItem Value="2" Text="No" />
                        <%--<asp:ListItem Value="3" Text="N/S" />--%>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator runat="server" ID="tuto_validator" ClientIDMode="Static" ErrorMessage="* Selecciona una opción" ControlToValidate="tuto"
                        InitialValue="" ForeColor="Red" Font-Size="Small" Font-Italic="true" SetFocusOnError="true"/>
                </asp:Panel>

                <asp:Label runat="server" ID="tutorTi" CssClass="font-weight-bold" AssociatedControlID="tuto" Visible="false"><h3>* Tutor</h3></asp:Label>
            <div class="row p-0 m-3">
                <asp:Panel runat="server" ID="tutorPa" CssClass="form-group col-sm-4  m-0 p-2 form-group" Visible="false">
                    <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="pater">* Paterno</asp:Label>
                    <asp:TextBox runat="server" ID="pater" ClientIDMode="Static" placeholder="Paterno" CssClass="form-control" />
                    <asp:RequiredFieldValidator runat="server" ID="pater_validator" ClientIDMode="Static" ErrorMessage="* Ingrese apellido paterno de tutor" ControlToValidate="pater"
                        InitialValue="" ForeColor="Red" Font-Size="Small" Font-Italic="true" SetFocusOnError="true"/>
                </asp:Panel>

                <asp:Panel runat="server" ID="tutorMa" CssClass="form-group col-sm-4  m-0 p-2 form-group" Visible="false">
                    <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="mater">* Materno</asp:Label>
                    <asp:TextBox runat="server" ID="mater" ClientIDMode="Static" placeholder="Materno" CssClass="form-control" />
                    <asp:RequiredFieldValidator runat="server" ID="mater_validator" ClientIDMode="Static" ErrorMessage="* Ingrese apellido materno de tutor" ControlToValidate="mater"
                        InitialValue="" ForeColor="Red" Font-Size="Small" Font-Italic="true" SetFocusOnError="true"/>
                </asp:Panel>

                <asp:Panel runat="server" ID="tutorNom" CssClass="form-group col-sm-4  m-0 p-2 form-group" Visible="false">
                    <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="no">* Nombre</asp:Label>
                    <asp:TextBox runat="server" ID="no" ClientIDMode="Static" placeholder="Nombre" CssClass="form-control" />
                    <asp:RequiredFieldValidator runat="server" ID="no_validator" ClientIDMode="Static" ErrorMessage="* Ingrese nombre de tutor" ControlToValidate="no"
                        InitialValue="" ForeColor="Red" Font-Size="Small" Font-Italic="true" SetFocusOnError="true"/>
                </asp:Panel>

                <asp:Panel runat="server" ID="tutorEdad" CssClass="form-group col-sm-4  m-0 p-2 form-group" Visible="false">
                    <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="edadtu">* Edad Tutor</asp:Label>
                    <asp:TextBox runat="server" ID="edadtu" ClientIDMode="Static" placeholder="Paterno" CssClass="form-control" />
                    <asp:RequiredFieldValidator runat="server" ID="edadtu_validator" ClientIDMode="Static" ErrorMessage="* Ingrese edad de tutor" ControlToValidate="edadtu"
                        InitialValue="" ForeColor="Red" Font-Size="Small" Font-Italic="true" SetFocusOnError="true"/>
                </asp:Panel>
                </div>
            </div>

           

            

             <!--Hijos -->
            <div runat="server" ID="HijosPanel" class="row p-0 m-3">
                <asp:Panel runat="server" CssClass="form-group col-sm-4  m-0 p-2 form-group">
                    <asp:Label runat="server" CssClass="font-weight-bold">Agregar Hijo</asp:Label>
                </asp:Panel>

                <div class="form-group m-0 p-2">

                    <asp:LinkButton runat="server" ID="agregar" AutoPostBack="true" CausesValidation="false" CssClass="btn  btn-primary"
                        Style="font-size: 20px; color: #767474; border-color: gray; background-color: #DAD7D7;"
                         Onclick="agregarHijo" Visible="true">Agregar Hijo</asp:LinkButton>

                </div>

                <asp:Panel runat="server" ID="mascara" ClientIDMode="Static" Enabled="true" Visible="false">
                    <asp:Panel runat="server" CssClass="div_emergente p-4 form-group">

                        <asp:Panel runat="server" CssClass="barra_opciones m-0 p-1 d-flex flex-row-reverse ">
                            <asp:ImageButton runat="server" ImageUrl="/img/close.png" OnClick="CierraHijo" CausesValidation="false" Width="25px" Height="25px" />
                        </asp:Panel>

                        <asp:Panel runat="server" CssClass="form-group col-sm-8  m-0 p-2 form-group">
                            <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="sexoHijo">* Sexo</asp:Label>
                            <asp:DropDownList runat="server" ID="sexoHijo" ClientIDMode="Static" CssClass="form-control custom-select" AppendDataBoundItems="true">
                                <asp:ListItem Value="" Text="--- Sexo ---" Selected="True" />
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator runat="server" ID="sexoHijo_validator" ClientIDMode="Static" ErrorMessage="* Selecciona una opción de sexo" ControlToValidate="sexoHijo"
                                InitialValue="" ForeColor="Red" Font-Size="Small" Font-Italic="true" ValidationGroup="validation_hijos" SetFocusOnError="true"/>
                        </asp:Panel>

                        <asp:Panel runat="server" CssClass="form-group col-sm-8  m-0 p-2 form-group">
                            <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="edadHijo">* Edad</asp:Label>
                            <asp:TextBox runat="server" ID="edadHijo" ClientIDMode="Static" placeholder="Edad" CssClass="form-control" />
                            <asp:RequiredFieldValidator runat="server" ID="edadHijo_validator" ClientIDMode="Static" ErrorMessage="Ingrese una edad" ControlToValidate="edadHijo"
                                InitialValue="" ForeColor="Red" Font-Size="Small" Font-Italic="true" ValidationGroup="validation_hijos" SetFocusOnError="true"  Display="Dynamic"/>
                            <asp:RegularExpressionValidator ID="edadHijo_validator_exp" runat="server" ControlToValidate="edadHijo" ValidationExpression="^([0-9])*$"
                        MessageValidatorTip="true" AutoComplete="true" OnInvalidCssClass="text-danger" ErrorMessage="* El dato a ingresar debe ser solo número"
                        ForeColor="Red" Font-Size="Small" Font-Italic="true" SetFocusOnError="true"  Display="Dynamic"/>
                        </asp:Panel>

                        <asp:Panel runat="server" CssClass="form-group col-sm-8  m-0 p-2 form-group">
                            <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="sufreViole">* Sufre Violencia</asp:Label>
                            <asp:DropDownList runat="server" ID="sufreViole" ClientIDMode="Static" CssClass="form-control custom-select" AppendDataBoundItems="true">
                                <asp:ListItem Value="" Text="--- Selecciona ---" />
                                <asp:ListItem Value="1" Text="Si" />
                                <asp:ListItem Value="2" Text="No" />
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator runat="server" ID="sufreViole_validator" ClientIDMode="Static" ErrorMessage="* Selecciona una opción" ControlToValidate="sufreViole"
                                InitialValue="" ForeColor="Red" Font-Size="Small" Font-Italic="true" ValidationGroup="validation_hijos" SetFocusOnError="true"/>
                        </asp:Panel>
                        <asp:LinkButton runat="server" ID="GuardarHijo" AutoPostBack="true" CausesValidation="true" ValidationGroup="validation_hijos" CssClass="btn  btn-primary"
                            Style="font-size: 20px; color: #767474; border-color: gray; background-color: #DAD7D7;"
                             Visible="true">Guardar</asp:LinkButton>
                    </asp:Panel>
                </asp:Panel>

                <div class="col-sm-12 d-flex justify-content-center m-0 p-5 form-group">
                    <asp:UpdatePanel ID="tablaHijos" runat="server" UpdateMode="Conditional">
                        <ContentTemplate>
                            <asp:GridView runat="server" ID="llenatabla" CssClass="table table-striped table-bordered"
                                AutoGenerateColumns="False" GridLines="None"
                                EmptyDataText="Sin Resultados" ShowHeaderWhenEmpty="true" AllowPaging="true">
                                <Columns>
                                    <asp:BoundField DataField="sexo" HeaderText="Sexo" />
                                    <asp:BoundField DataField="edad" HeaderText="Edad" />
                                    <asp:BoundField DataField="sufreViolencia" HeaderText="Sufre Violencia" />


                                </Columns>
                            </asp:GridView>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>

            </div>
            <!--Hijos -->

            <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="tuto"><h3>Motivo</h3></asp:Label>
            <div class="row p-0 m-3">
                <asp:Panel runat="server" CssClass="form-group col-sm-4  m-0 p-2 form-group">
                    <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="claVio">*Clasificación Violencia</asp:Label>
                    <asp:DropDownList runat="server" ID="claVio" ClientIDMode="Static" CssClass="form-control custom-select" AppendDataBoundItems="true">
                        <asp:ListItem Value="" Text="--- Clasificación Violencia ---" Selected="True" />
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator runat="server" ID="claVio_validator" ClientIDMode="Static" ErrorMessage="* Selecciona una opción" ControlToValidate="claVio"
                        InitialValue="" ForeColor="Red" Font-Size="Small" Font-Italic="true" SetFocusOnError="true"/>
                </asp:Panel>

                <asp:Panel runat="server" CssClass="form-group col-sm-4  m-0 p-2 form-group" Visible="false">
                    <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="tuto">* Victima Delincuencia Organizada</asp:Label>
                    <asp:DropDownList runat="server" ID="vicDelOr" ClientIDMode="Static" CssClass="form-control custom-select" AppendDataBoundItems="true">
                        <asp:ListItem Value="" Text="--- Victima Delincuencia Organizada ---" Selected="True" />
                        <asp:ListItem Value="1" Text="Si" />
                        <asp:ListItem Value="2" Text="No" />
                        <%--<asp:ListItem Value="3" Text="N/S" />--%>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator runat="server" ID="vicDelOr_validator" ClientIDMode="Static" ErrorMessage="* Selecciona una opción" ControlToValidate="vicDelOr"
                        InitialValue="" ForeColor="Red" Font-Size="Small" Font-Italic="true" SetFocusOnError="true"/>
                </asp:Panel>

                <asp:Panel runat="server" CssClass="form-group col-sm-4  m-0 p-2 form-group">
                    <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="heRelDen">* Hecho Relacionado a Denuncia</asp:Label>
                    <asp:DropDownList runat="server" ID="heRelDen" ClientIDMode="Static" CssClass="form-control custom-select" AppendDataBoundItems="true">
                        <asp:ListItem Value="" Text="--- Hecho Relacionado a Denuncia ---" Selected="True" />
                        <asp:ListItem Value="1" Text="Si" />
                        <asp:ListItem Value="2" Text="No" />
                        <%--<asp:ListItem Value="3" Text="N/S" />--%>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator runat="server" ID="heRelDen_validator" ClientIDMode="Static" ErrorMessage="* Selecciona una opción" ControlToValidate="heRelDen"
                        InitialValue="" ForeColor="Red" Font-Size="Small" Font-Italic="true" SetFocusOnError="true"/>
                </asp:Panel>

                <asp:Panel runat="server" ID="Panel1" CssClass="form-group col-sm-4  m-0 p-2 form-group">
                    <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="narra">* Narración</asp:Label>
                    <asp:TextBox runat="server" ID="narra" ClientIDMode="Static" placeholder="Narración" CssClass="form-control" />
                    <asp:RequiredFieldValidator runat="server" ID="narra_validator" ClientIDMode="Static" ErrorMessage="* ingrese texto" ControlToValidate="narra"
                        InitialValue="" ForeColor="Red" Font-Size="Small" Font-Italic="true" SetFocusOnError="true"/>
                </asp:Panel>

                <asp:Panel runat="server" CssClass="form-group col-sm-4  m-0 p-2 form-group">
                    <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="diaFes">* Es día festivo</asp:Label>
                    <asp:DropDownList runat="server" ID="diaFes" ClientIDMode="Static" CssClass="form-control custom-select" AppendDataBoundItems="true">
                        <asp:ListItem Value="" Text="--- Es día festivo ---" Selected="True" />
                        <asp:ListItem Value="1" Text="Si" />
                        <asp:ListItem Value="2" Text="No" />
                        <%--<asp:ListItem Value="3" Text="N/S" />--%>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator runat="server" ID="diaFes_validator" ClientIDMode="Static" ErrorMessage="* Selecciona una opción" ControlToValidate="diaFes"
                        InitialValue="" ForeColor="Red" Font-Size="Small" Font-Italic="true" SetFocusOnError="true"/>
                </asp:Panel>

                <asp:Panel runat="server" CssClass="form-group col-sm-4  m-0 p-2 form-group">
                    <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="infAut">* Informo Autoridad</asp:Label>
                    <asp:DropDownList runat="server" ID="infAut" ClientIDMode="Static" CssClass="form-control custom-select" AppendDataBoundItems="true" >
                        <asp:ListItem Value="" Text="--- Informo Autoridad ---" Selected="True" />
                        <asp:ListItem Value="1" Text="Si" />
                        <asp:ListItem Value="2" Text="No" />
                       <%-- <asp:ListItem Value="3" Text="N/S" />--%>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator runat="server" ID="infAut_validator" ClientIDMode="Static" ErrorMessage="* Selecciona una opción" ControlToValidate="infAut"
                        InitialValue="" ForeColor="Red" Font-Size="Small" Font-Italic="true" SetFocusOnError="true"/>
                </asp:Panel>

                <asp:Panel runat="server" ID="Panel2" CssClass="form-group col-sm-4  m-0 p-2 form-group" Visible="false">
                    <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="descAut">* Descripción Autoridad</asp:Label>
                    <asp:TextBox runat="server" ID="descAut" ClientIDMode="Static" placeholder="Descripción Autoridad" CssClass="form-control" />
                    <asp:RequiredFieldValidator runat="server" ID="descAut_validator" ClientIDMode="Static" ErrorMessage="* Ingrese descripción" ControlToValidate="descAut"
                        InitialValue="" ForeColor="Red" Font-Size="Small" Font-Italic="true" SetFocusOnError="true"/>
                </asp:Panel>
            </div>

            <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="tuto"><h3>* Efectos Violencia</h3></asp:Label>
            <div class="row p-0 m-3">
                <%--<asp:Panel runat="server" CssClass="form-group col-sm-4  m-0 p-2 form-group">
                    <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="fis">Físicos</asp:Label>
                    <asp:DropDownList runat="server" ID="fis" ClientIDMode="Static" CssClass="form-control custom-select" AppendDataBoundItems="true">
                        <asp:ListItem Value="" Text="--- Físicos ---" Selected="True" />
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator runat="server" ID="fis_validator" ClientIDMode="Static" ErrorMessage="* Selecciona una opción" ControlToValidate="fis"
                        InitialValue="" ForeColor="Red" Font-Size="Small" Font-Italic="true" />
                </asp:Panel>--%>

                <asp:Panel runat="server" CssClass="form-group col-xl-12 p-0">
                <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="fis">* Físicos</asp:Label>
                <asp:CheckBoxList runat="server" ID="fis" CssClass="checkboxlist form-control" />
                </asp:Panel>

                <%--<asp:Panel runat="server" CssClass="form-group col-sm-4  m-0 p-2 form-group">
                    <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="sexu">Sexuales</asp:Label>
                    <asp:DropDownList runat="server" ID="sexu" ClientIDMode="Static" CssClass="form-control custom-select" AppendDataBoundItems="true">
                        <asp:ListItem Value="" Text="--- Sexuales ---" Selected="True" />
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator runat="server" ID="sexu_validator" ClientIDMode="Static" ErrorMessage="* Selecciona una opción" ControlToValidate="sexu"
                        InitialValue="" ForeColor="Red" Font-Size="Small" Font-Italic="true" />
                </asp:Panel>--%>
                <asp:Panel runat="server" CssClass="form-group col-xl-12 p-0">
                <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="sexu">* Sexuales</asp:Label>
                <asp:CheckBoxList runat="server" ID="sexu" CssClass="checkboxlist form-control" />
                </asp:Panel>

                <%--<asp:Panel runat="server" CssClass="form-group col-sm-4  m-0 p-2 form-group">
                    <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="psico">Psicológicos</asp:Label>
                    <asp:DropDownList runat="server" ID="psico" ClientIDMode="Static" CssClass="form-control custom-select" AppendDataBoundItems="true">
                        <asp:ListItem Value="" Text="--- Psicológicos ---" Selected="True" />
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator runat="server" ID="psico_validator" ClientIDMode="Static" ErrorMessage="* Selecciona una opción" ControlToValidate="psico"
                        InitialValue="" ForeColor="Red" Font-Size="Small" Font-Italic="true" />
                </asp:Panel>--%>

                <asp:Panel runat="server" CssClass="form-group col-xl-12 p-0">
                <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="psico">* Psicológicos</asp:Label>
                <asp:CheckBoxList runat="server" ID="psico" CssClass="checkboxlist form-control" />
                </asp:Panel>

                <%--<asp:Panel runat="server" CssClass="form-group col-sm-4  m-0 p-2 form-group">
                    <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="econo">Económicos</asp:Label>
                    <asp:DropDownList runat="server" ID="econo" ClientIDMode="Static" CssClass="form-control custom-select" AppendDataBoundItems="true">
                        <asp:ListItem Value="" Text="--- Económicos ---" Selected="True" />
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator runat="server" ID="econo_validator" ClientIDMode="Static" ErrorMessage="* Selecciona una opción" ControlToValidate="econo"
                        InitialValue="" ForeColor="Red" Font-Size="Small" Font-Italic="true" />
                </asp:Panel>--%>

                <asp:Panel runat="server" CssClass="form-group col-xl-12 p-0">
                <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="econo">* Económicos</asp:Label>
                <asp:CheckBoxList runat="server" ID="econo" CssClass="checkboxlist form-control" />
                </asp:Panel>

                <%--<asp:Panel runat="server" CssClass="form-group col-sm-4  m-0 p-2 form-group">
                    <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="ageLe">Agente Lesión</asp:Label>
                    <asp:DropDownList runat="server" ID="ageLe" ClientIDMode="Static" CssClass="form-control custom-select" AppendDataBoundItems="true">
                        <asp:ListItem Value="" Text="--- Agente Lesión ---" Selected="True" />
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator runat="server" ID="ageLe_validator" ClientIDMode="Static" ErrorMessage="* Selecciona una opción" ControlToValidate="ageLe"
                        InitialValue="" ForeColor="Red" Font-Size="Small" Font-Italic="true" />
                </asp:Panel>--%>

                 <asp:Panel runat="server" CssClass="form-group col-xl-12 p-0">
                <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="ageLe">* Agente Lesión</asp:Label>
                <asp:CheckBoxList runat="server" ID="ageLe" CssClass="checkboxlist form-control" />
                </asp:Panel>

                <%--<asp:Panel runat="server" CssClass="form-group col-sm-4  m-0 p-2 form-group">
                    <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="anaLe">Anatomia Lesionada</asp:Label>
                    <asp:DropDownList runat="server" ID="anaLe" ClientIDMode="Static" CssClass="form-control custom-select" AppendDataBoundItems="true">
                        <asp:ListItem Value="" Text="--- Anatomia Lesionada ---" Selected="True" />
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator runat="server" ID="anaLe_validator" ClientIDMode="Static" ErrorMessage="* Selecciona una opción" ControlToValidate="anaLe"
                        InitialValue="" ForeColor="Red" Font-Size="Small" Font-Italic="true" />
                </asp:Panel>--%>
                <asp:Panel runat="server" CssClass="form-group col-xl-12 p-0">
                <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="anaLe">* Anatomia Lesionada</asp:Label>
                <asp:CheckBoxList runat="server" ID="anaLe" CssClass="checkboxlist form-control" />
                </asp:Panel>

                <asp:Panel runat="server" CssClass="form-group col-sm-4  m-0 p-2 form-group" Visible="false">
                    <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="parte">* Tipo Parte</asp:Label>
                    <asp:DropDownList runat="server" ID="parte" ClientIDMode="Static" CssClass="form-control custom-select" AppendDataBoundItems="true">
                        <asp:ListItem Value="" Text="--- Tipo Parte ---" Selected="True" />
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator runat="server" ID="parte_validator" ClientIDMode="Static" ErrorMessage="* Selecciona una opción" ControlToValidate="parte"
                        InitialValue="" ForeColor="Red" Font-Size="Small" Font-Italic="true" SetFocusOnError="true"/>
                </asp:Panel>

                <div class="form-group col-sm-4  m-0 p-2 form-group">

                    <asp:LinkButton runat="server" ID="guardarVic" AutoPostBack="true" CausesValidation="true" CssClass="btn  btn-primary"
                        Style="font-size: 20px; color: #767474; border-color: gray; background-color: #DAD7D7;" 
                         Visible="false">Guardar</asp:LinkButton>

                </div>
            </div>

        </asp:Panel>
            </asp:Panel>
            </asp:Panel>
            <%--//-------------------------------------------------------------------------------- VICTIMAS ------------------------------------------------------------------------------------//--%>

            <%--//-------------------------------------------------------------------------------- AGRESOR ------------------------------------------------------------------------------------//--%>
            <asp:Panel runat="server" ID="contenido_agresor" ClientIDMode="Static" CssClass="content container p-4" Visible ="false">
            <asp:Panel runat="server" CssClass="row">
                <asp:Panel runat="server" ID="Contenidocampos" Visible="true" CssClass="form-group">
            <%--<asp:Panel runat="server" CssClass="form-group">
            <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="exp">Número orden protección</asp:Label>
            <asp:TextBox runat="server" ID="exp" ClientIDMode="Static" placeholder="Número orden protección" CssClass="form-control" />
            <asp:RequiredFieldValidator runat="server" ID="exp_validator" ErrorMessage="* Número orden protección no puede estar vació" ControlToValidate="exp"
                ForeColor="Red" Font-Size="Small" Font-Italic="true" />
        </asp:Panel>--%>
           
            <asp:Panel runat="server" CssClass="row">
                <asp:Panel runat="server" CssClass="form-group col-sm-4">
                    <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="nombre">* Nombre</asp:Label>
                    <asp:TextBox runat="server" ID="nombre" ClientIDMode="Static" placeholder="Nombre agresor" CssClass="form-control " />
                    <asp:RequiredFieldValidator runat="server" ID="Nombre_Agresor_validator" ErrorMessage="* Falta nombre del agresor" ControlToValidate="nombre"
                ForeColor="Red" Font-Size="Small" Font-Italic="true" SetFocusOnError="true"/>
                </asp:Panel>
                <asp:Panel runat="server" CssClass="col-sm-4">
                    <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="primer_apellido">* Primer apellido </asp:Label>
                    <asp:TextBox runat="server" ID="primer_apellido" ClientIDMode="Static" placeholder="Primer apellido" CssClass="form-control" />
                    <asp:RequiredFieldValidator runat="server" ID="Primer_apellido_Validator" ErrorMessage="* Falta apellido" ControlToValidate="primer_apellido"
                ForeColor="Red" Font-Size="Small" Font-Italic="true" SetFocusOnError="true"/>
                </asp:Panel>
                <asp:Panel runat="server" CssClass="col-sm-4">
                    <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="segundo_apellido">* Segundo apellido</asp:Label>
                    <asp:TextBox runat="server" ID="segundo_apellido" ClientIDMode="Static" placeholder="Segundo apellido" CssClass="form-control" />
                    <asp:RequiredFieldValidator runat="server" ID="Segundo_apellido_Validator" ErrorMessage="* Falta apellido" ControlToValidate="segundo_apellido"
                ForeColor="Red" Font-Size="Small" Font-Italic="true" SetFocusOnError="true"/>
                </asp:Panel>
            </asp:Panel>

             <asp:Panel runat="server" CssClass="row">
            <asp:Panel runat="server" CssClass="col-sm-4">
                <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="FechaNacimiento">* Fecha Nacimiento</asp:Label>
                <asp:Panel runat="server" ClientIDMode="AutoID" CssClass="input-group">
                    <asp:TextBox ID="FechaNacimiento" ClientIDMode="Static" runat="server" placeholder="dd/MM/yyyy" CssClass="form-control" />
                    <asp:Label runat="server" CssClass="input-group-append">
                            <asp:Label runat="server" ID="FechaNacimiento_icon" ClientIDMode="Static" CssClass="input-group-text bg-danger">
                                <asp:Label runat="server" CssClass="text-white far fa-calendar-alt"/>
                            </asp:Label>
                        </asp:Label>  
                </asp:Panel>
                <axT:MaskedEditExtender ID="FechaNacimiento_extender" runat="server" TargetControlID="FechaNacimiento" MaskType="Date" Mask="99/99/9999"
                MessageValidatorTip="true" AutoComplete="true" OnInvalidCssClass="text-danger"/>
                <axT:MaskedEditValidator ID="FechaNacimiento_validator" runat="server" ControlExtender="FechaNacimiento_extender" ControlToValidate="FechaNacimiento" IsValidEmpty="false"
                EmptyValueMessage="* Fecha Nacimiento no puede estar vació" InvalidValueMessage="* Fecha no valida" ForeColor="Red" Font-Size="Small" Font-Italic="true" Display="Dynamic"/>
                <axT:CalendarExtender runat="server" TargetControlID="FechaNacimiento" Format="dd/MM/yyyy" PopupButtonID="FechaNacimiento_icon"/>
            </asp:Panel>


            <asp:Panel runat="server" CssClass="col-sm-4">
                <asp:Label runat="server" CssClass0="font-weight-bold" AssociatedControlID="Genero_juicio">* Sexo</asp:Label>
                <asp:DropDownList runat="server" ID="Genero_juicio" ClientIDMode="Static" CssClass="form-control custom-select" AppendDataBoundItems="true">
                   <asp:ListItem Value="" Text="--- Sexo ---" Selected="True" />
                </asp:DropDownList>
                <asp:RequiredFieldValidator runat="server" ID="Genero_juicio_validator" ErrorMessage="* Selecciona una opción" ControlToValidate="Genero_juicio"
                    InitialValue="" ForeColor="Red" Font-Size="Small" Font-Italic="true" SetFocusOnError="true"/>
            </asp:Panel>
            <asp:Panel runat="server" CssClass="col-sm-4">
                <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="Pais">* País</asp:Label>
                <asp:DropDownList runat="server" ID="DropDownList1" ClientIDMode="Static" CssClass="form-control custom-select" AppendDataBoundItems="true">
                    <asp:ListItem Value="" Text="-- Selecciona pais--" Selected="True" />
                </asp:DropDownList>
                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator3" ErrorMessage="* Selecciona una opción" ControlToValidate="Pais"
                    InitialValue="" ForeColor="Red" Font-Size="Small" Font-Italic="true" SetFocusOnError="true"/>
            </asp:Panel>
            
                  </asp:Panel>

            <asp:Panel runat="server" CssClass="form-group ">
                <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="estado_juicio">* Estado</asp:Label>
                <asp:DropDownList runat="server" ID="DropDownList2" ClientIDMode="Static" CssClass="form-control custom-select" AppendDataBoundItems="true">
                    <asp:ListItem Value="15" Text="México" Selected="True" />
                </asp:DropDownList>
                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator4" ErrorMessage="* Selecciona una opción" ControlToValidate="estado_juicio"
                    InitialValue="" ForeColor="Red" Font-Size="Small" Font-Italic="true" SetFocusOnError="true"/>
            </asp:Panel>

            <asp:CheckBox runat="server" ID="mismo_dimicilio" ClientIDMode="Static" CssClass="form-group custom-control custom-switch" 
            AutoPostBack="true" Text="¿Es el mismo domicilio de la victima?" name="mismo_dimicilio" />


          <%--DOMICILIO AGRESOR--%>
            <%--<asp:Label runat="server" CssClass="font-weight-bold" ><h3>Domicilio</h3></asp:Label>--%>
            <asp:Panel runat="server" ID="domicilio_agresor" Visible="True" GroupingText="* Domicilio Agresor" CssClass="panel-body">
                    <asp:Panel runat="server" CssClass="row">
               <asp:Panel runat="server" CssClass="col-sm-4">
            
            <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="Pais_domicilio">* País</asp:Label>
             <asp:DropDownList runat="server" ID="Pais_domicilio" ClientIDMode="Static" CssClass="form-control custom-select" AppendDataBoundItems="true">
             <asp:ListItem Value="" Text="--- País ---" Selected="True" />
             </asp:DropDownList>
                    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator5" ClientIDMode="Static" ErrorMessage="* Selecciona una opción" ControlToValidate="Pais_domicilio"
                    InitialValue="" ForeColor="Red" Font-Size="Small" Font-Italic="true" SetFocusOnError="true"/>
            
             </asp:Panel>
        
               <asp:Panel runat="server" CssClass="col-sm-4">
               <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="Estado_domicilio">* Estado</asp:Label>
               <asp:DropDownList runat="server" ID="Estado_domicilio" ClientIDMode="Static" CssClass="form-control custom-select" AppendDataBoundItems="true">
               <asp:ListItem Value="" Text="--Selecciona un Estado--" Selected="True" />
               </asp:DropDownList>
               <asp:RequiredFieldValidator runat="server" ID="Estado_domicilio_validador" ClientIDMode="Static" ErrorMessage="* Selecciona una opción" ControlToValidate="Estado_domicilio"
                 InitialValue="" ForeColor="Red" Font-Size="Small" Font-Italic="true" SetFocusOnError="true"/>
                </asp:Panel>

                <asp:Panel runat="server" CssClass="col-sm-4">
                <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="municipio_Agresor">* Municipio</asp:Label>
                <asp:DropDownList runat="server" ID="municipio_Agresor" ClientIDMode="Static" CssClass="form-control custom-select" AppendDataBoundItems="true">
                    <asp:ListItem Value="" Text="--Seleccione Municipio--" Selected="True" />
                </asp:DropDownList>
                <asp:RequiredFieldValidator runat="server" ID="municipio_Agresor_validador" ErrorMessage="* Selecciona una opción" ControlToValidate="municipio_Agresor"
                    InitialValue="" ForeColor="Red" Font-Size="Small" Font-Italic="true" SetFocusOnError="true"/>
                </asp:Panel>
                </asp:Panel>
             <asp:Panel runat="server" CssClass="row">
                <asp:Panel runat="server" CssClass="col-sm-4">
                    <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="Localidad_Agresor">* Localidad</asp:Label>
                    <asp:TextBox runat="server" ID="Localidad_Agresor" ClientIDMode="Static" placeholder="Localidad" CssClass="form-control" />
                    <asp:RequiredFieldValidator runat="server" ID="Localidad_Agresor_validador" ErrorMessage="* Localidad no puede estar vació" ControlToValidate="Localidad_Agresor"
                ForeColor="Red" Font-Size="Small" Font-Italic="true" SetFocusOnError="true"/>
                </asp:Panel>
                <asp:Panel runat="server" CssClass="col-sm-4">
                    <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="calle_agresor">* Calle</asp:Label>
                    <asp:TextBox runat="server" ID="calle_agresor" ClientIDMode="Static" placeholder="Calle agresor" CssClass="form-control" />
                    <asp:RequiredFieldValidator runat="server" ID="calle_agresor_validador" ErrorMessage="* Falta calle agresor" ControlToValidate="calle_agresor"
                ForeColor="Red" Font-Size="Small" Font-Italic="true" SetFocusOnError="true"/>
                </asp:Panel>
                <asp:Panel runat="server" CssClass="col-sm-4">
                    <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="numero_exterior">* Número exterior</asp:Label>
                    <asp:TextBox runat="server" ID="numero_exterior" ClientIDMode="Static" placeholder="Número exterior" CssClass="form-control" />
                    <asp:RequiredFieldValidator runat="server" ID="numero_exterior_validador" ErrorMessage="* Número exterior no puede estar vació" ControlToValidate="numero_exterior"
                ForeColor="Red" Font-Size="Small" Font-Italic="true" SetFocusOnError="true" Display="Dynamic"/>
                    <asp:RegularExpressionValidator ID="numero_exterior_reg_validator" runat="server" ControlToValidate="numero_exterior" ValidationExpression="^([0-9])*$"
                    MessageValidatorTip="true" AutoComplete="true" OnInvalidCssClass="text-danger" ErrorMessage="El dato a ingresar debe ser solo número"
                    ForeColor="Red" Font-Size="Small" Font-Italic="true" SetFocusOnError="true" Display="Dynamic"/>
                </asp:Panel>
                 </asp:Panel>
             
               <asp:Panel runat="server" CssClass="col-sm-4">
                    <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="numero_interior">Número interior</asp:Label>
                    <asp:TextBox runat="server" ID="numero_interior" ClientIDMode="Static" placeholder="Número interior" CssClass="form-control" />
                    <%--<asp:RequiredFieldValidator runat="server" ID="numero_interior_validador" ErrorMessage="* Número interior no puede estar vació" ControlToValidate="numero_interior"
                ForeColor="Red" Font-Size="Small" Font-Italic="true" />--%>
            </asp:Panel></asp:Panel>
                            
               <%-- FIN DOMICILIO AGRESOR--%>
            
            <!--Nuevos campos -->
             <%--<asp:Label runat="server" CssClass="font-weight-bold" ><h3></h3></asp:Label>--%>
            <asp:Panel runat="server" CssClass="row">
                        <asp:Panel runat="server" CssClass="form-group col-sm-4  m-0 p-2 form-group">
                <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="estadoCivil">* Estado Civil</asp:Label>
                <asp:DropDownList runat="server" ID="estadoCivil" ClientIDMode="Static" CssClass="form-control custom-select" AppendDataBoundItems="true">
                    <asp:ListItem Value="" Text="--- Estado Civil ---" Selected="True" />
                </asp:DropDownList>
                <asp:RequiredFieldValidator runat="server" ID="estadoCivil_validator" ClientIDMode="Static" ErrorMessage="* Selecciona una opción de estado civil" ControlToValidate="estadoCivil"
                        InitialValue="" ForeColor="Red" Font-Size="Small" Font-Italic="true" SetFocusOnError="true"/>
            </asp:Panel>
            <asp:Panel runat="server" CssClass="form-group col-sm-4  m-0 p-2 form-group">
                <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="edadAgresor">* Edad</asp:Label>
                <asp:TextBox runat="server" ID="edadAgresor" ClientIDMode="Static" placeholder="Edad" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ID="edadAgresor_validator" ClientIDMode="Static" ErrorMessage="* Ingrese edad del Agresor" ControlToValidate="edadAgresor"
                        InitialValue="" ForeColor="Red" Font-Size="Small" Font-Italic="true" SetFocusOnError="true" Display="Dynamic"/>
                <asp:RegularExpressionValidator ID="edadAgresor_validator_exp" runat="server" ControlToValidate="edadAgresor" ValidationExpression="^([0-9])*$"
                    MessageValidatorTip="true" AutoComplete="true" OnInvalidCssClass="text-danger" ErrorMessage="El dato a ingresar debe ser solo número"
                    ForeColor="Red" Font-Size="Small" Font-Italic="true" SetFocusOnError="true" Display="Dynamic"/>
            </asp:Panel></asp:Panel>
                

                  <asp:Panel runat="server" CssClass="row">
               <asp:Panel runat="server" CssClass="col-sm-4">
                 <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="alias">* Alias</asp:Label>
                <asp:TextBox runat="server" ID="alias" ClientIDMode="Static" placeholder="Alias" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ID="aliasValidator" ClientIDMode="Static" ErrorMessage="* Ingrese el Alias" ControlToValidate="alias"
                        InitialValue="" ForeColor="Red" Font-Size="Small" Font-Italic="true" SetFocusOnError="true"/>
            </asp:Panel>
            <asp:Panel runat="server" CssClass="col-sm-4">
                <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="rfcAgresor">RFC</asp:Label>
                <asp:TextBox runat="server" ID="rfcAgresor" ClientIDMode="Static" placeholder="RFC" CssClass="form-control" />
                <%--<asp:RequiredFieldValidator runat="server" ID="rfcAgresor_Validator" ClientIDMode="Static" ErrorMessage="* Ingrese RFC del Agresor" ControlToValidate="rfcAgresor"
                        InitialValue="" ForeColor="Red" Font-Size="Small" Font-Italic="true" SetFocusOnError="true" Display="Dynamic"/>--%>
                <asp:RegularExpressionValidator ID="rfcAgresor_validator_exp" runat="server" ControlToValidate="rfcAgresor" 
                        ValidationExpression="^[A-Z]{3,4}[0-9][0-9](0[1-9]|1[0-2])(0[1-9]|(1|2)[0-9]|3[0-1])[0-9A-Z]{3}$"
                    MessageValidatorTip="true" AutoComplete="true" OnInvalidCssClass="text-danger" ErrorMessage="El rfc debe tener el formato correcto"
                    ForeColor="Red" Font-Size="Small" Font-Italic="true" SetFocusOnError="true" Display="Dynamic"/>
            </asp:Panel>
               </asp:Panel> 
     
            <asp:Label runat="server" CssClass="font-weight-bold" ><h3>Idioma</h3></asp:Label>

                 <asp:Panel runat="server" CssClass="row">
                <asp:Panel runat="server" CssClass="col-sm-4">
                    <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="habEsp">* Habla Español</asp:Label>
                    <asp:DropDownList runat="server" ID="DropDownList3" ClientIDMode="Static" CssClass="form-control custom-select" AppendDataBoundItems="true">
                        <asp:ListItem Value="" Text="--- Habla Español ---" Selected="True" />
                        <asp:ListItem Value="1" Text="Si" />
                        <asp:ListItem Value="2" Text="No" />
                        <%--<asp:ListItem Value="3" Text="N/S" />--%>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator6" ClientIDMode="Static" ErrorMessage="* Selecciona una opción" ControlToValidate="habEsp"
                        InitialValue="" ForeColor="Red" Font-Size="Small" Font-Italic="true" SetFocusOnError="true"/>
                </asp:Panel>
          
            <asp:Panel runat="server" CssClass="col-sm-4">
                <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="habExt">* Habla  Lengua Extranjera</asp:Label>
                <asp:DropDownList runat="server" ID="DropDownList4" ClientIDMode="Static" CssClass="form-control custom-select" AppendDataBoundItems="true">
                    <asp:ListItem Value="" Text="--- Habla Extranjera ---" Selected="True" />
                    <asp:ListItem Value="1" Text="Si" />
                    <asp:ListItem Value="2" Text="No" />
                   <%-- <asp:ListItem Value="3" Text="N/S" />--%>
                </asp:DropDownList>
                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator7" ClientIDMode="Static" ErrorMessage="* Selecciona una opción" ControlToValidate="habExt"
                        InitialValue="" ForeColor="Red" Font-Size="Small" Font-Italic="true" SetFocusOnError="true"/>
            </asp:Panel>
        
             <asp:Panel runat="server" CssClass="col-sm-4">
                    <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="pertEtniaIndg">* Pertenece Grupo Étnico</asp:Label>
                    <asp:DropDownList runat="server" ID="pertEtniaIndg" ClientIDMode="Static" CssClass="form-control custom-select" AppendDataBoundItems="true">
                        <asp:ListItem Value="" Text="--- Pertenece Grupo Etnico ---" Selected="True" />
                        <asp:ListItem Value="1" Text="Si" />
                        <asp:ListItem Value="2" Text="No" />
                        <%--<asp:ListItem Value="3" Text="N/S" />--%>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator runat="server" ID="pertEtniaIndg_validator" ClientIDMode="Static" ErrorMessage="* Selecciona una opción" ControlToValidate="pertEtniaIndg"
                        InitialValue="" ForeColor="Red" Font-Size="Small" Font-Italic="true" SetFocusOnError="true"/>
                </asp:Panel>
                </asp:Panel>
            <asp:Panel runat="server" CssClass="form-group">
                    <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="habIndg">* Habla Indigena</asp:Label>
                    <asp:DropDownList runat="server" ID="habIndg" ClientIDMode="Static" CssClass="form-control custom-select" AppendDataBoundItems="true">
                        <asp:ListItem Value="" Text="--- Habla Indigena ---" Selected="True" />
                        <asp:ListItem Value="1" Text="Si" />
                        <asp:ListItem Value="2" Text="No" />
                       <%-- <asp:ListItem Value="3" Text="N/S" />--%>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator runat="server" ID="habIndg_validator" ClientIDMode="Static" ErrorMessage="* Selecciona una opción" ControlToValidate="habIndg"
                        InitialValue="" ForeColor="Red" Font-Size="Small" Font-Italic="true" SetFocusOnError="true"/>
                </asp:Panel>
            <asp:Label runat="server" CssClass="font-weight-bold" ><h3>Formación educativa</h3></asp:Label>

        <asp:Panel runat="server" CssClass="row">
        <asp:Panel runat="server" CssClass="col-sm-4"> 
        <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="leer">* Sabe Leer</asp:Label>
                        <asp:DropDownList runat="server" ID="DropDownList5" ClientIDMode="Static" CssClass="form-control custom-select" AppendDataBoundItems="true">
                        <asp:ListItem Value="" Text="--- Sabe Leer ---" Selected="True" />
                        <asp:ListItem Value="1" Text="Si" />
                        <asp:ListItem Value="2" Text="No" />
                        <%--<asp:ListItem Value="3" Text="N/S" />--%>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator8" ClientIDMode="Static" ErrorMessage="* Selecciona una opción" ControlToValidate="leer"
                        InitialValue="" ForeColor="Red" Font-Size="Small" Font-Italic="true" />
                </asp:Panel>
                <asp:Panel runat="server" CssClass="col-sm-4">
                    <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="escri">* Sabe Escribir</asp:Label>
                    <asp:DropDownList runat="server" ID="DropDownList6" ClientIDMode="Static" CssClass="form-control custom-select" AppendDataBoundItems="true">
                        <asp:ListItem Value="" Text="--- Sabe Escribir ---" Selected="True" />
                        <asp:ListItem Value="1" Text="Si" />
                        <asp:ListItem Value="2" Text="No" />
                        <%--<asp:ListItem Value="3" Text="N/S" />--%>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator9" ClientIDMode="Static" ErrorMessage="* Selecciona una opción" ControlToValidate="escri"
                        InitialValue="" ForeColor="Red" Font-Size="Small" Font-Italic="true" SetFocusOnError="true"/>
                </asp:Panel>
                <asp:Panel runat="server" CssClass="col-sm-4">
                    <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="escolaridad">* Escolaridad</asp:Label>
                    <asp:DropDownList runat="server" ID="escolaridad" ClientIDMode="Static" CssClass="form-control custom-select" AppendDataBoundItems="true">
                        <asp:ListItem Value="" Text="--- Escolaridad ---" Selected="True" />
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator runat="server" ID="escolaridad_validator" ClientIDMode="Static" ErrorMessage="* Selecciona una opción de escolaridad" ControlToValidate="escolaridad"
                        InitialValue="" ForeColor="Red" Font-Size="Small" Font-Italic="true" SetFocusOnError="true"/>
                </asp:Panel>
            </asp:Panel>
               <%-- </asp:Panel>--%>
     
                                    
           <div class="form-group col-sm-4  m-0 p-2 form-group">

        <asp:LinkButton runat="server" ID="guardarAgr" AutoPostBack="true" CausesValidation="true" CssClass="btn  btn-primary"
                        Style="font-size: 20px; color: #767474; border-color: gray; background-color: #DAD7D7;" 
                         Visible="false">Guardar</asp:LinkButton>

           </div>
           </asp:Panel>
            </asp:Panel>
            </asp:Panel>
            <%--//-------------------------------------------------------------------------------- AGRESOR ------------------------------------------------------------------------------------//--%>

            <%--//-------------------------------------------------------------------------------- SEGUIMIENTO ------------------------------------------------------------------------------------//--%>
            <asp:Panel runat="server" ID="contenido_seguimiento" ClientIDMode="Static" CssClass="content container p-4" Visible ="false">
            <asp:Panel runat="server" CssClass="row">
                <img src="../img/proceso.png"/>
            </asp:Panel>
            </asp:Panel>
            <%--//-------------------------------------------------------------------------------- SEGUIMIENTO ------------------------------------------------------------------------------------//--%>

        </div>
    </form>
</body>
</html>
