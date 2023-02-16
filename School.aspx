<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageUser.Master" AutoEventWireup="true" CodeBehind="School.aspx.cs" Inherits="NewsAF.School" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <table class="w-100">
    <tr>
        <td>&nbsp;</td>
        <td class="text-center"><strong>
            <asp:Label ID="Label1" runat="server" style="font-size: xx-large" Text="School News"></asp:Label>
            </strong></td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="height: 26px"></td>
        <td style="height: 26px">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:school %>" DeleteCommand="DELETE FROM [school] WHERE [headline] = @headline" InsertCommand="INSERT INTO [school] ([headline], [date], [location], [image], [description]) VALUES (@headline, @date, @location, @image, @description)" SelectCommand="SELECT * FROM [school]" UpdateCommand="UPDATE [school] SET [date] = @date, [location] = @location, [image] = @image, [description] = @description WHERE [headline] = @headline">
                <DeleteParameters>
                    <asp:Parameter Name="headline" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="headline" Type="String" />
                    <asp:Parameter Name="date" Type="String" />
                    <asp:Parameter Name="location" Type="String" />
                    <asp:Parameter Name="image" Type="String" />
                    <asp:Parameter Name="description" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="date" Type="String" />
                    <asp:Parameter Name="location" Type="String" />
                    <asp:Parameter Name="image" Type="String" />
                    <asp:Parameter Name="description" Type="String" />
                    <asp:Parameter Name="headline" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </td>
        <td style="height: 26px"></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="text-center">
            <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" CellPadding="4" DataKeyNames="headline" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal" Height="50px" style="font-size: x-large; margin-left: 100px;" Width="125px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px">
                <EditRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                <Fields>
                    <asp:BoundField DataField="headline" HeaderText="Headline:" ReadOnly="True" SortExpression="headline" />
                    <asp:BoundField DataField="date" HeaderText="Date:" SortExpression="date" />
                    <asp:BoundField DataField="location" HeaderText="Location:" SortExpression="location" />
                    <asp:ImageField DataImageUrlField="image" HeaderText="Image:">
                    </asp:ImageField>
                    <asp:BoundField DataField="description" HeaderText="Description:" SortExpression="description" />
                </Fields>
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            </asp:DetailsView>
        </td>
        <td>&nbsp;</td>
    </tr>
</table>
</form>
</asp:Content>
