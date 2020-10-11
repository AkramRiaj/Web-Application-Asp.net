<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Employee.aspx.cs" Inherits="WebApplicationAuthentication.Employee" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <br />

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="EmployeeID" DataSourceID="SqlDataSource1" AllowPaging="True" Height="318px" Width="176px">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="EmployeeID" HeaderText="EmployeeID" InsertVisible="False" ReadOnly="True" SortExpression="EmployeeID" />
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
            <asp:BoundField DataField="Lastname" HeaderText="Lastname" SortExpression="Lastname" />
            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
            <asp:BoundField DataField="Contact" HeaderText="Contact" SortExpression="Contact" />
            <asp:BoundField DataField="DepartmentID" HeaderText="DepartmentID" SortExpression="DepartmentID" />
            <asp:BoundField DataField="JobID" HeaderText="JobID" SortExpression="JobID" />
            <asp:TemplateField HeaderText="ImageFile" SortExpression="ImageFile">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("ImageFile") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" Height="100" Width="100" ImageUrl='<%# Bind("ImageFile") %>' />
                    
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EmployeeInfoConnectionString %>" SelectCommand="SELECT * FROM [Employee]"></asp:SqlDataSource>

    <br />


    <h1>Detailes View</h1>

    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="FullName" DataValueField="EmployeeID"></asp:DropDownList>

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:EmployeeInfoConnectionString %>" SelectCommand="SELECT  [EmployeeID]
      ,([FirstName]+''+[Lastname])FullName FROM [Employee]"></asp:SqlDataSource>

    <br />
    <br />

    <br  /> 
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="ShowReport" />
    <br />

    </asp:Content>
