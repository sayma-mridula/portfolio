<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminPanel.aspx.cs" Inherits="portfolio_mn.adminPanel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <!-- Include any CSS stylesheets or scripts here -->
</head>
<body>
    <form id="form2" runat="server">
        <div>
            <!-- Insert Form to Add New Service -->
            <div>
                <h2>Add New Service</h2>
                <table>
                    <tr>
                        <td>Service ID:</td>
                        <td><asp:TextBox ID="txtserviceId" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>Title:</td>
                        <td><asp:TextBox ID="txtTitle" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>Icon:</td>
                        <td><asp:TextBox ID="txtIcon" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>Description:</td>
                        <td><asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td colspan="2"><asp:Button ID="btnAddService" runat="server" Text="Add Service" OnClick="InsertService" /></td>
                    </tr>
                </table>
            </div>
            <!-- GridView to Display Existing Services -->
            <div>
                <h2>Existing Services</h2>
                <asp:GridView ID="gvServices" runat="server" AutoGenerateColumns="False" 
                    OnRowEditing="EditService" OnRowCancelingEdit="CancelEditService" OnRowUpdating="UpdateService" 
                    OnRowDeleting="DeleteService" DataKeyNames="serviceId">
                    <Columns>
                        <asp:TemplateField HeaderText="Service ID">
                            <ItemTemplate>
                                <asp:Label ID="lblserviceId" runat="server" Text='<%# Eval("serviceId") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtEditserviceId" runat="server" Text='<%# Bind("serviceId") %>' ReadOnly="true"></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Title">
                            <ItemTemplate>
                                <asp:Label ID="lblTitle" runat="server" Text='<%# Eval("title") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtEditTitle" runat="server" Text='<%# Bind("title") %>'></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Icon">
                            <ItemTemplate>
                                <asp:Label ID="lblIcon" runat="server" Text='<%# Eval("icon") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtEditIcon" runat="server" Text='<%# Bind("icon") %>'></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Description">
                            <ItemTemplate>
                                <asp:Label ID="lblDescription" runat="server" Text='<%# Eval("p") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtEditDescription" runat="server" Text='<%# Bind("p") %>' TextMode="MultiLine"></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" />
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </form>
</body>
</html>
