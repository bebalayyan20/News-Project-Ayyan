<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="userlogin.aspx.cs" Inherits="NewsAF.userlogin" %>

<!DOCTYPE html>
<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {

    }
</script>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Login</title>

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
        body {
            font-family: Arial, Helvetica, sans-serif;
        }
        form {
            border: 3px solid #f1f1f1;
        }
        input[type=text], input[type=password] {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }
        button:hover {
            opacity: 0.8;
        }
        .cnbtn {
            background-color: #ec3f3f;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 49%;
        }
        .lgnbtn {
            background-color: #4CAF50;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 50%;
        }
        .imgcontainer {
            text-align: center;
            margin: 24px 0 12px 0;
        }
        img.avatar {
            width: 40%;
            border-radius: 50%;
        }
        .container {
            padding: 16px;
        }
        span.psw {
            float: right;
            padding-top: 16px;
        }
        /* Change styles for span and cancel button on extra small screens */
        @media screen and (max-width: 300px) {
            span.psw {
                display: block;
                float: none;
            }
            .cnbtn {
                width: 100%;
            }
        }
        .frmalg {
            margin: auto;
            width: 40%;
        }
        .auto-style2 {
            color: white;
            cursor: pointer;
            width: 100%;
            text-decoration: none;
            border-style: none;
            border-color: inherit;
            border-width: medium;
            margin: 8px 0;
            padding: 14px 20px;
            background-color: #ec3f3f;
        }
        .auto-style3 {
            padding: 16px;
            width: 310px;
            margin-top: 1px;
            height: 501px;
        }
        .auto-style4 {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            background-color: #4CAF50;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            cursor: pointer;
            width: 50%;
            font-size: large;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server" class="frmalg">

        <div class="auto-style3" style="background-image: url('images/featured_img3.jpg')">
            <center>
                <h1 style="font-family: 'Arial Rounded MT Bold'">Login</h1>
            </center>
            <label for="uname"><b style="font-family: 'Arial Rounded MT Bold'">Username</b></label>
            <asp:TextBox runat="server" ID="txt_Username" placeholder="Enter Username"></asp:TextBox>
            <label for="psw"><b style="font-family: 'Arial Rounded MT Bold'">Password</b></label>
            <asp:TextBox runat="server" ID="txt_password" TextMode="Password" placeholder="Enter Password"></asp:TextBox>
            <asp:Button runat="server" ID="btn_Login" CssClass="auto-style4" Text="Login" OnClick="btn_Login_Click" Font-Names="Arial Rounded MT Bold" Font-Size="Large" />
            <asp:Button runat="server" ID="btn_cancel" Text="Cancel" class="cnbtn" Font-Names="Arial Rounded MT Bold" Font-Size="Large" />
            <br />
            <br />
            <strong>
            <asp:HyperLink ID="HyperLink2" runat="server" BackColor="Black" BorderStyle="None" ForeColor="#999999" NavigateUrl="~/register.aspx" CssClass="auto-style2" Height="30px" Width="60px" Font-Names="Arial Rounded MT Bold" Font-Size="Large">Register Now</asp:HyperLink>
            <asp:HyperLink ID="HyperLink1" runat="server" BackColor="Black" BorderStyle="None" ForeColor="Gray" NavigateUrl="~/adminlogin.aspx" CssClass="auto-style2" Height="30px" Width="60px" Font-Names="Arial Rounded MT Bold" Font-Size="Large">Admin Login</asp:HyperLink>
            </strong>
            <br />
            <br />
        </div>
    </form>
</body>
</html>

