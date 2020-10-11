<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm1254.aspx.cs" Inherits="WebApplicationAuthentication.WebForm1254" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" 
        DataKeyNames="EmployeeID" DataSourceID="SqlDataSource1" OnItemUpdating="DetailsView1_ItemUpdating" OnItemDeleted="DetailsView1_ItemDeleted" OnItemInserting="DetailsView1_ItemInserting">
        <Fields>
            <asp:TemplateField HeaderText="EmployeeID" InsertVisible="False" SortExpression="EmployeeID">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("EmployeeID") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("EmployeeID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="FirstName" SortExpression="FirstName">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("FirstName") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("FirstName") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("FirstName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Lastname" SortExpression="Lastname">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Lastname") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Lastname") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("Lastname") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Address" SortExpression="Address">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Address") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Address") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("Address") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Contact" SortExpression="Contact">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Contact") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Contact") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("Contact") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="DepartmentID" SortExpression="DepartmentID">
                <EditItemTemplate>

                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="DepartmentName" DataValueField="DepartmentID" SelectedValue='<%# Bind("DepartmentID") %>'></asp:DropDownList>
                    <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:EmployeeInfoConnectionString %>' SelectCommand="SELECT * FROM [Department]"></asp:SqlDataSource>
                 


                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("DepartmentID") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("DepartmentID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="JobID" SortExpression="JobID">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("JobID") %>'></asp:TextBox>

                    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource3" DataTextField="JobTitle" DataValueField="JobID" SelectedValue='<%# Bind("JobID") %>'></asp:DropDownList>
                    <asp:SqlDataSource runat="server" ID="SqlDataSource3" ConnectionString='<%$ ConnectionStrings:EmployeeInfoConnectionString %>' SelectCommand="SELECT [JobID], [JobTitle] FROM [Job]"></asp:SqlDataSource>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("JobID") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("JobID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="ImageFile" SortExpression="ImageFile">
                <EditItemTemplate>

                    <asp:FileUpload ID="FileUpload1"   runat="server" />
                    
                </EditItemTemplate>
                <InsertItemTemplate>

                    <asp:FileUpload ID="FileUpload2" runat="server" />
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Bind("ImageFile") %>' />
                    
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server"  
        ConnectionString="<%$ ConnectionStrings:EmployeeInfoConnectionString %>" 
        DeleteCommand="DELETE FROM [Employee] WHERE [EmployeeID] = @EmployeeID
        " InsertCommand="INSERT INTO [Employee] ([FirstName], [Lastname], [Address], [Contact], [DepartmentID], [JobID], [ImageFile]) VALUES (@FirstName, @Lastname, @Address, @Contact, @DepartmentID, @JobID, @ImageFile)" 
        SelectCommand="SELECT * FROM [Employee]"
        UpdateCommand="UPDATE [Employee] SET [FirstName] = @FirstName, [Lastname] = @Lastname, [Address] = @Address, [Contact] = @Contact, [DepartmentID] = @DepartmentID, [JobID] = @JobID, [ImageFile] = @ImageFile WHERE [EmployeeID] = @EmployeeID">
        <DeleteParameters>
            <asp:Parameter Name="EmployeeID" Type="Int32" />
            
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="Lastname" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="Contact" Type="String" />
            <asp:Parameter Name="DepartmentID" Type="Int32" />
            <asp:Parameter Name="JobID" Type="Int32" />
            <asp:Parameter Name="ImageFile" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="Lastname" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="Contact" Type="String" />
            <asp:Parameter Name="DepartmentID" Type="Int32" />
            <asp:Parameter Name="JobID" Type="Int32" />
            <asp:Parameter Name="ImageFile" Type="String" />

            <asp:Parameter Name="EmployeeID" Type="Int32" />
          
        </UpdateParameters>
    </asp:SqlDataSource>

</asp:Content>
