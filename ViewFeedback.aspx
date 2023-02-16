<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="ViewFeedback.aspx.cs" Inherits="NewsAF.ViewFeedack" %>
<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <table class="w-100">
        <tr>
            <td style="height: 26px; width: 100px;"></td>
            <td class="text-center" style="height: 26px"><strong>
                <asp:Label ID="Label1" runat="server" style="font-size: xx-large" Text="View Feedback"></asp:Label>
                </strong></td>
            <td style="height: 26px; width: 11px;"></td>
        </tr>
        <tr>
            <td style="height: 44px; width: 100px;"></td>
            <td style="height: 44px">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Feedback %>" DeleteCommand="DELETE FROM [Feedback] WHERE [name] = @name" InsertCommand="INSERT INTO [Feedback] ([name], [email], [feedback], [recommend]) VALUES (@name, @email, @feedback, @recommend)" SelectCommand="SELECT * FROM [Feedback]" UpdateCommand="UPDATE [Feedback] SET [email] = @email, [feedback] = @feedback, [recommend] = @recommend WHERE [name] = @name">
                    <DeleteParameters>
                        <asp:Parameter Name="name" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="name" Type="String" />
                        <asp:Parameter Name="email" Type="String" />
                        <asp:Parameter Name="feedback" Type="String" />
                        <asp:Parameter Name="recommend" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="email" Type="String" />
                        <asp:Parameter Name="feedback" Type="String" />
                        <asp:Parameter Name="recommend" Type="String" />
                        <asp:Parameter Name="name" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td style="height: 44px; width: 11px;"></td>
        </tr>
        <tr>
            <td style="width: 100px">&nbsp;</td>
            <td class="text-center">
                <asp:FormView ID="FormView1" runat="server" AllowPaging="True" CellPadding="4" DataKeyNames="name" DataSourceID="SqlDataSource1" ForeColor="Black" style="font-size: x-large; margin-left: 3px;" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" GridLines="Horizontal">
                    <EditItemTemplate>
                        name:
                        <asp:Label ID="nameLabel1" runat="server" Text='<%# Eval("name") %>' />
                        <br />
                        email:
                        <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
                        <br />
                        feedback:
                        <asp:TextBox ID="feedbackTextBox" runat="server" Text='<%# Bind("feedback") %>' />
                        <br />
                        recommend:
                        <asp:TextBox ID="recommendTextBox" runat="server" Text='<%# Bind("recommend") %>' />
                        <br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </EditItemTemplate>
                    <EditRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                    <InsertItemTemplate>
                        name:
                        <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                        <br />
                        email:
                        <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
                        <br />
                        feedback:
                        <asp:TextBox ID="feedbackTextBox" runat="server" Text='<%# Bind("feedback") %>' />
                        <br />
                        recommend:
                        <asp:TextBox ID="recommendTextBox" runat="server" Text='<%# Bind("recommend") %>' />
                        <br />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        Name:
                        <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                        <br />
                        Email ID:
                        <asp:Label ID="emailLabel" runat="server" Text='<%# Bind("email") %>' />
                        <br />
                        Feedback:
                        <asp:Label ID="feedbackLabel" runat="server" Text='<%# Bind("feedback") %>' />
                        <br />
                        Recommendation:
                        <asp:Label ID="recommendLabel" runat="server" Text='<%# Bind("recommend") %>' />
                        <br />
                        &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                        &nbsp;
                    </ItemTemplate>
                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                </asp:FormView>
            </td>
            <td style="width: 11px">&nbsp;</td>
        </tr>
    </table>
    </form>
</asp:Content>
