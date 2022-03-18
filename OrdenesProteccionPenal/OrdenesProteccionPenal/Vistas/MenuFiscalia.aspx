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
            <asp:Panel runat="server" ID="Menu" class="container p-3 my-3 border">
                <asp:Panel runat="server" class="row col-xl">
                  <asp:Panel runat="server" class="col-sm-3"><asp:LinkButton runat="server" style="text-decoration:none;color: dimgray;">Solicitud</asp:LinkButton></asp:Panel>
                  <asp:Panel runat="server" class="col-sm-3"><asp:LinkButton runat="server" style="text-decoration:none;color: dimgray;">Victima</asp:LinkButton></asp:Panel>
                  <asp:Panel runat="server" class="col-sm-3"><asp:LinkButton runat="server" style="text-decoration:none;color: dimgray;">Agresor</asp:LinkButton></asp:Panel>
                  <asp:Panel runat="server" class="col-sm-3"><asp:LinkButton runat="server" style="text-decoration:none;color: dimgray;">Seguimiento</asp:LinkButton></asp:Panel>
                </asp:Panel>             
            </asp:Panel>

           
           <%--//-------------------------------------------------------------------------------- SOLICITUD ------------------------------------------------------------------------------------//--%>
            <asp:Panel runat="server" ID="contenido_orden" ClientIDMode="Static" CssClass="content container p-4" Visible ="true">
        <asp:Panel runat="server" CssClass="row">

            <asp:Panel runat="server" CssClass="form-group col-xl-12 p-0">
                <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="solicitud">Número Solicitud</asp:Label>
                <asp:Label runat="server" ID="solicitud" ClientIDMode="Static" placeholder="00000/0000" CssClass="form-control form-control-sm" />
            </asp:Panel>

            <asp:Panel runat="server" CssClass="form-group col-xl-12 p-0">
                <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="expediente">* Expediente</asp:Label>
                <asp:TextBox runat="server" ID="expediente" ClientIDMode="Static" placeholder="00000/0000" CssClass="form-control form-control-sm" />
                <asp:RequiredFieldValidator runat="server" ID="expediente_validator" ErrorMessage="* El nombre(s) no puede estar vació" ControlToValidate="expediente"
                    ForeColor="Red" Font-Size="Small" Font-Italic="true" SetFocusOnError="true" Display="Dynamic" />
                <asp:RegularExpressionValidator ID="expediente_reg_validator" runat="server" ControlToValidate="expediente" ValidationExpression="\d{1,5}/\d{4}"
                    AutoComplete="true" OnInvalidCssClass="text-danger" ErrorMessage="El expediente no tiene el formato requerido" SetFocusOnError="true"
                    ForeColor="Red" Font-Size="Small" Font-Italic="true" Display="Dynamic" />
            </asp:Panel>

            <asp:Panel runat="server" CssClass="form-group  col-xl-12 p-0">
                <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="juzgado">Juzgado</asp:Label>
                <asp:DropDownList runat="server" ID="juzgado" ClientIDMode="Static" CssClass="form-control custom-select custom-select-sm" AppendDataBoundItems="true" />
                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator2" ErrorMessage="* Selecciona una opción" ControlToValidate="juzgado"
                    InitialValue="" ForeColor="Red" Font-Size="Small" Font-Italic="true" SetFocusOnError="true" />
            </asp:Panel>

            <asp:Panel runat="server" CssClass="form-group col-xl-12 p-0">
                <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="medidas_protec">Medidas de protección</asp:Label>
                <asp:CheckBoxList runat="server" ID="medidas_protec" CssClass="checkboxlist form-control"  AutoPostBack="true" />
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
                    <axT:CalendarExtender runat="server" TargetControlID="emision" Format="dd/MM/yyyy" PopupButtonID="emision_icon" />
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
                        MessageValidatorTip="true" AutoComplete="true" OnInvalidCssClass="text-danger" />
                    <axT:MaskedEditValidator ID="fin_validator" runat="server" ControlExtender="fin_extender" ControlToValidate="fin" IsValidEmpty="false" EmptyValueMessage="* Fecha emisión no puede estar vació"
                        InvalidValueMessage="* Fecha no valida" ForeColor="Red" Font-Size="Small" Font-Italic="true" Display="Dynamic" />
                    <axT:CalendarExtender runat="server" TargetControlID="fin" Format="dd/MM/yyyy hh:mm:ss" PopupButtonID="fin_icon" />

                </asp:Panel>

                <asp:CheckBox runat="server" ID="situacion_riesgo" ClientIDMode="Static" CssClass="form-group custom-control custom-switch col-xl-6" 
                    AutoPostBack="true" Text="Hasta que cese la situación de riesgo" name="riesgo" />

            </asp:Panel>

            <asp:CheckBox runat="server" ID="juicio" ClientIDMode="Static" CssClass="form-group custom-control custom-switch col-xl-12" 
                AutoPostBack="true" Text="¿La orden de protección está relacionada con un asunto penal?" name="juicio" />

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

            <asp:CheckBox runat="server" ID="aver" ClientIDMode="Static" CssClass="form-group custom-control custom-switch col-xl-12" 
                AutoPostBack="true" Text="¿La orden de protección está relacionada con una carpeta de investigación?" name="aver" />


            <asp:Panel runat="server" ID="aver_panel" Visible="false" CssClass="col-xl-12 p-0">
                <hr />
                <h4 runat="server">Carpeta de Investigación</h4>

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
                    <asp:Panel runat="server" CssClass="form-group">
                        <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="exp_aver">Número de causa o expediente</asp:Label>
                        <asp:TextBox runat="server" ID="exp_aver" ClientIDMode="Static" placeholder="" CssClass="form-control form-control-sm" />
                        <asp:RequiredFieldValidator runat="server" ID="exp_aver_validator" ErrorMessage="* Expediente no puede estar vació" ControlToValidate="exp_juicio"
                            ForeColor="Red" Font-Size="Small" Font-Italic="true" SetFocusOnError="true" />
                      
                    </asp:Panel>

                </asp:Panel>
            </asp:Panel>

            <asp:Panel runat="server" CssClass="form-group col-xl-12 p-0">
                <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="violencia_familiar">Juicio de violencia familiar</asp:Label>
                <asp:RadioButtonList ID="violencia_familiar" runat="server" RepeatDirection="Horizontal"  AutoPostBack="true">
                    <asp:ListItem Value="si">Si</asp:ListItem>
                    <asp:ListItem Value="no">No</asp:ListItem>
                </asp:RadioButtonList>
                <asp:RequiredFieldValidator runat="server" ID="violencia_familiar_validator" ErrorMessage="* Se debe elegir una opcion" ControlToValidate="violencia_familiar"
                    ForeColor="Red" Font-Size="Small" Font-Italic="true" SetFocusOnError="true" />
            </asp:Panel>

            <asp:Panel runat="server" CssClass="col-xl-12" ID="panel_juicios" Visible="false">
                <asp:Panel runat="server" CssClass="form-group ">
                    <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="juicios">Pretensión principal</asp:Label>
                    <asp:DropDownList runat="server" ID="juicios" ClientIDMode="Static" CssClass="form-control custom-select custom-select-sm" AppendDataBoundItems="true">
                        <asp:ListItem Value="" Text="--- Selecciona Juicio ---" Selected="True" />
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator runat="server" ID="juicios_validator" ClientIDMode="Static" ErrorMessage="* Selecciona una opción" ControlToValidate="juicios"
                        InitialValue="" ForeColor="Red" Font-Size="Small" Font-Italic="true" SetFocusOnError="true" />
                </asp:Panel>
            </asp:Panel>


            <hr class="my-4 col-xl-12 p-0" />
            <asp:Label runat="server" Text="DATOS INICIALES VICTIMA" CssClass="col-xl-12 p-0 mb-3" />

            <asp:Panel runat="server" CssClass="col-xl-12 p-0">

                <asp:GridView runat="server" ID="tabla_victimas" CssClass="tabla_historial table table-striped font_tabla_citas"
                    AutoGenerateColumns="False" AllowPaging="true" PageSize="5" DataKeyNames="IdVictima" GridLines="None"
                    EmptyDataText="No hay victimas registradas" PagerSettings-Mode="NumericFirstLast">
                    <Columns>
                        <asp:TemplateField HeaderText="No." ItemStyle-Width="10%">
                            <ItemTemplate>
                                <%# Container.DataItemIndex + 1 %>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="Nombre" HeaderText="Nombre" ItemStyle-Width="30%" />
                        <asp:BoundField DataField="Paterno" HeaderText="Primer Apellido" ItemStyle-Width="30%" />
                        <asp:BoundField DataField="Materno" HeaderText="Segundo Apellido" ItemStyle-Width="30%" />
                    </Columns>
                </asp:GridView>

                <asp:Button runat="server" Text="Agregar Victima" ID="boton_agregar_victima" CausesValidation="false" CssClass="btn btn-secondary" />
            </asp:Panel>


            <asp:Panel runat="server" CssClass="form-group p-0 col-xl-12 row" ID="panel_victima" Visible="false" Enabled="false">
                <asp:Panel runat="server" CssClass="form-group col-xl-4">
                    <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="nombre_victima">Nombre(s)</asp:Label>
                    <asp:TextBox runat="server" ID="nombre_victima" ClientIDMode="Static" placeholder="Nombre(s)" CssClass="form-control form-control-sm" />
                    <asp:RequiredFieldValidator runat="server" ID="nombre_victima_validator" ErrorMessage="* El nombre(s) no puede estar vació" ControlToValidate="nombre_victima"
                        ForeColor="Red" Font-Size="Small" Font-Italic="true" ValidationGroup="victima_group" SetFocusOnError="true" />
                </asp:Panel>
                <asp:Panel runat="server" CssClass="form-group col-xl-4">
                    <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="paterno_victima">Primer Apellido</asp:Label>
                    <asp:TextBox runat="server" ID="paterno_victima" ClientIDMode="Static" placeholder="Primer Apellido" CssClass="form-control  form-control-sm" />
                    <asp:RequiredFieldValidator runat="server" ID="paterno_victima_validator" ErrorMessage="* El primer apellido no puede estar vació" ControlToValidate="paterno_victima"
                        ForeColor="Red" Font-Size="Small" Font-Italic="true" ValidationGroup="victima_group" SetFocusOnError="true" />
                </asp:Panel>
                <asp:Panel runat="server" CssClass="form-group col-xl-4">
                    <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="materno_Victima">Segundo Apellido</asp:Label>
                    <asp:TextBox runat="server" ID="materno_Victima" ClientIDMode="Static" placeholder="Segundo Apellido" CssClass="form-control form-control-sm" />
                    <asp:RequiredFieldValidator runat="server" ID="materno_Victima_validator" ErrorMessage="* El segundo apellido no puede estar vació" ControlToValidate="materno_Victima"
                        ForeColor="Red" Font-Size="Small" Font-Italic="true" ValidationGroup="victima_group" SetFocusOnError="true" />
                </asp:Panel>
                <asp:Panel runat="server" CssClass="col-xl-12 p-0">
                    <asp:Button runat="server" ID="gv" Text="Guardar Victima"  CssClass="btn btn-secondary" ValidationGroup="victima_group" />
                    <asp:Button runat="server" Text="Cancelar"  CausesValidation="false" CssClass="btn btn-secondary" />
                </asp:Panel>

            </asp:Panel>


            <hr class="my-4 col-xl-12 p-0" />

            <asp:Label runat="server" Text="DATOS INICIALES AGRESOR" CssClass="col-xl-12 p-0 mb-3" />

            <asp:Panel runat="server" CssClass="col-xl-12 p-0">

                <asp:GridView runat="server" ID="tabla_agresores" CssClass="tabla_historial table table-striped font_tabla_citas"
                    AutoGenerateColumns="False" AllowPaging="true" PageSize="5" DataKeyNames="IdAgresor" GridLines="None"
                    EmptyDataText="No hay agresores registradas" PagerSettings-Mode="NumericFirstLast">
                    <Columns>
                        <asp:TemplateField HeaderText="No." ItemStyle-Width="5%">
                            <ItemTemplate>
                                <%# Container.DataItemIndex + 1 %>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="Nombre" HeaderText="Nombre" ItemStyle-Width="25%" />
                        <asp:BoundField DataField="Primer_apellido" HeaderText="Primer Apellido" ItemStyle-Width="20%" />
                        <asp:BoundField DataField="Segundo_apellido" HeaderText="Segundo Apellido" ItemStyle-Width="20%" />
                        
                    </Columns>
                </asp:GridView>

                <asp:Button runat="server" Text="Agregar Agresor" ID="boton_agregar_agresor"  CausesValidation="false" CssClass="btn btn-secondary" />
            </asp:Panel>

            <asp:Panel runat="server" CssClass="form-group row p-0 col-xl-12" ID="panel_agresor" Visible="false" Enabled="false">
                <asp:Panel runat="server" CssClass="form-group col-xl-4">
                    <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="nombre_agresor">Nombre(s)</asp:Label>
                    <asp:TextBox runat="server" ID="nombre_agresor" ClientIDMode="Static" placeholder="Nombre(s)" CssClass="form-control form-control-sm" />
                    <asp:RequiredFieldValidator runat="server" ID="nombre_agresor_validator" ErrorMessage="* El nombre(s) no puede estar vació" ControlToValidate="nombre_agresor"
                        ForeColor="Red" Font-Size="Small" Font-Italic="true" ValidationGroup="agresor_group" SetFocusOnError="true" />
                </asp:Panel>
                <asp:Panel runat="server" CssClass="form-group col-xl-4">
                    <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="paterno_agresor">Primer Apellido</asp:Label>
                    <asp:TextBox runat="server" ID="paterno_agresor" ClientIDMode="Static" placeholder="Primer Apellido" CssClass="form-control form-control-sm" />
                    <asp:RequiredFieldValidator runat="server" ID="paterno_agresor_validator" ErrorMessage="* El primer apellido no puede estar vació" ControlToValidate="paterno_agresor"
                        ForeColor="Red" Font-Size="Small" Font-Italic="true" ValidationGroup="agresor_group" SetFocusOnError="true" />
                </asp:Panel>
                <asp:Panel runat="server" CssClass="form-group col-xl-4">
                    <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="materno_agresor">Segundo Apellido</asp:Label>
                    <asp:TextBox runat="server" ID="materno_agresor" ClientIDMode="Static" placeholder="Segundo Apellido" CssClass="form-control form-control-sm" />
                    <asp:RequiredFieldValidator runat="server" ID="materno_agresor_validator" ErrorMessage="* El segundo apellido no puede estar vació" ControlToValidate="materno_agresor"
                        ForeColor="Red" Font-Size="Small" Font-Italic="true" ValidationGroup="agresor_group" SetFocusOnError="true" />
                </asp:Panel>

                <asp:Panel runat="server" CssClass="col-xl-12 p-0">
                    <asp:Button runat="server" ID="ga" Text="Guardar Agresor"  CssClass="btn btn-secondary" ValidationGroup="agresor_group" />
                    <asp:Button runat="server" Text="Cancelar"  CausesValidation="false" CssClass="btn btn-secondary" />
                </asp:Panel>

            </asp:Panel>
            <asp:Panel runat="server" CssClass="col-xl-12 d-flex justify-content-center">
                <asp:Button runat="server" ID="guardar"  Text="Guardar" CssClass="btn btn-secondary" />
            </asp:Panel>

        </asp:Panel>

    </asp:Panel>
           <%--//-------------------------------------------------------------------------------- SOLICITUD ------------------------------------------------------------------------------------//--%>

        </div>
    </form>
</body>
</html>
