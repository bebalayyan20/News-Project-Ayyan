<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="ALatestNews.aspx.cs" Inherits="NewsAF.ALatestNews" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <p class="text-center">
        <strong>
        <asp:Label ID="Label1" runat="server" style="font-size: xx-large" Text="Latest News"></asp:Label>
        </strong></p>
    <p class="text-center">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LatestNews %>" DeleteCommand="DELETE FROM [LatestNews] WHERE [headline] = @headline" InsertCommand="INSERT INTO [LatestNews] ([headline], [date], [location], [image], [description]) VALUES (@headline, @date, @location, @image, @description)" SelectCommand="SELECT * FROM [LatestNews]" UpdateCommand="UPDATE [LatestNews] SET [date] = @date, [location] = @location, [image] = @image, [description] = @description WHERE [headline] = @headline">
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
    </p>
    <p class="text-center" style="width: 513px">
        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" CellPadding="4" DataKeyNames="headline" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal" Height="50px" style="font-size: small; margin-left: 100px;" Width="125px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px">
            <EditRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <Fields>
                <asp:BoundField DataField="headline" HeaderText="Headline" ReadOnly="True" SortExpression="headline" />
                <asp:BoundField DataField="date" HeaderText="Date" SortExpression="date" />
                <asp:BoundField DataField="location" HeaderText="Location" SortExpression="location" />
                <asp:ImageField DataImageUrlField="image" HeaderText="Image">
                </asp:ImageField>
                <asp:BoundField DataField="description" HeaderText="Description" SortExpression="description" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ButtonType="Button" />
            </Fields>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        </asp:DetailsView>
    </p>
    <p>
        <strong>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AddLatestNews.aspx" style="text-decoration: none">Add Latest News</asp:HyperLink>
        </strong></p>
        </form>
</asp:Content>
