<%@ Page Title="" Language="C#" MasterPageFile="~/Inicio.Master" AutoEventWireup="true" CodeBehind="Pasteles.aspx.cs" Inherits="Negocio.Pasteles" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <style type="text/css">
        .auto-style6 {
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
        .auto-style7 {
            text-align: right;
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
            <td class="auto-style6">
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
            
                <asp:DataList ID="DataList1" runat="server" DataKeyField="CodigoProducto" CellPadding="4" RepeatColumns="3" OnItemCommand="DataList1_ItemCommand"  ForeColor="#333333" Width="100%" >
                    <AlternatingItemStyle BackColor="White" />
                    <FooterStyle BackColor="#1C5E55" ForeColor="White" Font-Bold="True" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <ItemStyle BackColor="#E3EAEB" />
                    <ItemTemplate>
                        
                        <div class="auto-style6">
                            <asp:Image ID="Image1" runat="server" height="100%" ImageAlign="Middle" ImageUrl='<%# Eval( "Imagen") %>' width="100%" />
                            <br />
                            <br />
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style6" Text="Codigo:"></asp:Label>
                            <asp:Label ID="LblCodigo" runat="server" CssClass="auto-style6" Text='<%# Eval("CodigoProducto") %>'></asp:Label>
                            <br />
                            <asp:Label ID="Label2" runat="server" CssClass="auto-style6" Text="Nombre:"></asp:Label>
                            <asp:Label ID="LblNombre" runat="server" CssClass="auto-style6" Text='<%# Eval("Nombre") %>'></asp:Label>
                            <br />
                            <asp:Label ID="Label3" runat="server" CssClass="auto-style6" Text="Precio:$"></asp:Label>
                            <asp:Label ID="LblPrecio" runat="server" CssClass="auto-style6" Text='<%# Eval("Precio") %>'></asp:Label>
                            <br />
                            <asp:Label ID="Label4" runat="server" Text="Cantidad:"></asp:Label>
                            <asp:Label ID="LblCantidad" runat="server" Text='<%# Eval("Cantidad") %>'></asp:Label>
                            <br />
                            <asp:Button ID="Button1" runat="server" CommandName="SELECCIONAR" CssClass="auto-style6" OnClick="Button1_Click" Text="AGREGAR AL CARRITO" />
                        </div>
                    
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                </asp:DataList>
        </div>
</asp:Content>
