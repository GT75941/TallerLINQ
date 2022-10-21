<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="1_Proyeccion.aspx.cs" Inherits="TallerLINQ.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
     <center>
            <h1>
                <u>CONSULTAS DE PROYECCION</u>
            </h1>
            <p>Se utilizo 2 tablas : Employees y Customers</p>
            <br />
            <hr />
            <p> 
                <asp:Button Text="Employees" style="margin-left:150px" runat="server" CssClass="button" OnClick="Unnamed1_Click"/>
                <asp:Button Text="Customers" style="margin-left:150px" runat="server" CssClass="button" OnClick="Unnamed2_Click"/>
            </p>
        </center>
        <hr />
        <p>
            <asp:GridView runat="server" ID="gvRegistro" CssClass="mGrid"></asp:GridView>
        </p>
<style>
        *{
            font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
        }
        body{
            background-color:#ccccff;
            position:absolute;
            height: 100vh;
            z-index:-1;
            top:0;left:0;
        }
        p {   
            font-size:larger;
            font-weight:bold;
            display:inline-block;
        }    
        
        .button{
            background-color:#6600cc;
            height:50px;
            color:#fff;
            width:100px;
            border-radius:10%;
        }
        .button:hover{
            background-color:#4d0099;
            color:#fff;
            height:60px;
            width:120px;
        }
        .texto{
            display:flex;
            
        }
        .texto:active{
            background:#999;
        }
        .mGrid {
            width: 100%;
            background-image:url("https://thumbs.dreamstime.com/b/fondo-de-piedras-grises-37205349.jpg");
            font-size:larger;
            margin: 0px 50px 10px 90px;
            border: solid 1px #525252;
            border-collapse: collapse;
        }
        .mGrid td {
            padding: 2px;
            border: solid 1px #c1c1c1;
            color: #000;
            font-weight:bold;
        }
        .mGrid th {
            padding: 4px 2px;
            color: #fff;
            background: #424242 url(grd_head.png) repeat-x top;
            border-left: solid 1px #525252;
            font-size: 0.9em;
        }
        .mGrid .alt {
            background: #fcfcfc url(grd_alt.png) repeat-x top;
        }
        .mGrid .pgr {
            background: #424242 url(grd_pgr.png) repeat-x top;
        }
        .mGrid .pgr table {
            margin: 5px 0;
        }
        .mGrid .pgr td {
            border-width: 0;
            padding: 0 6px;
            border-left: solid 1px #666;
            font-weight: bold;
            color: #fff;
            line-height: 12px;
        }
        .mGrid .pgr a {
            color: #666;
            text-decoration: none;
        }
        .mGrid .pgr a:hover {
            color: #000;
            text-decoration: none;
        }
        /*
        .login-box a span:nth-child(2) {
          top: -100%;
          right: 0;
          width: 2px;
          height: 100%;
          background: linear-gradient(180deg, transparent, #03e9f4);
          animation: btn-anim2 1s linear infinite;
          animation-delay: .25s
        }

        @keyframes btn-anim2 {
          0% {
            top: -100%;
          }
          50%,100% {
            top: 100%;
          }
        }

        .login-box a span:nth-child(3) {
          bottom: 0;
          right: -100%;
          width: 100%;
          height: 2px;
          background: linear-gradient(270deg, transparent, #03e9f4);
          animation: btn-anim3 1s linear infinite;
          animation-delay: .5s
        }

        @keyframes btn-anim3 {
          0% {
            right: -100%;
          }
          50%,100% {
            right: 100%;
          }
        }

        .login-box a span:nth-child(4) {
          bottom: -100%;
          left: 0;
          width: 2px;
          height: 100%;
          background: linear-gradient(360deg, transparent, #03e9f4);
          animation: btn-anim4 1s linear infinite;
          animation-delay: .75s
        }

        @keyframes btn-anim4 {
          0% {
            bottom: -100%;
          }
          50%,100% {
            bottom: 100%;
          }
        }*/
</style>
</asp:Content>
