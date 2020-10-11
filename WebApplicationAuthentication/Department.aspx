<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Department.aspx.cs" Inherits="WebApplicationAuthentication.Department" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <br /> <br />


    <asp:ListView ID="ListView1" runat="server" DataKeyNames="DepartmentID" DataSourceID="SqlDataSource1">
        <AlternatingItemTemplate>
            <tr style="background-color: #FFFFFF;color: #284775;">
                <td>
                    <asp:Label ID="DepartmentIDLabel" runat="server" Text='<%# Eval("DepartmentID") %>' />
                </td>
                <td>
                    <asp:Label ID="DepartmentNameLabel" runat="server" Text='<%# Eval("DepartmentName") %>' />
                </td>
            </tr>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <tr style="background-color: #999999;">
                <td>
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                </td>
                <td>
                    <asp:Label ID="DepartmentIDLabel1" runat="server" Text='<%# Eval("DepartmentID") %>' />
                </td>
                <td>
                    <asp:TextBox ID="DepartmentNameTextBox" runat="server" Text='<%# Bind("DepartmentName") %>' />
                </td>
            </tr>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                <tr>
                    <td>No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                </td>
                <td>&nbsp;</td>
                <td>
                    <asp:TextBox ID="DepartmentNameTextBox" runat="server" Text='<%# Bind("DepartmentName") %>' />
                </td>
            </tr>
        </InsertItemTemplate>
        <ItemTemplate>
            <tr style="background-color: #E0FFFF;color: #333333;">
                <td>
                    <asp:Label ID="DepartmentIDLabel" runat="server" Text='<%# Eval("DepartmentID") %>' />
                </td>
                <td>
                    <asp:Label ID="DepartmentNameLabel" runat="server" Text='<%# Eval("DepartmentName") %>' />
                </td>
            </tr>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                            <tr runat="server" style="background-color: #E0FFFF;color: #333333;">
                                <th runat="server">DepartmentID</th>
                                <th runat="server">DepartmentName</th>
                            </tr>
                            <tr id="itemPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF">
                        <asp:DataPager ID="DataPager1" runat="server">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                            </Fields>
                        </asp:DataPager>
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <tr style="background-color: #E2DED6;font-weight: bold;color: #333333;">
                <td>
                    <asp:Label ID="DepartmentIDLabel" runat="server" Text='<%# Eval("DepartmentID") %>' />
                </td>
                <td>
                    <asp:Label ID="DepartmentNameLabel" runat="server" Text='<%# Eval("DepartmentName") %>' />
                </td>
            </tr>
        </SelectedItemTemplate>
    </asp:ListView>



    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EmployeeInfoConnectionString %>" SelectCommand="SELECT * FROM [Department]"></asp:SqlDataSource>



</asp:Content>
