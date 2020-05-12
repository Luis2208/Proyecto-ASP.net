<%@ Page Title="" Language="C#" MasterPageFile="~/Inicio.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Negocio.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
     .slider {
	        width: 95%;
	        margin: auto;
	        overflow: hidden;
    }

    .slider ul {
	        display: flex;
	        padding: 0;
	        width: 400%;
	
	        animation: cambio 20s infinite alternate linear;
        }

    .slider li {
	        width: 100%;
	        list-style: none;
     }

    .slider img {
	        width: 100%;
    }

@keyframes cambio {
	        0% {margin-left: 0;}
	        20% {margin-left: 0;}
	
	        25% {margin-left: -100%;}
	        45% {margin-left: -100%;}
	
	        50% {margin-left: -200%;}
	        70% {margin-left: -200%;}
	
	        75% {margin-left: -300%;}
	        100% {margin-left: -300%;}
        }

        .auto-style2 {
            text-align: center;
            font-family: cursive;
            font-size: xx-large;
            background-color: hsl(0, 100%, 75%);
            color: #ffffff;
        }

        .auto-style3 {
            text-align: center;
        }

 </style>

</asp:Content>
 





<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">  
    <div class="slider">
			<ul>
				<li>
  <img src="Imagenes/pastele.jpg" alt="">
 </li>
				<li>
  <img src="Imagenes/cookiee.jpg" alt="">
</li>
				<li>
  <img src="Imagenes/cupcakee.jpg" alt="">
</li>
				<li>
  <img src="Imagenes/piee.jpg" alt="">
</li>
			</ul>
		</div>

    <div>
       <table style="width: 100%;">
           <tr>
               <td class="auto-style2">Excelentes productos<br />
               </td>
           </tr>
           <tr>
               <td class="auto-style2">¡Los Miercoles son 2x1!<br />
               </td>
           </tr>
           <tr>
               <td class="auto-style3">
                   <img src="Imagenes/promos.jpg" width="100%" height="100%" />
               </td>
           </tr>
           </table>

   </div>
</asp:Content>
