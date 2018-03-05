<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/bootstrap-responsive.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="row-fluid">
            <telerik:RadCaptcha ID="RadCaptcha1" runat="server"></telerik:RadCaptcha>
        </div>
    <div>
       <%-- <asp:ListView ID="sliders" runat="server" DataKeyNames="AboutId" DataSourceID="SqlDataSource1" InsertItemPosition="LastItem">
        <LayoutTemplate>
            <div id="itemPlaceholderContainer" runat="server" style="">
                <span runat="server" id="itemPlaceholder" />
            </div>
            <div style="">
                <asp:DataPager ID="DataPager1" runat="server">
                    <Fields>
                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                    </Fields>
                </asp:DataPager>
            </div>
            </LayoutTemplate>
            <InsertItemTemplate>
                <span style="">AboutId:
                <asp:TextBox ID="AboutIdTextBox" runat="server" Text='<%# Bind("AboutId") %>' />
                <br />
                Name:
                <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                <br />
                Description:
                <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
                <br />
                ThumbImageUrl:
                <asp:TextBox ID="ThumbImageUrlTextBox" runat="server" Text='<%# Bind("ThumbImageUrl") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                <br />
                <br />
                </span>
            </InsertItemTemplate>
        <ItemTemplate>
            <span style="">AboutId:
            <asp:Label ID="AboutIdLabel" runat="server" Text='<%# Eval("AboutId") %>' />
            <br />
            Name:
            <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
            <br />
            Description:
            <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
            <br />
            ThumbImageUrl:
            <asp:Label ID="ThumbImageUrlLabel" runat="server" Text='<%# Eval("ThumbImageUrl") %>' />
            <br />
            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
            <br />
            <br />
            </span>
        </ItemTemplate>
        <AlternatingItemTemplate>
            <span style="">AboutId:
            <asp:Label ID="AboutIdLabel" runat="server" Text='<%# Eval("AboutId") %>' />
            <br />
            Name:
            <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
            <br />
            Description:
            <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
            <br />
            ThumbImageUrl:
            <asp:Label ID="ThumbImageUrlLabel" runat="server" Text='<%# Eval("ThumbImageUrl") %>' />
            <br />
            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
            <br />
            <br />
            </span>
        </AlternatingItemTemplate>
            <EditItemTemplate>
                <span style="">AboutId:
                <asp:Label ID="AboutIdLabel1" runat="server" Text='<%# Eval("AboutId") %>' />
                <br />
                Name:
                <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                <br />
                Description:
                <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
                <br />
                ThumbImageUrl:
                <asp:TextBox ID="ThumbImageUrlTextBox" runat="server" Text='<%# Bind("ThumbImageUrl") %>' />
                <br />
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                <br />
                <br />
                </span>
            </EditItemTemplate>
        <EmptyDataTemplate>
            <span>No data was returned.</span>
        </EmptyDataTemplate>
            <SelectedItemTemplate>
                <span style="">AboutId:
                <asp:Label ID="AboutIdLabel" runat="server" Text='<%# Eval("AboutId") %>' />
                <br />
                Name:
                <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                <br />
                Description:
                <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
                <br />
                ThumbImageUrl:
                <asp:Label ID="ThumbImageUrlLabel" runat="server" Text='<%# Eval("ThumbImageUrl") %>' />
                <br />
                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                <br />
                <br />
                </span>
            </SelectedItemTemplate>
</asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:RealestateConnectionString1 %>" DeleteCommand="DELETE FROM [RE_AboutUs] WHERE [AboutId] = @original_AboutId AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([Description] = @original_Description) OR ([Description] IS NULL AND @original_Description IS NULL)) AND (([ThumbImageUrl] = @original_ThumbImageUrl) OR ([ThumbImageUrl] IS NULL AND @original_ThumbImageUrl IS NULL))" InsertCommand="INSERT INTO [RE_AboutUs] ([AboutId], [Name], [Description], [ThumbImageUrl]) VALUES (@AboutId, @Name, @Description, @ThumbImageUrl)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [RE_AboutUs]" UpdateCommand="UPDATE [RE_AboutUs] SET [Name] = @Name, [Description] = @Description, [ThumbImageUrl] = @ThumbImageUrl WHERE [AboutId] = @original_AboutId AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([Description] = @original_Description) OR ([Description] IS NULL AND @original_Description IS NULL)) AND (([ThumbImageUrl] = @original_ThumbImageUrl) OR ([ThumbImageUrl] IS NULL AND @original_ThumbImageUrl IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_AboutId" Type="Int32" />
                <asp:Parameter Name="original_Name" Type="String" />
                <asp:Parameter Name="original_Description" Type="String" />
                <asp:Parameter Name="original_ThumbImageUrl" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="AboutId" Type="Int32" />
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="ThumbImageUrl" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="ThumbImageUrl" Type="String" />
                <asp:Parameter Name="original_AboutId" Type="Int32" />
                <asp:Parameter Name="original_Name" Type="String" />
                <asp:Parameter Name="original_Description" Type="String" />
                <asp:Parameter Name="original_ThumbImageUrl" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>--%>
        <br />
    </div>
    </form>
</body>
</html>
