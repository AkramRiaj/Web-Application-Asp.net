<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplicationAuthentication._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <br /> 

   
    <img src="Image/images.jpg" height="400" width="1200" />

    <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">

                         <li><a runat="server" href="~/Department">Department Information</a></li>
                         <li><a runat="server" href="~/Employee">Employee Information</a></li>
                        <li><a runat="server" href="~/WebForm1254">Employee Details</a></li>
                        <li><a runat="server" href="~/About">About</a></li>
                        <li><a runat="server" href="~/Contact">Contact</a></li>
                         
                    </ul>

        </div>
   

</asp:Content>
