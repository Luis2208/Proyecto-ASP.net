﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Administrador.Master" AutoEventWireup="true" CodeBehind="Cupcakes2.aspx.cs" Inherits="Negocio.Cupcakes2" %>
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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <table style="width: 100%">
        <tr>
            <td colspan="3" class="titulo">LISTADO DE PRODUCTOS </td>
        </tr>
        </table>   
        <div style="margin-right: 1%">
            
                <asp:DataList ID="DataList1" runat="server" CellPadding="4" RepeatColumns="3"  ForeColor="#333333" Width="100%" >
                    <AlternatingItemStyle BackColor="White" />
                    <FooterStyle BackColor="#1C5E55" ForeColor="White" Font-Bold="True" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <ItemStyle BackColor="#E3EAEB" />
                    <ItemTemplate>
                        
                        <div class="auto-style6">
                            <asp:Image ID="Image1" runat="server" ImageAlign="Middle" ImageUrl='<%# Eval( "Imagen") %>'  width="80%" height="80%" />
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
                            <asp:Label ID="Label4" runat="server" CssClass="auto-style6" Text="Cantidad:"></asp:Label>
                            <asp:Label ID="LblCantidad" runat="server" CssClass="auto-style6" Text='<%# Eval("Cantidad") %>'></asp:Label>
                        </div>
                    
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                </asp:DataList>
        </div>
</asp:Content>
