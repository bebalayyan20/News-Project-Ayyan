<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="ViewRegister.aspx.cs" Inherits="NewsAF.ViewRegister" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Registration %>" DeleteCommand="DELETE FROM [register] WHERE [name] = @name" InsertCommand="INSERT INTO [register] ([name], [email], [password]) VALUES (@name, @email, @password)" SelectCommand="SELECT * FROM [register]" UpdateCommand="UPDATE [register] SET [email] = @email, [password] = @password WHERE [name] = @name">
    <DeleteParameters>
        <asp:Parameter Name="name" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="name" Type="String" />
        <asp:Parameter Name="email" Type="String" />
        <asp:Parameter Name="password" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="email" Type="String" />
        <asp:Parameter Name="password" Type="String" />
        <asp:Parameter Name="name" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
    <div class="text-center">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="name" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal" Width="446px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" style="margin-left: 100px">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ButtonType="Button" />
                <asp:BoundField DataField="name" HeaderText="Name:" ReadOnly="True" SortExpression="name" />
                <asp:BoundField DataField="email" HeaderText="Email:" SortExpression="email" />
                <asp:BoundField DataField="password" HeaderText="Password:" SortExpression="password" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
    </div>
<br />
        </form>
</asp:Content>
