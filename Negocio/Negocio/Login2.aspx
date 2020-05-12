<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login2.aspx.cs" Inherits="Negocio.Login2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
     <style>
       .cuerpo{
                margin: 0;
                padding: 0;
                background: no-repeat center top;
                background-size: cover;
                font-family: sans-serif;
                height: 100%;
            }
            .login{
                width: 300px;
                height: 420px;
                background: #ccffff;
                color: #0000cc;
                top: 60%;
                left: 50%;
                position: absolute;
                transform: translate(-50%, -50%);
                box-sizing: border-box;
                padding: 70px 30px;
            }
            .login .avatar{
                width: 100px;
                height: 100px;
                border-radius: 50%;
                position: absolute;
                top: -60px;
                right: 35%;

            }
            .login h1{
                margin: 0;
                padding: 0 0 -20px;
                text-align: center;
                font-size: 22px;
            }
            .etiqueta{
                margin: 0;
                padding: 0;
                font-weight: bold;
                display: block;
            }
            .entrada{
                width: 100%;
                margin-bottom: 20px;
            }
            .Boton{
                border: none;
                outline: none;
                height: 40px;
                background: #990099;
                color: #ffffff;
                font-size: 18px;
                border-radius: 5px;

            }
            .Boton2{
                outline: none;
                border: none;
                height: 40px;
                background: #ff6666;
                color: #ffffff;
                font-size: 18px;
                border-radius: 10px;

            }
       .auto-style1 {
           border-style: none;
           border-color: inherit;
           border-width: medium;
           outline: none;
           background: #990099;
           color: #ffffff;
           font-size: 18px;
           border-radius: 5px;
       }
   </style>
</head>
<body class="cuerpo">
    <img class="cuerpo" src="Imagenes/pa.jpg" />
<div class="login">
        <img class="avatar" src="Imagenes/Clientes.png"/>
        <h1>Cliente</h1>
    <form id="form1" runat="server">
        <center><asp:Button ID="BttnCambiarCl" runat="server" Text="Cambiar" CssClass="Boton2" OnClick="BttnCambiarCl_Click" /></center>
                <label class="etiqueta"><b>Username</b></label>
                <asp:TextBox ID="txtUsername" runat="server" type="text" placeholder="Enter Username" name="uname" CssClass="entrada"></asp:TextBox>


                <label class="etiqueta"><b>Password</b></label>
                <asp:TextBox ID="txtPass" runat="server" type="text" placeholder="Enter Username" name="uname"  TextMode="Password" CssClass="entrada"></asp:TextBox>

                <center><asp:Button ID="BttnEntrarCli" runat="server" Text="Entrar" type="submit" CssClass="Boton" OnClick="BttnEntrarCli_Click"/>
                    <br />
                    <br />
                </center>

                <center><asp:Button ID="BttnCancelarClie" runat="server" Text="Cancelar" type="submit" CssClass="auto-style1" Height="36px"  Width="71px" /></center>
    </form>
</div>
</body>
</html>
