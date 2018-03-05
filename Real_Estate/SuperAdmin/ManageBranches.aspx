<%@ Page Title="" Language="C#" MasterPageFile="~/SuperAdmin/SuperAdmin.master" AutoEventWireup="true" CodeFile="ManageBranches.aspx.cs" Inherits="SuperAdmin_M_Branches" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <div class="container-fluid">
        <div class="span3 offset4">
        <h4>Manage Branches</h4>
            </div>
            <br /><br />
        <div class="row-fluid span12">
            <div class="span10">
                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                <telerik:RadGrid ID="RadGrid1" runat="server" AllowFilteringByColumn="True" 
                    AllowPaging="True" AllowSorting="True" DataSourceID="SqlDataSource1"  
                    GridLines="None">
<MasterTableView AutoGenerateColumns="False" DataKeyNames="BranchCode" 
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
                            <a href='EditBranches.aspx?Id=<%#Eval("BranchCode") %>'>
                            <span class="btn_pencil">Edit</span> </a>                    
                        </ItemTemplate>
                    </telerik:GridTemplateColumn>
        <telerik:GridTemplateColumn AllowFiltering="false" HeaderText="Delete" ReadOnly="true">
            <ItemTemplate>           
                <a id='<%#Eval("BranchCode")%>' class="delete">
                <span class="icon-remove">Delete</span> </a>                    
            </ItemTemplate>
        </telerik:GridTemplateColumn>
        <telerik:GridBoundColumn DataField="BranchCode" DataType="System.Int32" FilterControlWidth="50px" 
            HeaderText="BranchCode" ReadOnly="True" SortExpression="BranchCode" 
            UniqueName="BranchCode">
        </telerik:GridBoundColumn>
        <telerik:GridBoundColumn DataField="BranchName" HeaderText="BranchName" 
            SortExpression="BranchName" UniqueName="BranchName">
        </telerik:GridBoundColumn>
        <telerik:GridBoundColumn DataField="ContactName" HeaderText="ContactName" 
            SortExpression="ContactName" UniqueName="ContactName">
        </telerik:GridBoundColumn>
        <telerik:GridBoundColumn DataField="PhoneNo" HeaderText="PhoneNo" 
            SortExpression="PhoneNo" UniqueName="PhoneNo">
        </telerik:GridBoundColumn>
    </Columns>
</MasterTableView>

<HeaderContextMenu EnableImageSprites="True" CssClass="GridContextMenu GridContextMenu_Default"></HeaderContextMenu>
                </telerik:RadGrid> 
                
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:DB_30288_testdbConnectionString %>" 
                    SelectCommand="SELECT RE_Branches.BranchCode, RE_Branches.BranchName, RE_ContactDetails.ContactName, RE_ContactDetails.PhoneNo FROM RE_Branches INNER JOIN RE_ContactDetails ON RE_Branches.ContactId = RE_ContactDetails.ContactId">
                </asp:SqlDataSource>
                
            </div>
        </div>
    </div>
    <br /><br />
</asp:Content>


