<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageUser.Master" AutoEventWireup="true" CodeBehind="Feedback.aspx.cs" Inherits="NewsAF.Feedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <table class="auto-style1" align="left" style="background-image: none; width: 630px; font-family: 'Arial Rounded MT Bold'; height: 329px; margin-left: 82px;">
        <tr>
            <td class="auto-style18"></td>
            <td class="auto-style7" style="font-size: xx-large; color: #000000"><strong><em>Contact Us...</em></strong></td>
            <td></td>
        </tr>
        <tr>
            <td class="text-right" style="font-size: large"><strong>Full&nbsp; Name:</strong></td>
            <td class="auto-style21">
                <asp:TextBox ID="fnametxt" runat="server" CssClass="auto-style9" Height="36px" Width="330px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="text-right" style="font-size: large; height: 42px;"><strong>Email:</strong></td>
            <td class="auto-style24" style="height: 42px">
                <asp:TextBox ID="femailtxt" runat="server" CssClass="auto-style9" Height="36px" TextMode="Email" Width="330px"></asp:TextBox>
            </td>
            <td style="height: 42px"></td>
        </tr>
        <tr>
            <td class="text-right" style="font-size: large"><strong>Feedback:</strong></td>
            <td class="auto-style13">
                <asp:TextBox ID="feedbacktxt" runat="server" CssClass="auto-style9" Height="64px" TextMode="MultiLine" Width="330px"></asp:TextBox>
            </td>
            <td class="text-center">&nbsp;</td>
        </tr>
        <tr>
            <td class="text-right" style="font-size: large"><strong>Recommendation:</strong></td>
            <td class="auto-style13">
                <asp:TextBox ID="rectxt" runat="server" CssClass="auto-style9" Height="36px" TextMode="MultiLine" Width="330px"></asp:TextBox>
            </td>
            <td class="text-center">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2"></td>
            <td class="auto-style10">
                <asp:Button ID="Button2" runat="server" BorderStyle="Inset" CssClass="active" Font-Bold="True" Font-Size="X-Large" Height="40px" OnClick="Button2_Click" style="font-size: x-large" Text="Send Message" Width="203px" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    </form>
</asp:Content>
