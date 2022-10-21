<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="5_Cruds.aspx.cs" Inherits="TallerLINQ._5_Cruds" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <center>
        <h1>
            <u>CATEGORIES</u>
        </h1>
    </center>
    
    <p>
        CategoryID: <asp:TextBox style="margin-left:10px" runat="server" Id="txtCategoryID1"/>
    </p>
    <p>
        CategoryName: <asp:TextBox style="margin-left:10px" runat="server" Id="txtCategoryName1"/>
    </p>
    <p>
        Description: <asp:TextBox style="margin-left:10px" runat="server" Id="txtDescription1"/>
    </p>
    <!--
    <p>
        Picture: <asp:TextBox style="margin-left:10px" runat="server" Id="txtPicture1"/>
    </p>
    -->
    <hr />
    <br />
    <center>
        <p> 
            <asp:Button Text="Agregar" style="margin-left:150px" runat="server" Id="btnAgregar1" CssClass="button" OnClick="btnAgregar1_Click"/>
            <asp:Button Text="Actualizar" style="margin-left:150px" runat="server" Id="btnActualizar1" CssClass="button" OnClick="btnActualizar1_Click"/>
            <asp:Button Text="Eliminar" style="margin-left:150px" runat="server" Id="btnEliminar1" CssClass="button" OnClick="btnEliminar1_Click"/>
            <asp:Button Text="Buscar" style="margin-left:150px" runat="server" Id="btnBuscar1" CssClass="button" OnClick="btnBuscar1_Click"/>
        </p>
    </center>
    <hr/>
    <p>
        <asp:GridView runat="server" ID="gvRegistro" CssClass="mGrid"></asp:GridView>
    </p>
    <center>
        <h1>
            <u>Shippers</u>
        </h1>
    </center>
    
    <p>
        ShipperID: <asp:TextBox style="margin-left:10px" runat="server" Id="txtShipperID1"/>
    </p>
    <p>
        CompanyName: <asp:TextBox style="margin-left:10px" runat="server" Id="txtCompanyName1"/>
    </p>
    <p>
        Phone: <asp:TextBox style="margin-left:10px" runat="server" Id="txtPhone1"/>
    </p>
    <hr />
    <br />
    <center>
        <p> 
            <asp:Button Text="Agregar" style="margin-left:150px" runat="server" Id="btnAgregar2" CssClass="button" OnClick="btnAgregar2_Click"/>
            <asp:Button Text="Actualizar" style="margin-left:150px" runat="server" Id="btnActualizar2" CssClass="button" OnClick="btnActualizar2_Click"/>
            <asp:Button Text="Eliminar" style="margin-left:150px" runat="server" Id="btnEliminar2" CssClass="button" OnClick="btnEliminar2_Click"/>
            <asp:Button Text="Buscar" style="margin-left:150px" runat="server" Id="btnBuscar2" CssClass="button" OnClick="btnBuscar2_Click"/>
        </p>
    </center>
    <hr/>
    <p>
        <asp:GridView runat="server" ID="gvRegistro1" CssClass="mGrid"></asp:GridView>
    </p>
    <center>
        <h1>
            <u>Customers</u>
        </h1>
    </center>
    <p>
        CustomerID: <asp:TextBox style="margin-left:10px" runat="server" Id="txtCustomerID2"/>
    </p>
    <p>
        CompanyName: <asp:TextBox style="margin-left:10px" runat="server" Id="txtCompanyName2"/>
    </p>
    <p>
        ContactName: <asp:TextBox style="margin-left:10px" runat="server" Id="txtContactName2"/>
    </p>
    <p>
        ContactTitle: <asp:TextBox style="margin-left:10px" runat="server" Id="txtContactTitle2"/>
    </p>
    <p>
        Address: <asp:TextBox style="margin-left:10px" runat="server" Id="txtAddress2"/>
    </p>
    <p>
        City: <asp:TextBox style="margin-left:10px" runat="server" Id="txtCity2"/>
    </p>
    <p>
        Región: <asp:TextBox style="margin-left:10px" runat="server" Id="txtRegion2"/>
    </p>
    <p>
        PostalCode: <asp:TextBox style="margin-left:10px" runat="server" Id="txtPostalCode2"/>
    </p>
    <p>
        Country: <asp:TextBox style="margin-left:10px" runat="server" Id="txtCountry2"/>
    </p>
    <p>
        Phone: <asp:TextBox style="margin-left:10px" runat="server" Id="txtPhone2"/>
    </p>
    <p>
        Fax: <asp:TextBox style="margin-left:10px" runat="server" Id="txtFax2"/>
    </p>
    <hr />
    <br />
    <center>
        <p> 
            <p> 
            <asp:Button Text="Agregar" style="margin-left:150px" runat="server" Id="btnAgregar3" CssClass="button" OnClick="btnAgregar3_Click"/>
            <asp:Button Text="Actualizar" style="margin-left:150px" runat="server" Id="btnActualizar3" CssClass="button" OnClick="btnActualizar3_Click"/>
            <asp:Button Text="Eliminar" style="margin-left:150px" runat="server" Id="btnEliminar3" CssClass="button" OnClick="btnEliminar3_Click"/>
            <asp:Button Text="Buscar" style="margin-left:150px" runat="server" Id="btnBuscar3" CssClass="button" OnClick="btnBuscar3_Click"/>
            </p>
        </p>
    </center>
    <hr/>
    <p>
        <asp:GridView runat="server" ID="gvRegistro2" CssClass="mGrid"></asp:GridView>
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
</style>
</asp:Content>
