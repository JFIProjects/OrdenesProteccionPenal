<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ceavem.aspx.cs" Inherits="OrdenesProteccionPenal.Vistas.Ceavem" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
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
                  <asp:Panel runat="server" class="col-sm-2 p-2"></asp:Panel>
                  <asp:Panel runat="server" class="col-sm-2 p-2"></asp:Panel>
                  <asp:Panel runat="server" class="col-sm-2 p-2"></asp:Panel>
                  <asp:Panel runat="server" class="col-sm-2 p-2"></asp:Panel>
                  <asp:Panel runat="server" class="col-sm-2 p-2"><a href="MenuPrincipal.aspx" style="color: white;text-decoration:none;">Regresar al menú</a></asp:Panel>
                  <asp:Panel runat="server" class="col-sm-2 p-1"><asp:LinkButton runat="server" style="text-decoration:none;color: white;" class="btn btn-dark" CausesValidation="false" OnClick="btnCerrar_Click"  Autopostback ="true">Cerrar Sesión</asp:LinkButton></asp:Panel>
                </asp:Panel>             
            </asp:Panel>
                </asp:Panel>


            <asp:Panel runat="server" ID="contenido_orden" ClientIDMode="Static" CssClass="content container p-4" Visible ="true">
                <h3><asp:Label runat="server" CssClass="font-weight-bold">CEAVEM</asp:Label></h3> <br />
        <asp:Panel runat="server" CssClass="row">
            <asp:Panel runat="server" CssClass="row col-xl-12 p-0">
            <asp:Panel runat="server" CssClass="form-group col-xl-12">
                    <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="emision">* Fecha de Ingreso</asp:Label>
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

                <asp:Panel runat="server" CssClass="form-group col-xl-4">
                    <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="inicio">* Fecha de Examen de Valoración</asp:Label>
                    <asp:Panel runat="server" ClientIDMode="AutoID" CssClass="input-group">
                        <asp:TextBox ID="inicio" ClientIDMode="Static" runat="server" placeholder="dd/MM/yyyy hh:mm:ss" CssClass="form-control form-control-sm" ValidationGroup="groupagregar" />
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

                <asp:Panel runat="server" ID="EspecOtro" CssClass="form-group col-xl-7 p-0">
                    <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="espec_otro">* Resultado de la Evaluación</asp:Label>
                    <asp:TextBox runat="server" ID="espec_otro" ClientIDMode="Static" placeholder="Especifique Medida de Protección" CssClass="form-control custom-select-sm" ValidationGroup="groupagregar" />
                    <asp:RequiredFieldValidator runat="server" ID="espec_otro_validator" ErrorMessage="* Especifique Medida de Protección no puede estar vacio" ControlToValidate="espec_otro"
                        ForeColor="Red" Font-Size="Small" Font-Italic="true" SetFocusOnError="true" />
                </asp:Panel>

                <asp:Panel runat="server" class="form-group col-xl-1">
                    <asp:Button ID="ButtonAgregar" runat="server" Text="Agregar" OnClick="ButtonAgregar_Click" class="btn btn-secondary" AutoPostBack="true" style="margin-top: 35%;" ValidationGroup="groupagregar"/>
                </asp:Panel>


                <asp:Panel runat="server" class="form-group row" Style="width: 100%;" ID="panelUno">
                    <asp:Panel runat="server" Style="width: 50%; margin: 0 auto;">
                        <asp:GridView runat="server" ID="llenatablaEvaluacion" CssClass="table table-striped table-bordered"
                            AutoGenerateColumns="False" GridLines="None"
                            EmptyDataText="No se ha agregado información" ShowHeaderWhenEmpty="true" OnPageIndexChanging="paginadorEvaluacion" AllowPaging="true">
                            <Columns>
                                <asp:BoundField DataField="fecha" HeaderText="Fecha de examen" />
                                <asp:BoundField DataField="resultado" HeaderText="Resultado de la evaluación" />
                            </Columns>
                        </asp:GridView>
                    </asp:Panel>
                </asp:Panel>

                <hr />

                    <asp:Panel runat="server" CssClass="form-group col-xl-4">
                    <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="fecha_medida">* Fecha de Examen de Valoración</asp:Label>
                    <asp:Panel runat="server" ClientIDMode="AutoID" CssClass="input-group">
                        <asp:TextBox ID="fecha_medida" ClientIDMode="Static" runat="server" placeholder="dd/MM/yyyy hh:mm:ss" CssClass="form-control form-control-sm" ValidationGroup="groupmedidas" />
                        <asp:Label runat="server" CssClass="input-group-append">
                            <asp:Label runat="server" ID="fecha_medida_icon" ClientIDMode="Static" CssClass="input-group-text bg-danger">
                                <asp:Label runat="server" CssClass="text-white far fa-calendar-alt"/>
                            </asp:Label>
                        </asp:Label>
                    </asp:Panel>
                    <axT:MaskedEditExtender ID="fecha_medida_extender" runat="server" TargetControlID="fecha_medida" MaskType="DateTime" Mask="99/99/9999 99:99:99"
                        MessageValidatorTip="true" AutoComplete="true" OnInvalidCssClass="text-danger" />
                    <axT:MaskedEditValidator ID="fecha_medida_validator" runat="server" ControlExtender="fecha_medida_extender" ControlToValidate="fecha_medida" IsValidEmpty="false"
                        EmptyValueMessage="* Fecha fecha_medida no puede estar vació" InvalidValueMessage="Fecha no valida" ForeColor="Red" Font-Size="Small" Font-Italic="true" Display="Dynamic" />
                    <axT:CalendarExtender runat="server" TargetControlID="fecha_medida" Format="dd/MM/yyyy hh:mm:ss" PopupButtonID="fecha_medida_icon" />
                </asp:Panel>


                <asp:Panel runat="server" CssClass="form-group col-xl-7 p-0">
                    <asp:Label runat="server" CssClass="font-weight-bold" AssociatedControlID="medidas_protec2">Medidas de apoyo</asp:Label>
                    <asp:Panel runat="server" data-bs-spy="scroll" data-bs-target="#navbar-example2" data-bs-offset="0" class="scrollspy-example" TabIndex="0">

                        <asp:DropDownList runat="server" ID="medidas_protec2" ClientIDMode="Static" CssClass="form-control custom-select custom-select-sm" AppendDataBoundItems="true" ValidationGroup="groupmedidas">
                            <asp:ListItem Value="0" Text="--Seleccione--" Selected="True" />
                            <asp:ListItem Value="1" Text="Prueba1" />
                        </asp:DropDownList>
                    </asp:Panel>


                </asp:Panel>

                <asp:Panel runat="server" class="form-group col-xl-1">
                    <asp:Button ID="ButtonMedida" runat="server" Text="Agregar Medida" OnClick="ButtonMedida_Click1" class="btn btn-secondary" AutoPostBack="true" Style="margin-top: 35%;" ValidationGroup="groupmedidas" />
                </asp:Panel>





                    <asp:Panel runat="server" Style="width: 75%; margin: 0 auto;">
                        <asp:GridView runat="server" ID="llenatablaMedidas" CssClass="table table-striped table-bordered"
                            AutoGenerateColumns="False" GridLines="None"
                            EmptyDataText="No se ha agregado información" ShowHeaderWhenEmpty="true" OnPageIndexChanging="paginadorMedidas" AllowPaging="true">
                            <Columns>
                                <asp:BoundField DataField="fecha" HeaderText="Fecha Medida" />
                                <asp:BoundField DataField="resultado" HeaderText="Medida" />
                            </Columns>
                        </asp:GridView>
                    </asp:Panel>

                </asp:Panel>
            </asp:Panel>
                </asp:Panel>
        </div>
    </form>
</body>
</html>
