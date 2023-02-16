<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="ABCOM.aspx.cs" Inherits="NewsAF.ABCOM" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <p class="auto-style1">
        <strong>
        <asp:Label ID="Label1" runat="server" style="font-size: xx-large" Text="Bachelor's of Commerce"></asp:Label>
&nbsp;&nbsp; </strong></p>
    <p class="auto-style1">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bcom %>" DeleteCommand="DELETE FROM [bcom] WHERE [headline] = @headline" InsertCommand="INSERT INTO [bcom] ([headline], [date], [location], [image], [description]) VALUES (@headline, @date, @location, @image, @description)" SelectCommand="SELECT * FROM [bcom]" UpdateCommand="UPDATE [bcom] SET [date] = @date, [location] = @location, [image] = @image, [description] = @description WHERE [headline] = @headline">
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
    <p class="auto-style1" style="width: 470px">
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
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AddBCOM.aspx" style="text-decoration: none">Add BCOM News</asp:HyperLink>
        </strong></p>
        </form>
</asp:Content>
