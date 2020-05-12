<%@ Page Title="" Language="C#" MasterPageFile="~/Inicio.Master" AutoEventWireup="true" CodeBehind="Productos.aspx.cs" Inherits="Negocio.Productos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            width: 100%;
        }
        .auto-style8 {
            width: 100%;
            height:100%;
            margin-left: 0
        }
        .auto-style9 {
            width: 100%;
            height: 100%;
            margin-left: 0;
        }
        .auto-style11 {
            width: 100%;
            height: 100%;
            margin-left: 0
        }
        .auto-style13 {
            width: 100%;
            height: 100%;
            margin-left: 0;
        }
        .auto-style16 {
            width: 100%;
        }
        .auto-style17 {
            width: 25%;
        }
        .auto-style18 {
            width: 27%;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style6">
        <tr>
        <td class="auto-style18">
            <a href="Pasteles.aspx"><img src="Imagenes/past.jpg" height="200" class="auto-style8"/></a>
        </td>
        </tr>
        <tr>
           <td class="auto-style18">
                <a href="Cupcakes.aspx"><img src="Imagenes/cup.jpg" class="auto-style9"/></a>
           </td>
        </tr>
        <tr>
        <td class="auto-style17"><a href="Pie.aspx">
            <img src="Imagenes/PIE.jpg" class="auto-style11"/></a>

        </td>
        </tr>
        <tr>
            <td class="auto-style16"><a href="Cookie.aspx"><img src="Imagenes/galleta.jpg" class="auto-style13"/></a></td>
        </tr>
        </table>

</asp:Content>
