<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="ABSCCS.aspx.cs" Inherits="NewsAF.ABSCCS" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <p class="text-center">
        <strong>
        <asp:Label ID="Label1" runat="server" style="font-size: xx-large" Text="BSC Computer Science"></asp:Label>
&nbsp;&nbsp;&nbsp; </strong></p>
    <p class="text-center">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bsccs %>" DeleteCommand="DELETE FROM [bsccs] WHERE [headline] = @headline" InsertCommand="INSERT INTO [bsccs] ([headline], [date], [location], [image], [description]) VALUES (@headline, @date, @location, @image, @description)" SelectCommand="SELECT * FROM [bsccs]" UpdateCommand="UPDATE [bsccs] SET [date] = @date, [location] = @location, [image] = @image, [description] = @description WHERE [headline] = @headline">
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
&nbsp;&nbsp;&nbsp; </p>
    <p class="text-center" style="width: 505px">
        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" CellPadding="4" DataKeyNames="headline" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal" Height="50px" Width="125px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" style="margin-left: 100px">
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
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AddBSCCS.aspx" style="text-decoration: none">Add BSC CS News</asp:HyperLink>
        </strong></p>
        </form>
</asp:Content>
