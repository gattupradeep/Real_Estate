<%@ Page Title="" Language="C#" MasterPageFile="~/SuperAdmin/SuperAdmin.master" AutoEventWireup="true" CodeFile="ManageRoles.aspx.cs" Inherits="SuperAdmin_ManageRoles" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <div class="container-fluid">
        <center><h4>Manage Roles</h4></center><br />
        <div class="row-fluid span12">
            
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <telerik:RadGrid ID="RadGrid1" runat="server"></telerik:RadGrid>
        </div> 
    </div>
</asp:Content>

