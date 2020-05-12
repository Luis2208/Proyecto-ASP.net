<%@ Page Title="" Language="C#" MasterPageFile="~/Inicio.Master" AutoEventWireup="true" CodeBehind="DondeEstamos.aspx.cs" Inherits="Negocio.DondeEstamos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            text-align: center;
            font-family: 'Century Gothic'; 
            font-size: xx-large; 
            font-weight: 200; 
            font-style: normal; 
            font-variant: normal; 
            color: #FF0066;
        }
        .auto-style6 {
            text-align: center;
            height: 105px;
            color: darkblue;
            font-family: 'Century Gothic'; 
            font-size: xx-large; 
            font-weight: 200; 
            font-style: normal; 
            font-variant: normal;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td class="auto-style5" colspan="3">¿DÓNDE ESTAMOS?<br />
                <img alt="" src="Imagenes/ubicacion.jpg"  width="80" height="80"/></td>
        </tr>
        <tr>
            <td class="auto-style6" colspan="3">Pastelería Délice Constitución<br />
                <br />
                    <img alt="" src="Imagenes/tienda.png"  width="100" height="100"/>
                    <center><h3>Blvd. Constitución #159 
                                Col. Ampl. Los Angeles 
                                Torreón, Coahuila 
            T                   Tel. (871) 512.64.04</h3></center>
                </td>
        </tr>
        <tr>
            <td class="auto-style6" colspan="3">Pastelería Délice Saltillo 400<br />
                <br />
                    <img alt="" src="Imagenes/tienda.png"  width="100" height="100"/>
                    <center><h3>Saltillo 400 #559
                                Col. Ampl. La Rosita 
                                Torreon, Coahuila 
                                Tel. (871) 711.90.64</h3></center>
                </td>
            
        </tr>
        <tr>
            <td class="auto-style6" colspan="3">Pastelería Délice Senderos<br />
                <br />
                    <img alt="" src="Imagenes/tienda.png"  width="100" height="100"/>
                    <center><h3>Bulevard de la Senda #317 
                                (Int. Local #17) 
                                Residencial Senderos 
                                Torreón, Coahuila
                                Tel. (871) 204.49.37</h3></center>
                </td>
        </tr>
    </table>
</asp:Content>
