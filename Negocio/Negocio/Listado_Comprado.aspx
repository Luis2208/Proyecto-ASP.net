<%@ Page Title="" Language="C#" MasterPageFile="~/Inicio.Master" AutoEventWireup="true" CodeBehind="Listado_Comprado.aspx.cs" Inherits="Negocio.Listado_Comprado" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            text-align: center;
        }
        .auto-style3 {
            width: 78px;
        }
        .auto-style4 {
            width: 397px;
        }
        .auto-style6 {
            width: 654px;
        }
        .auto-style7 {
            width: 397px;
            text-align: right;
        }
        .table{
            background-color:ghostwhite;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="table">
        <tr>
            <td class="auto-style8" colspan="3">MI CARRITO DE COMPRAS</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">
                <asp:TextBox ID="TextBoxCodigo" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style6">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">FECHA:</td>
            <td class="auto-style4">
                <asp:Label ID="LblFecha" runat="server" Text="Label"></asp:Label>
            </td>
            <td class="auto-style6">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">

                CLIENTE:</td>
            <td class="auto-style4">

                <asp:TextBox ID="TXTCLIENTE" runat="server" Width="332px"></asp:TextBox>

            </td>
            <td class="auto-style6">

            </td>
        </tr>
        <tr>
            <td class="auto-style3">

                EMAIL:

            </td>
            <td class="auto-style4">

                <asp:TextBox ID="TXTEMAIL" runat="server" Width="332px" TextMode="Email"></asp:TextBox>

            </td>
            <td class="auto-style6">

            </td>
        </tr>
        <tr>
            <td class="auto-style3">

            </td>
            <td colspan="2">

                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="505px" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowCommand="GridView1_RowCommand" OnRowDeleting="GridView1_RowDeleting">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:TemplateField HeaderText="QUITAR">
                            <ItemTemplate>
                                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Imagenes/borrar.png" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="CodigoProducto" HeaderText="CODIGO" />
                        <asp:BoundField DataField="Nombre" HeaderText="NOMBRE" />
                        <asp:BoundField DataField="Precio" HeaderText="PRECIO" />
                        <asp:TemplateField HeaderText="CANTIDAD">
                            <ItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Height="19px" Width="73px">1</asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="subtotal" HeaderText="SUBTOTAL" />
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
        <tr>
            <td class="auto-style3">

                
            <td class="auto-style4">

                

            </td>
            <td class="auto-style6">

            </td>
        </tr>
        <tr>
            <td class="auto-style3">
            <td class="auto-style7">
            SUBTOTAL:&nbsp;
                <asp:Label ID="LblSubTotal" runat="server" Text="Label"></asp:Label>                
            </td>
            <td class="auto-style6">

            </td>
        </tr>
        <tr>
            <td class="auto-style3">
            <td class="auto-style7">
            IGV S:&nbsp;
                <asp:Label ID="LblIGV" runat="server" Text="Label"></asp:Label>                
            </td>
            <td class="auto-style6">

            </td>
        </tr>
        <tr>
            <td class="auto-style3">

                
            <td class="auto-style7">
            TOTAL:&nbsp;
                <asp:Label ID="LblTOTAL" runat="server" Text="Label"></asp:Label>                
            </td>
            <td class="auto-style6">

            </td>
        </tr>
        <tr>
            <td class="auto-style3">
            <td class="auto-style7">
                <asp:Button ID="Button1" runat="server" Text="Actualizar" OnClick="Button1_Click"/>
                <asp:Button ID="Button2" runat="server" Text="Continuar Compras" 
                    style="margin-left: 111px" Width="157px" OnClick="Button2_Click"/>     
            </td>
            <td class="auto-style6">
                <asp:Button ID="Button3" runat="server" style="margin-left: 34px" 
                    Text="Comprar" Width="120px" OnClick="Button3_Click"/>
            </td>
        </tr>
    </table>
</asp:Content>
