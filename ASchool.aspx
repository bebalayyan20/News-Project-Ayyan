<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="ASchool.aspx.cs" Inherits="NewsAF.ASchool" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <p class="text-center">
        <strong>
        <asp:Label ID="Label1" runat="server" style="font-size: xx-large" Text="School"></asp:Label>
        </strong></p>
    <p class="text-center">
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
    </p>
    <p class="text-center">
        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" CellPadding="4" DataKeyNames="headline" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="50px" style="font-size: small" Width="125px">
            <AlternatingRowStyle BackColor="White" />
            <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
            <EditRowStyle BackColor="#7C6F57" />
            <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="headline" HeaderText="headline" ReadOnly="True" SortExpression="headline" />
                <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                <asp:BoundField DataField="location" HeaderText="location" SortExpression="location" />
                <asp:ImageField DataImageUrlField="image" HeaderText="Image">
                </asp:ImageField>
                <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Fields>
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
        </asp:DetailsView>
    </p>
    <p class="text-center">
        &nbsp;</p>
    <p>
        <strong>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AddSchool.aspx" style="text-decoration: none">Add School News</asp:HyperLink>
        </strong></p>
        </form>
</asp:Content>
