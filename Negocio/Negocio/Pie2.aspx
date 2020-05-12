<%@ Page Title="" Language="C#" MasterPageFile="~/Administrador.Master" AutoEventWireup="true" CodeBehind="Pie2.aspx.cs" Inherits="Negocio.Pie2" %>
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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <table style="width:100%;">
        <tr>
            <td colspan="3" class="titulo">LISTADO DE PRODUCTOS</td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:DataList ID="DataList1" runat="server" CellPadding="4" ForeColor="#333333" RepeatColumns="3" Width="100%">
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
                        </div>
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                </asp:DataList>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style5">
                <br />
                <br />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
