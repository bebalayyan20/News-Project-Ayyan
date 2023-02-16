<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="NewsAF.register" %>

<!DOCTYPE html>
<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {

    }
</script>


<html xmlns="http://www.w3.org/1999/xhtml">  
<head runat="server">  
<title></title>  
<style type="text/css">  
.auto-style1 {  
     width: 80%;
        height: 484px;
        margin-top: 0px;
        margin-left: 92px;
    }  
.auto-style4 {  
      height: 23px;
        font-size: x-large;
        width: 262px;
    }  
        .auto-style5 {
        font-weight: bold;
        font-size: x-large;
    }
        .auto-style7 {
        height: 23px;
        text-align: right;
    }
    .auto-style8 {
        text-align: right;
        font-size: x-large;
    }
        .auto-style9 {
        height: 499px;
        width: 583px;
        text-align: center;
        margin-left: 165px;
    }
    .auto-style10 {
        font-size: x-large;
    }
    .auto-style11 {
        text-decoration: none;
        color: #000000;
    }
        .auto-style12 {
        width: 262px;
    }
        </style>  
</head>  
<body>  
<form id="form1" runat="server">  
<div class="auto-style9" style="font-family: 'Arial Rounded MT Bold'; background-image: url('images/slider_img3.jpg')">           
  <table class="auto-style1" align="center">  
    <tr>  
    <td class="auto-style8">  
        &nbsp;</td>  
    <td class="auto-style12">  
        <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Register Now"></asp:Label>
        </td>  
    </tr>  
    <tr>  
    <td class="auto-style8">  
        <strong>  
    <asp:Label ID="Label1" runat="server" Text="User Name:" CssClass="auto-style10"></asp:Label>  
        </strong>  
    </td>  
    <td class="auto-style12">  
        <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style10"></asp:TextBox>
        </td>  
    </tr>  
    <tr>  
    <td class="auto-style8">  
        <strong>  
    <asp:Label ID="Label6" runat="server" Text="Email ID:" CssClass="auto-style10"></asp:Label>  
        </strong>  
    </td>  
    <td class="auto-style12">  
        <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style10" Height="34px"></asp:TextBox>
        </td>  
    </tr>  
    <tr>  
    <td class="auto-style8">  
        <strong>  
    <asp:Label ID="Label2" runat="server" Text="Password:" CssClass="auto-style10"></asp:Label></strong></td>  
    <td class="auto-style12">  
        <asp:TextBox ID="TextBox3" runat="server" TextMode="Password" CssClass="auto-style10"></asp:TextBox>
        </td>  
    </tr>  
    <tr>  
    <td class="auto-style8">  
        <strong>  
    <asp:Label ID="Label3" runat="server" Text="Confirm Password:" CssClass="auto-style10"></asp:Label></strong></td>  
    <td class="auto-style12">  
        <asp:TextBox ID="TextBox4" runat="server" TextMode="Password" CssClass="auto-style10"></asp:TextBox>
        </td>  
    </tr>  
    <tr>  
    <td class="auto-style7">  
        <asp:HyperLink ID="HyperLink1" runat="server" BackColor="#999999" CssClass="auto-style11" Font-Bold="True" Font-Size="X-Large" NavigateUrl="~/userlogin.aspx">Sign In</asp:HyperLink>
    </td>  
    <td class="auto-style4">  
        <strong>  
        <asp:Button ID="Button1" runat="server" Text="Sign Up" CssClass="auto-style5" OnClick="Button1_Click" BackColor="#999999" BorderColor="#999999" />
        </strong>
    <br class="auto-style10" />  
    </td>  
    </tr>  
    </table>  
    </div>
    </form>
</body>  
</html>  
