<%@ Page Title="" Language="C#" MasterPageFile="~/SuperAdmin/SuperAdmin.master" AutoEventWireup="true" CodeFile="ManageCompany.aspx.cs" Inherits="SuperAdmin_ManageCompany" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <div class="container-fluid">
        <center><h4>Manage Company</h4></center>
        <div class="row-fluid span12">
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <telerik:RadGrid ID="RadGrid1" runat="server" AllowFilteringByColumn="True" 
                AllowPaging="True" AllowSorting="True" DataSourceID="SqlDataSource1" 
                GridLines="None">
<MasterTableView AutoGenerateColumns="False" DataKeyNames="CompanyCode" 
                    DataSourceID="SqlDataSource1">
<CommandItemSettings ExportToPdfText="Export to Pdf"></CommandItemSettings>

<RowIndicatorColumn>
<HeaderStyle Width="20px"></HeaderStyle>
</RowIndicatorColumn>

<ExpandCollapseColumn>
<HeaderStyle Width="20px"></HeaderStyle>
</ExpandCollapseColumn>
    <Columns>
    <telerik:GridTemplateColumn AllowFiltering="false" HeaderText="Edit" ReadOnly="true">
                        <ItemTemplate>           
                            <a href='EditCompany.aspx?Id=<%#Eval("CompanyCode") %>'>
                            <span class="btn_pencil">Edit</span> </a>                    
                        </ItemTemplate>
                    </telerik:GridTemplateColumn>
        <telerik:GridTemplateColumn AllowFiltering="false" HeaderText="Delete" ReadOnly="true">
            <ItemTemplate>           
                <a id='<%#Eval("CompanyCode")%>' class="delete">
                <span class="icon-remove">Delete</span> </a>                    
            </ItemTemplate>
        </telerik:GridTemplateColumn>
        <telerik:GridBoundColumn DataField="CompanyCode" DataType="System.Int32" 
            HeaderText="CompanyCode" ReadOnly="True" SortExpression="CompanyCode" 
            UniqueName="CompanyCode">
        </telerik:GridBoundColumn>
        <telerik:GridBoundColumn DataField="CompanyName" HeaderText="CompanyName" 
            SortExpression="CompanyName" UniqueName="CompanyName">
        </telerik:GridBoundColumn>
        <telerik:GridBoundColumn DataField="PackageStartDate" 
            DataType="System.DateTime" HeaderText="PackageStartDate" 
            SortExpression="PackageStartDate" UniqueName="PackageStartDate">
        </telerik:GridBoundColumn>
        <telerik:GridBoundColumn DataField="MobileNo" HeaderText="MobileNo" 
            SortExpression="MobileNo" UniqueName="MobileNo">
        </telerik:GridBoundColumn>
        <telerik:GridBoundColumn DataField="EmailID" HeaderText="EmailID" 
            SortExpression="EmailID" UniqueName="EmailID">
        </telerik:GridBoundColumn>
    </Columns>
</MasterTableView>

<HeaderContextMenu EnableImageSprites="True" CssClass="GridContextMenu GridContextMenu_Default"></HeaderContextMenu>
            </telerik:RadGrid>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:DB_30288_testdbConnectionString %>" 
                SelectCommand="SELECT RE_CompanyPackageSetup.CompanyCode, RE_CompanyPackageSetup.CompanyName, RE_CompanyPackageSetup.PackageStartDate, RE_ContactDetails.MobileNo, RE_ContactDetails.EmailID FROM RE_CompanyPackageSetup INNER JOIN RE_ContactDetails ON RE_CompanyPackageSetup.ContactId = RE_ContactDetails.ContactId">
            </asp:SqlDataSource>
        </div>
        <script type="text/javascript">
            $(document).ready(function () {
                $(".delete").click(function () {
                    confirm("Are you sure want to delete?");

                });
            });
        </script>
    </div>
</asp:Content>

