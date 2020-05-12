<%@ Page Title="" Language="C#" MasterPageFile="~/Administrador.Master" AutoEventWireup="true" CodeBehind="RegistroProductos.aspx.cs" Inherits="Negocio.RegistroProductos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .Titulo{
            text-align: center;
            font-family: 'Century Gothic'; 
            font-size: xx-large; 
            font-weight: 200; 
            font-style: normal; 
            font-variant: normal; 
            color: #c506f3;
        }
        .auto-style5 {
            text-align: right;
            width: 547px;
            font-family: 'Century Gothic'; 
            font-size: x-large; 
            font-weight: 200; 
            font-style: normal; 
            font-variant: normal; 
            color:#808080;
        }
        .auto-style7 {
            text-align: left;
        }
        .auto-style8 {
            text-align: right;text-align: right;
            width: 547px;
            font-family: 'Century Gothic'; 
            font-size: x-large; 
            font-weight: 200; 
            font-style: normal; 
            font-variant: normal; 
            color:#808080;
        }
        .auto-style9 {
            text-align: center;
        }
        .caja{
            -webkit-border-radius: 5px;
             border-radius: 5px;
             
        }
        .Boton{
                border: none;
                outline: none;
                height: 40px;
                background: #77f7ac;
                color: #ffffff;
                font-size: 18px;
                border-radius: 5px;
        }
        .auto-style10 {
            margin-left: 0px;
            margin-right: 51px;
        } 
        body {
            background: #FEFEFE;
            background-image: url(../Imagenes/pa.jpg);
            background-repeat: no-repeat;
            background-attachment: fixed;
            height: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
            <table style="width:100%;">
            <tr>
                <td colspan="2" class="Titulo">Registro de Productos</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label1" runat="server" Text="Nombre:"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="txtNombre" runat="server" CssClass="caja"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNombre" EnableClientScript="False" ErrorMessage="*Campo requerido" ForeColor="Red"></asp:RequiredFieldValidator>
            </tr>
            <br />
            <br />
            <tr>
                <td colspan="2" class="auto-style9">
                     <asp:Image ID="imgImagen" runat="server" width="138px" height="76px" CssClass="auto-style10" />
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                     <asp:Label ID="Label4" runat="server" Text="Categoria:" ></asp:Label>
                    
                </td>
                <td class="auto-style7">
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="120px" >
                        <asp:ListItem>Pasteles</asp:ListItem>
                        <asp:ListItem>Cookies</asp:ListItem>
                        <asp:ListItem>Pays</asp:ListItem>
                        <asp:ListItem>Cupcakes</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DropDownList1" EnableClientScript="False" ErrorMessage="*Seleccione una categoria." ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
               <td class="auto-style8">
                  <asp:Label ID="Label2" runat="server" Text="Precio:"></asp:Label>
               </td>
                <td class="auto-style7">
                    <asp:TextBox ID="txtPrecio" runat="server" CssClass="caja"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtPrecio" EnableClientScript="False" ErrorMessage="*Formato no válido" ForeColor="Red" ValidationExpression="^\d*$"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtPrecio" EnableClientScript="False" ErrorMessage="*Campo requerido" ForeColor="Maroon"></asp:RequiredFieldValidator>
                 </td>
            </tr>
            <tr>
                <td class="auto-style8">

                    <asp:Label ID="Label11" runat="server" Text="Cantidad:"></asp:Label>

                </td>
                <td>

                    <asp:TextBox ID="TxtBxCantidad" runat="server" CssClass="caja"></asp:TextBox>

                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TxtBxCantidad" EnableClientScript="False" ErrorMessage="*Formato no válido" ForeColor="Red" ValidationExpression="^\d+$"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TxtBxCantidad" EnableClientScript="False" ErrorMessage="*Campo requerido " ForeColor="Maroon"></asp:RequiredFieldValidator>

                </td>
            </tr>
            <tr>
                 <td class="auto-style8">

                    <asp:Label ID="Label3" runat="server" Text="Imagen:"></asp:Label>

                </td>
                <td class="auto-style7">

                    <asp:FileUpload ID="FileFoto" runat="server"  />

                </td>
            </tr>
            <tr>
                <td colspan="2" class="auto-style9">
                    <asp:Button ID="BttnGuardar" runat="server" OnClick="BttnGuardar_Click" Text="Guardar" CssClass="Boton" />
                </td>
            </tr>
            <tr>
                <td class="Titulo" colspan="2">

                    Modificaciones a Productos</td>
            </tr>
            <tr>
                <td class="auto-style5">

                    <asp:Label ID="Label5" runat="server" Text="Codigo Producto: "></asp:Label>

                </td>
                <td>
                    <asp:TextBox ID="txtbxMosBus" runat="server" CssClass="caja"></asp:TextBox>
                     <asp:Button ID="BttnBus" runat="server" Text="Buscar/Mostrar" CssClass="Boton" OnClick="BttnBus_Click"/>
                     <asp:Button ID="BttnEliminar" runat="server" Text="Eliminar" CssClass="Boton" OnClick="BttnEliminar_Click"/>
                    <asp:Button ID="BttnModificar" runat="server" Text="Modificar" CssClass="Boton" OnClick="BttnModificar_Click"/>
                </td>
            </tr>
            <tr>
                <td colspan="2">

                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" 
                        OnPageIndexChanging="GridView1_PageIndexChanging" 
                        Width="100%">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:TemplateField HeaderText="Productos">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <div class="auto-style9">
                                        <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval ("Imagen") %>' width="140" height="120" />
                                        <br />
                                        <asp:Label ID="Label8" runat="server" Text="Codigo:"></asp:Label>
                                        <asp:Label ID="LblCodigo" runat="server" Text='<%# Eval("CodigoProducto") %>'></asp:Label>
                                        <br />
                                        <asp:Label ID="Label9" runat="server" Text="Nombre:"></asp:Label>
                                        <asp:Label ID="LblNombre" runat="server" Text='<%# Eval("Nombre") %>'></asp:Label>
                                        <br />
                                        <asp:Label ID="Label10" runat="server" Text="Precio:$"></asp:Label>
                                        <asp:Label ID="LblPrecio" runat="server" Text='<%# Eval("Precio") %>'></asp:Label>
                                        <br />
                                        <asp:Label ID="Label12" runat="server" Text="Cantidad:"></asp:Label>
                                        <asp:Label ID="Label13" runat="server" Text='<%# Eval("Cantidad") %>'></asp:Label>
                                    </div>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        
                        <EditRowStyle BackColor="#7C6F57" />
                        
                        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#E3EAEB" />
                        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F8FAFA" />
                        <SortedAscendingHeaderStyle BackColor="#246B61" />
                        <SortedDescendingCellStyle BackColor="#D4DFE1" />
                        <SortedDescendingHeaderStyle BackColor="#15524A" />
                        
                    </asp:GridView>

                </td>
            </tr>
            </table>
        </div>
</asp:Content>
