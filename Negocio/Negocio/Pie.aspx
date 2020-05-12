<%@ Page Title="" Language="C#" MasterPageFile="~/Inicio.Master" AutoEventWireup="true" CodeBehind="Pie.aspx.cs" Inherits="Negocio.Pie" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            text-align: center;
        }
        .titulo{
            text-align: center;
            font-family: 'Century Gothic'; 
            font-size: xx-large; 
            font-weight: 200; 
            font-style: normal; 
            font-variant: normal; 
            color: #FF0066;
        }
        .auto-style7{
            text-align:right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%">
        <tr>
            <td colspan="2" class="titulo">LISTADO DE PRODUCTOS 
                <br />
                ¡DEBES INICIAR SESIÓN PARA COMPRAR!</td>
            
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:Label ID="LblAgregado" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">
                <asp:ImageButton ID="ImageButton1" width="120" height="120" ImageUrl="~/Imagenes/carro-de-compras.jpg" runat="server" OnClick="ImageButton1_Click" />
            </td>
        </tr>
        </table>   
    
            <div style="margin-right: 1%">
                <asp:DataList ID="DataList1" runat="server" CellPadding="4" ForeColor="#333333" RepeatColumns="3" Width="100%" OnItemCommand="DataList1_ItemCommand">
                    <AlternatingItemStyle BackColor="White" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <ItemStyle BackColor="#EFF3FB" />
                    <ItemTemplate>
                        <div class="auto-style5">
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Imagen") %>' width="100%" Height="100%"/>
                            <br />
                            <asp:Label ID="Label1" runat="server" Text="Codigo:"></asp:Label>
                            <asp:Label ID="LblCodigo" runat="server" Text='<%# Eval("CodigoProducto") %>'></asp:Label>
                            <br />
                            <asp:Label ID="Label2" runat="server" Text="Nombre: "></asp:Label>
                            <asp:Label ID="LblNombre" runat="server" Text='<%# Eval("Nombre") %>'></asp:Label>
                            <br />
                            <asp:Label ID="Label3" runat="server" Text="Precio:$"></asp:Label>
                            <asp:Label ID="LblPrecio" runat="server" Text='<%# Eval("Precio") %>'></asp:Label>
                            <br />
                            <asp:Label ID="Label4" runat="server" Text="Cantidad:"></asp:Label>
                            <asp:Label ID="LblCantidad" runat="server" Text='<%# Eval("Cantidad") %>'></asp:Label>
                            <br />
                            <asp:Button ID="ButtonAgre" runat="server" Text="AGREGAR AL CARRITO" CommandName="SELECCIONAR" />
                        </div>
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                </asp:DataList>
            </div>       
    

</asp:Content>
