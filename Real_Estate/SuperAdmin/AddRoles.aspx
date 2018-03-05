<%@ Page Title="" Language="C#" MasterPageFile="~/SuperAdmin/SuperAdmin.master" AutoEventWireup="true" CodeFile="AddRoles.aspx.cs" Inherits="SuperAdmin_A_Roles" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <div class="container-fluid">
        <center><h4>Add New Role</h4></center>
        <br />
        <div class="row-fluid span10 offset3">
            <table>
                <tr><td>Role Name</td><td>
                    <input id="a_usertitle" type="text" /></td></tr>
                <tr><td>role Description</td><td>
                    <input id="a_dispname" type="text" /></td></tr>
            </table>
           </div>
        <br />
        <center><input type="button" id="adduser" value="Add" /></center>
                <br />
    </div>
    <br /><br />
</asp:Content>

