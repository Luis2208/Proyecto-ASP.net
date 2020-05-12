<%@ Page Title="" Language="C#" MasterPageFile="~/Inicio.Master" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="Negocio.Registro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            text-align: center;
            font-family: 'Century Gothic'; 
            font-size: xx-large; 
            font-weight: 200; 
            font-style: normal; 
            font-variant: normal; 
            color: #c506f3;
        }
        .auto-style3 {
            height: 21px;
            text-align: center;
        }
        .Boton{
                border: none;
                outline: none;
                height: 40px;
                background: #98f2e4;
                color: #ffffff;
                font-size: 18px;
                border-radius: 5px;
        }
        .auto-style4{
            text-align: right;
            width: 547px;
            font-family: 'Century Gothic'; 
            font-size: x-large; 
            font-weight: 200; 
            font-style: normal; 
            font-variant: normal; 
            color:#808080;
        }
        .caja{
            -webkit-border-radius: 5px;
             border-radius: 5px;
             
        }
      </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td class="auto-style2">Registro</td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label1" runat="server" Text="Nombre:" CssClass="auto-style4"></asp:Label>
                <asp:TextBox ID="TxtBxNombre" runat="server" CssClass="caja"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtBxNombre" EnableClientScript="False" ErrorMessage="*Valor Requerido" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>

        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label2" runat="server" Text="Apellidos:" CssClass="auto-style4"></asp:Label>
                <asp:TextBox ID="TxtBxApellidos" runat="server" CssClass="caja"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtBxApellidos" EnableClientScript="False" ErrorMessage="*Valor Requerido" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label3" runat="server" Text="Ciudad:" CssClass="auto-style4"></asp:Label>
                <asp:TextBox ID="TxtBxCiudad" runat="server" CssClass="caja"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TxtBxCiudad" EnableClientScript="False" ErrorMessage="*Valor Requerido" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label4" runat="server" Text="Correo:" CssClass="auto-style4"></asp:Label>
                <asp:TextBox ID="TxtBxCorreo" runat="server" CssClass="caja"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TxtBxCorreo" EnableClientScript="False" ErrorMessage="*Valor Requerido" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TxtBxCorreo" ErrorMessage="*Formato no válido" ForeColor="#993333" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label5" runat="server" Text="Telefono:" CssClass="auto-style4"></asp:Label>
                <asp:TextBox ID="TxtBxTele" runat="server" CssClass="caja"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TxtBxTele" EnableClientScript="False" ErrorMessage="*Valaor Requerido" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label6" runat="server" Text="Contraseña:" CssClass="auto-style4"></asp:Label>
                <asp:TextBox ID="TxtBxContraseña" runat="server" CssClass="caja" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TxtBxContraseña" EnableClientScript="False" ErrorMessage="*Valor Requerido" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label7" runat="server" Text="Confirmar Contraseña:" CssClass="auto-style4"></asp:Label>
                <asp:TextBox ID="TxtBxConfirma" runat="server" CssClass="caja" TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TxtBxContraseña" ControlToValidate="TxtBxConfirma" ErrorMessage="*Las claves son distintas." ForeColor="Red"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Button ID="BttnSave" runat="server" Text="Guardar" CssClass="Boton" OnClick="BttnSave_Click" />
                <asp:Button ID="BttnCancelar" runat="server" Text="Cancelar"  CssClass="Boton" OnClick="BttnCancelar_Click"/>
            </td>
        </tr>
    </table>
</asp:Content>
