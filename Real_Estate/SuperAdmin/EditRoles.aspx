<%@ Page Title="" Language="C#" MasterPageFile="~/SuperAdmin/SuperAdmin.master" AutoEventWireup="true" CodeFile="EditRoles.aspx.cs" Inherits="SuperAdmin_E_Role" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <div class="container-fluid">
        <center><h4>Edit Role</h4></center>
        <div class="row-fluid span10 offset3">
            <br />
            <table>
                <tr><td>Role ID</td><td>
                    <input id="e_roleid" type="text" readonly="true" /></td></tr>
                <tr><td>Role Title</td><td>
                    <input id="e_roletitle" type="text" /></td></tr>
                <tr><td>Role Description</td><td>
                    <textarea id="e_rdesc" cols="20" rows="4"></textarea></td></tr>
            </table>
        </div>
        <center><input id="btnupdate" type="button" value="Update" />
                &nbsp;&nbsp;&nbsp;
                <input id="btncancel" type="button" value="Cancel" />
            </center>
                <br />
    </div>
</asp:Content>

