<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TallerLINQ._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="txt1">
        <center>
            <h3>UNIVERSIDAD ANDINA DEL CUSCO</h3>
            <h3>FACULTAD DE INGENIERIA Y ARQUITECTURA</h3>
            <h3>CARRERA DE INGENIERIA DE SISTEMAS</h3>
            <img src="img/LogoS.png" height="400" width="400">
        </center>
            <center>
                <h2>GRUPO EXPROPIACIÓN</h2>
            </center>
        <h4>
            <p class="auto-style7" > Curso: Desarrollo de plataformas </p>
            <p class="auto-style6"> Docente: HUGO ESPETIA HUAMANGA</p>
            <br/>
            <p class="auto-style5"> Integrantes: </p>
            <p class="auto-style4">    - BAEZ QUISPE,  Jayo Ernesto</p>
            <p class="auto-style3">    - CAMACHO TELLO,  Dany Nicolas</p>
            <p class="auto-style3">    - COYLA ESPIRILLA,  Wildor Paul</p>
            <p class="auto-style3">    - GIRALDEZ TACO, Victor Hugo</p>
            <p class="auto-style3">    - JIMÉNEZ BACA, Nick Briam</p>
            <p class="auto-style2">    - MATHEUS TAPIA,  Midduar Arturo</p>
        </h4>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>BD Biblioteca</h2>
            <p>
                Dentro de la base de datos biblioteca tenemos 3 tablas (TLibro, TAutor, TPrestamo).
                El diagrama de base de datos es el siguiente.
            </p>
            <p>
                <a class="btn btn-default" href="https://drive.google.com/file/d/1RrpGvX-gkW7gUrIzi4eNoXp4lh1p45c-/view?usp=sharing">Ir a IMG &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Git HUB</h2>
            <p>
                El presente trabajo se subio a GitHub.
            </p>
            <p>
                <a class="btn btn-default" href="https://github.com/GT75941/Biblio">Ir a GitHub &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2> INFORME </h2>
            <p>
                Desarrollo del informe en PDF con: Caratula, Presentación, Desarollo, conclusiones, referencias.
            </p>
            </p>
            <p>
                <a class="btn btn-default" href="https://docs.google.com/document/d/1clCuIN6oF3nleAQ-GdzFSb35IEKS3C1Wp99DaDiRaO4/edit">Ir al informe &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2> GoogleSites </h2>
            <p>
                Dentro del googleSites se presentara a detalle los distintos tipos de proceos
            </p>
            <p>
                <a class="btn btn-default" href="https://sites.google.com/uandina.edu.pe/exp-plataformas/inicio">Ir al Sites &raquo;</a>
            </p>
        </div>
    </div>

<style>
    *{
        margin:0;
        padding:0;
        box-sizing:border-box;
        font-family:'Montserrat Alternates',sans-serif;
    }
    .txt1{
        color:#fff;
    }
    .col-md-4{
        color:#fff;
    }
    body{
        font-family:Arial, Helvetica;
        background:#e8e8e8;
        background-color:#DFF0D8;
        background-image:url("//external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.fondoshd.mx%2Fwallpapers%2Fwallpaper-colores-oscuros-4260.jpg&f=1&nofb=1&ipt=7e1e004c8eaa0c615f624557ed29d8d0fb9ca25a8591b4410f33f8e417fd2d1b&ipo=images");
        background-size:100vw 250vh;
        background-repeat:no-repeat;
    }
    /*width: 100%*/
    .capa{
        position:absolute;
        height: 100vh;
        background: rgba(0,0,0,0.4);
        z-index:-1;
        top:0;left:0;
    }
    /*Estilos para el encabezado*/
    .header{
        width: 100%;
        height: 70px;
        position: fixed;
        top:0;left:0;
    }
    .container{
        width: 90%;
        max-width: 1200px;
        margin:auto;
    }
    .container .btn-menu, .logo{
        float: left;
        line-height: 70px;
    }
    .container .btn-menu, label{
        color: #fff;
        font-size: 25px;
        cursor: pointer;
    }
    .logo h1{
        color:#fff;
        font-weight: 400;
        font-size: 22px;
        margin-left: 10px;
    }
    .container .menu{
        float: right;
        line-height: 70px;
    }
    .container .menu a{
        display: inline-block;
        padding: 15px 10px;
        line-height:normal;
        text-decoration:none;
        color:#ffff;
        transition: all 0.3s ease;
        border-bottom: 2px solid transparent;
        font-size: 15px;
    }
    .container .menu a:hover{
        border-bottom: 2px solid #ffff;
        padding: 5px 10px;
    }
    /*Fin de estilos para el encabezado*/

    /*menu lateral*/
    #btn-menu{
        display: none;
    }
    .container-menu{
        position: absolute;
        background: rgba(0,0,0,0.5);
        width: 100%;
        height: 100vh;
        top: 0; left: 0;
        transition: all 500ms ease;
        opacity: 0;
        visibility: hidden;
    }
    #btn-menu:checked ~ .container-menu{
        opacity: 1;
        visibility: visible;
    }
    .cont-menu{
        width: 100%;
        max-width: 250px;
        background: #1c1c1c;
        height: 100vh;
        position: relative;
        transition: all 500ms ease;
        transform: translateX(-100%);
    }
    #btn-menu:checked ~ .container-menu .cont-menu{
        transform: translateX(0%);
    }

    .cont-menu nav{
        transform: translateY(15%);
    }
    .cont-menu nav a{
        display: block;
        text-decoration: none;
        padding: 20px;
        color: #c7c7c7;
        border-left: 5px solid transparent;
        transition: all 400ms ease;
    }
    .cont-menu nav a:hover{
        border-left: 5px solid #c7c7c7;
        background: #1f1f1f;
    }
    .cont-menu label{
        position: absolute;
        right: 5px;
        top: 10px;
        color: #fff;
        cursor: pointer;
        font-size: 18px;
    }
    .btn-default{
            padding: 1.3em 3em;
            font-size: 12px;
            text-transform: uppercase;
            letter-spacing: 2.5px;
            font-weight: 500;
            color: #111;
            background-color: #00ff90;
            border: none;
            border-radius: 45px;
            box-shadow: 0px 8px 15px rgba(0, 0, 0, 0.1);
            transition: all 0.3s ease 0s;
            cursor: pointer;
            outline: none;
    }
    .btn-default:hover{
        background-color: #23c483;
        box-shadow: 0px 15px 20px rgba(46, 229, 157, 0.4);
        color: #fff;
        transform: translateY(-7px);
    }
    .btn-default:active
    {
        transform: translateY(-1px);
    }
    .jumbotron{
        margin: 20px;
        padding: 20px;
        font-family:'Montserrat Alternates',sans-serif;
        color: #fff;
    }
    .lead{
        height:30px;
    }
    .row{
        height:30px;
    }
    .auto-style2 {
        height: 30px;
        width: 1096px;
        margin-left: 238px;
    }
    .auto-style3 {
        height: 30px;
        width: 1096px;
        margin-left: 238px;
    }
    .auto-style4 {
        height: 30px;
        width: 1096px;
        margin-left: 238px;
    }
    .auto-style5 {
        height: 30px;
        width: 1096px;
        margin-left: 238px;
    }
    .auto-style6 {
        height: 30px;
        width: 1096px;
        margin-left: 238px;
    }
    .auto-style7 {
        height: 30px;
        width: 1096px;
        margin-left: 238px;
    }
</style>

</asp:Content>
