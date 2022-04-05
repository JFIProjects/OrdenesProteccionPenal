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
    <link rel="stylesheet" href="../css/animate.css" />
    <link rel="stylesheet" href="../css/pnotify.custom.min.css" />

    <%--JS--%>
      <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" ></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="../js/Sesion.js"></script>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
<script src="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.9/jquery-ui.js" type="text/javascript"></script>
<link href="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.9/themes/start/jquery-ui.css"
    rel="stylesheet" type="text/css" />
     <script src="../css/pnotify.custom.min.js"></script>

                        <%--<script type="text/javascript">
                            var selected_tab = 1;
                            $(function () {
                                var tabs = $("#tabs").tabs({
                                    select: function (e, i) {
                                        selected_tab = i.index;
                                    }
                                });
                                selected_tab = $("[id$=selected_tab]").val() != "" ? parseInt($("[id$=selected_tab]").val()) : 0;
                                tabs.tabs('select', selected_tab);
                                $("form").submit(function () {
                                    $("[id$=selected_tab]").val(selected_tab);
                                });
                            });
                        </script>--%>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ajax_login" runat="server"/>
        <asp:UpdatePanel runat="server">
           <ContentTemplate>
        <div>
            <asp:Panel runat="server" class="container">
                <asp:Panel runat="server" class="row p-0 m-3">
                    <div class="col-sm-12 p-0 m-0 px-3 mt-2 mb-5 d-flex justify-content-center"><span style="color: #9d2424;font-size:28px;font-weight: bold;">Entrevista</span></div>
                
                <div class="col-sm-12  m-0 p-2 form-group">
                
                    <asp:Label runat="server" CssClass="" Style="font-weight: bold;">Buscar Aspirante</asp:Label>
                    <asp:Panel runat="server" ID="Panel1" CssClass="row">
                           
                    <asp:Panel runat="server" CssClass="input-group mb-3 col-8" Visible="true" ID="panelBusqueda">
                      <asp:TextBox runat="server" ID="busqueda" CssClass="form-control" ToolTip="Search" Height="50px"/>
                      <asp:Panel runat="server" CssClass="input-group-append">
                        <asp:Button runat="server" CssClass="btn btn-outline-primary" Text="Buscar" OnClick="PreparaCarga"/>
                      </asp:Panel>
                    </asp:Panel>

                    <asp:Panel runat="server" CssClass="alert alert-dark alert-dismissible" Visible="false" ID="panelExpediente">
                        <button runat="server" onserverclick="BorraBusqueda" type="button" class="close" data-dismiss="alert">&times;</button>
                        <asp:Label runat="server" ID="tag"></asp:Label>
                    </asp:Panel>

                     <axT:AutoCompleteExtender ServiceMethod="BuscaExpediente"
                 
                        MinimumPrefixLength="2"
                        CompletionInterval="100" EnableCaching="false" CompletionSetCount="10"
                        TargetControlID="busqueda"
                        ID="extesor" runat="server" FirstRowSelected = "false">
                    </axT:AutoCompleteExtender>

                 </asp:Panel>
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


                
                <asp:Panel runat="server" class="container">
                <asp:Panel runat="server" ID="entrevista">
                        <asp:Panel runat="server">

        <asp:Panel runat="server" id="tabs">

            <ul class="nav nav-tabs" style="background-color: #9d2424;">
                <li class="nav-item"><a style="color: white;text-decoration:none;" class="nav-link active" data-toggle="tab" href="#tabs1">Formación complementaria e intereses</a></li>
                <li class="nav-item"><a style="color: white;text-decoration:none;" class="nav-link " data-toggle="tab" href="#tabs2">Información relacionada con el Tribunal</a></li>
                <li class="nav-item"><a style="color: white;text-decoration:none;" class="nav-link " data-toggle="tab" href="#tabs3">Experiencia Profesional</a></li>
                <li class="nav-item"><a style="color: white;text-decoration:none;" class="nav-link " data-toggle="tab" href="#tabs4">Conocimientos en la materia de interés</a></li>
                <li class="nav-item"><a style="color: white;text-decoration:none;" class="nav-link " data-toggle="tab" href="#tabs5">Aspectos cualitativos de la información</a></li>
            </ul>

            <div class="tab-content">
            <asp:Panel runat="server" ID="tabs1" class="container tab-pane active">
                <h2>Formación complementaria e intereses</h2> <br />

                        <asp:Label ID="Label19" runat="server" Text="Rama o materia de interés"></asp:Label>
                        <asp:DropDownList ID="DropdownBoxMateria" runat="server" AppendDataBoundItems="true" class="form-control">
                        <asp:ListItem Value="" Text="--Seleccione--" Selected="True" />
                    </asp:DropDownList>
                <asp:RequiredFieldValidator runat="server" ID="DropdownBoxMateria_validator" ErrorMessage="* El campo no puede estar vació" ControlToValidate="DropdownBoxMateria"
                    ForeColor="Red" Font-Size="Small" Font-Italic="true" SetFocusOnError="true" Display="Dynamic" ValidationGroup="forcomint"/>

                 <asp:Panel runat="server" class="form-group col-md-12">
                    <asp:Label ID="Label1" runat="server" Text="¿Qué formación complementaria ha tenido relacionada con la materia (mencionar la materia de interés)?"></asp:Label>
                    <%--<asp:ListBox ID="listBox2" runat="server" AppendDataBoundItems="true" class="form-control" SelectionMode="Multiple">
                        <asp:ListItem Value="" Text="--Seleccione--" Selected="True" />
                    </asp:ListBox>--%>
                     <asp:CheckBoxList runat="server" ID="listBox2" CssClass="checkboxlist form-control" />
                </asp:Panel>

                 <asp:Panel runat="server" class="form-group col-md-12">
                    <asp:Label ID="Label2" runat="server" Text="¿Qué lo motiva a querer formar parte del grupo de meritorios para el Poder Judicial del Estado de México?"></asp:Label>
                    <%--<asp:ListBox ID="listBox3" runat="server" AppendDataBoundItems="true" class="form-control" SelectionMode="Multiple">
                        <asp:ListItem Value="" Text="--Seleccione--" Selected="True" />
                    </asp:ListBox>--%>
                     <asp:CheckBoxList runat="server" ID="listBox3" CssClass="checkboxlist form-control" />
                    <asp:TextBox ID="TextBox1" Visible="false" class="form-control" runat="server" placeholder="Especifique"></asp:TextBox>
                </asp:Panel>

                 <asp:Panel runat="server" class="form-group col-md-12">
                    <asp:Label ID="Label3" runat="server" Text="¿Cuál considera que sería su aportación al Poder Judicial al incorporarse al grupo de Meritorios?"></asp:Label>
                    <%--<asp:ListBox ID="listBox4" runat="server" AppendDataBoundItems="true" class="form-control" SelectionMode="Multiple">
                        <asp:ListItem Value="" Text="--Seleccione--" Selected="True" />
                    </asp:ListBox>--%>
                     <asp:CheckBoxList runat="server" ID="listBox4" CssClass="checkboxlist form-control" />
                    <asp:TextBox ID="TextBox2" Visible="false" class="form-control" runat="server" placeholder="Especifique"></asp:TextBox>
                </asp:Panel>

                 <asp:Panel runat="server" class="form-group col-md-12">
                    <asp:Label ID="Label4" runat="server" Text="¿Qué desarrollo profesional considera que puede alcanzar en el Poder Judicial del Estado México?"></asp:Label>
                                <asp:DropDownList ID="DropDownPregunta5" runat="server" AppendDataBoundItems="true"  class="form-control" AutoPostBack="True">
                                    <asp:ListItem Value="" Text="--Seleccione--" Selected="True" />
                                </asp:DropDownList>
                     <asp:RequiredFieldValidator runat="server" ID="DropDownPregunta5_validator" ErrorMessage="* El campo no puede estar vació" ControlToValidate="DropDownPregunta5"
                    ForeColor="Red" Font-Size="Small" Font-Italic="true" SetFocusOnError="true" Display="Dynamic" ValidationGroup="forcomint"/>
                </asp:Panel>

               

                <asp:LinkButton runat="server" ID="LinkButtonFormacion" AutoPostBack="true"  CssClass="btn  btn-primary"
                        style="font-size: 20px; color: #767474; border-color: gray; background-color: #DAD7D7;" 
                        OnClick="LinkButtonFormacion_Click" Visible="true" ValidationGroup="forcomint">Guardar</asp:LinkButton>

            </asp:Panel>
            <asp:Panel runat="server" ID="tabs2" class="container tab-pane fade">
                 <h2>Información relacionada con el Tribunal</h2> <br />

                <asp:Panel runat="server" class="form-group col-md-12">
                    <asp:Label ID="Label5" runat="server" Text="¿Tiene algún familiar o conocido que trabaje en el H. Tribunal Superior de Justicia?"></asp:Label>
                                <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="true"  class="form-control" >
                                    <asp:ListItem Value="" Text="--Seleccione--" Selected="True" />
                                </asp:DropDownList>
                </asp:Panel>

                <asp:Panel runat="server" class="form-group col-md-12">
                    <asp:Label ID="Label6" runat="server" Text="Parentezco"></asp:Label>
                    <%--<asp:ListBox ID="listBoxParentezco" runat="server" AppendDataBoundItems="true" class="form-control" SelectionMode="Multiple">
                        <asp:ListItem Value="" Text="--Seleccione--" Selected="True" />
                    </asp:ListBox>--%>
                    <asp:CheckBoxList runat="server" ID="listBoxParentezco" CssClass="checkboxlist form-control" />
                </asp:Panel>

                <asp:Panel runat="server" class="form-group col-md-12">
                    <asp:Label ID="LabelNombre" runat="server" Text="Nombre"></asp:Label>
                    <asp:TextBox ID="texNombrep1" type="text" runat="server" class="form-control"  />
                </asp:Panel>
        
                <asp:Panel runat="server" class="form-group col-md-12">
                    <asp:Label ID="Label7" runat="server" Text="Cargo"></asp:Label>
                    <%--<asp:ListBox ID="listBoxCargo" runat="server" AppendDataBoundItems="true" class="form-control" SelectionMode="Multiple">
                        <asp:ListItem Value="" Text="--Seleccione--" Selected="True" />
                    </asp:ListBox>--%>
                    <asp:CheckBoxList runat="server" ID="listBoxCargo" CssClass="checkboxlist form-control" />
                    <asp:TextBox ID="TextBox4" Visible="false" class="form-control" runat="server" placeholder="Especifique"></asp:TextBox>
                </asp:Panel>
                
                <asp:LinkButton runat="server" ID="LinkButtonTribunal" AutoPostBack="true"  CssClass="btn  btn-primary"
                                        style="font-size: 20px; color: #767474; border-color: gray; background-color: #DAD7D7;" 
                                        OnClick="LinkButtonTribunal_Click" Visible="true">Guardar</asp:LinkButton>

            </asp:Panel>
            <asp:Panel runat="server" ID="tabs3" class="container tab-pane fade">
                 <h2>Experiencia Profesional</h2>

                <asp:Panel runat="server" class="form-group col-md-12">
                    <asp:Label ID="Label8" runat="server" Text="¿Ha realizado alguna actividad o trabajo en el campo del Derecho?"></asp:Label>
                                <asp:DropDownList ID="DropDownList2" runat="server" AppendDataBoundItems="true"  class="form-control" >
                                    <asp:ListItem Value="" Text="--Seleccione--" Selected="True" />
                                </asp:DropDownList>
                </asp:Panel>

               <asp:Panel runat="server" class="form-group col-md-12">
                    <asp:Label ID="Label9" runat="server" Text="¿Cuánto tiempo le dedico a esta actividad?"></asp:Label>
                                <asp:DropDownList ID="DropDownList3" runat="server" AppendDataBoundItems="true"  class="form-control" >
                                    <asp:ListItem Value="" Text="--Seleccione--" Selected="True" />
                                </asp:DropDownList>
                </asp:Panel>

                <asp:Panel runat="server" class="form-group col-md-12">
                    <asp:Label ID="Label10" runat="server" Text="¿Cómo considera que esa experiencia le puede ser de utilidad en sus prácticas Meritorias?"></asp:Label>
                                <asp:DropDownList ID="DropDownList4" runat="server" AppendDataBoundItems="true"  class="form-control" >
                                    <asp:ListItem Value="" Text="--Seleccione--" Selected="True" />
                                </asp:DropDownList>
                </asp:Panel>

                <asp:LinkButton runat="server" ID="LinkButtonExperiencia" AutoPostBack="true"  CssClass="btn  btn-primary"
                        style="font-size: 20px; color: #767474; border-color: gray; background-color: #DAD7D7;" 
                        OnClick="LinkButtonExperiencia_Click" Visible="true">Guardar</asp:LinkButton>
        
            </asp:Panel>
            <asp:Panel runat="server" ID="tabs4" class="container tab-pane fade">
                 <h2>Conocimientos en la materia de interés</h2>

                <asp:Panel runat="server" class="form-group col-md-12">
                    <asp:Label ID="Label11" runat="server" Text="Pregunta en materia de interés 1"></asp:Label>
                    <asp:TextBox ID="TextBoxPregunta1" CssClass="form-control" runat="server" placeholder="Especifique"></asp:TextBox>

                    <asp:DropDownList ID="DropDownList5" runat="server" AppendDataBoundItems="true" class="form-control" >
                        <asp:ListItem Value="" Text="--Seleccione--" Selected="True" />
                    </asp:DropDownList>
                </asp:Panel>

                <asp:Panel runat="server" class="form-group col-md-12">
                    <asp:Label ID="Label12" runat="server" Text="Pregunta en materia de interés 2"></asp:Label>
                    <asp:TextBox ID="TextBoxPregunta2" CssClass="form-control" runat="server" placeholder="Especifique"></asp:TextBox>

                    <asp:DropDownList ID="DropDownList6" runat="server" AppendDataBoundItems="true" class="form-control" >
                        <asp:ListItem Value="" Text="--Seleccione--" Selected="True" />
                    </asp:DropDownList>
                </asp:Panel>

                <asp:Panel runat="server" class="form-group col-md-12">
                    <asp:Label ID="Label13" runat="server" Text="Pregunta en materia de interés 3"></asp:Label>
                    <asp:TextBox ID="TextBoxPregunta3" CssClass="form-control" runat="server" placeholder="Especifique"></asp:TextBox>

                <asp:DropDownList ID="DropDownList7" runat="server" AppendDataBoundItems="true" class="form-control" >
                        <asp:ListItem Value="" Text="--Seleccione--" Selected="True" />
                    </asp:DropDownList>
                </asp:Panel>

                <asp:LinkButton runat="server" ID="LinkButtonConocimientos" AutoPostBack="true"  CssClass="btn  btn-primary"
                        style="font-size: 20px; color: #767474; border-color: gray; background-color: #DAD7D7;" 
                        OnClick="LinkButtonConocimientos_Click" Visible="true">Guardar</asp:LinkButton>
            </asp:Panel>
            <asp:Panel runat="server" ID="tabs5" class="container tab-pane fade">
                 <h2>Aspectos cualitativos de la información</h2>

                <asp:Panel runat="server" class="form-group col-md-12">
                    <asp:Label ID="Label14" runat="server" Text="Aspecto personal"></asp:Label>
                    <asp:DropDownList ID="DropDownList8" runat="server" AppendDataBoundItems="true" class="form-control">
                        <asp:ListItem Value="" Text="--Seleccione--" Selected="True" />
                    </asp:DropDownList>
                </asp:Panel>

                <asp:Panel runat="server" class="form-group col-md-12">
                    <asp:Label ID="Label15" runat="server" Text="Forma de expresión"></asp:Label>
                    <asp:DropDownList ID="DropDownList9" runat="server" AppendDataBoundItems="true" class="form-control" >
                        <asp:ListItem Value="" Text="--Seleccione--" Selected="True" />
                    </asp:DropDownList>
                </asp:Panel>

                <asp:Panel runat="server" class="form-group col-md-12">
                    <asp:Label ID="Label16" runat="server" Text="Interés profesional"></asp:Label>
                    <asp:DropDownList ID="DropDownList10" runat="server" AppendDataBoundItems="true" class="form-control" >
                        <asp:ListItem Value="" Text="--Seleccione--" Selected="True" />
                    </asp:DropDownList>
                </asp:Panel>

                <asp:Panel runat="server" class="form-group col-md-12">
                    <asp:Label ID="Label17" runat="server" Text="Actitud en la entrevista"></asp:Label>
                    <asp:DropDownList ID="DropDownList11" runat="server" AppendDataBoundItems="true" class="form-control" >
                        <asp:ListItem Value="" Text="--Seleccione--" Selected="True" />
                    </asp:DropDownList>
                </asp:Panel>

                <asp:Panel runat="server" class="form-group col-md-12">
                    <asp:Label ID="Label18" runat="server" Text="Elementos que considera pudieron afectar el desempeño del candidato en la entrevista"></asp:Label>
                    <asp:DropDownList ID="DropDownList12" runat="server" AppendDataBoundItems="true" class="form-control" >
                        <asp:ListItem Value="" Text="--Seleccione--" Selected="True" />
                    </asp:DropDownList>
                </asp:Panel>

                <asp:LinkButton runat="server" ID="LinkButtonAspectos" AutoPostBack="true"  CssClass="btn  btn-primary"
                        style="font-size: 20px; color: #767474; border-color: gray; background-color: #DAD7D7;" 
                        OnClick="LinkButtonAspectos_Click" Visible="true">Guardar</asp:LinkButton>
            </asp:Panel>
                </div>

        </asp:Panel>
        <asp:HiddenField ID="selected_tab" runat="server" />
<%--         <asp:LinkButton runat="server" ID="LinkButtonG" AutoPostBack="true"  CssClass="btn  btn-primary"
                        style="font-size: 20px; color: #767474; border-color: gray; background-color: #DAD7D7;" 
                        OnClick="LinkButtonG_Click" Visible="false">Guardar</asp:LinkButton>--%>
 
                        </asp:Panel>
                    </asp:Panel>
                    </asp:Panel>


                </asp:Panel>        
        </div>
        </ContentTemplate>
        </asp:UpdatePanel>

                
    </form>
</body>
</html>
