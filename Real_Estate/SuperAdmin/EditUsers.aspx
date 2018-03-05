<%@ Page Title="" Language="C#" MasterPageFile="~/SuperAdmin/SuperAdmin.master" AutoEventWireup="true" CodeFile="EditUsers.aspx.cs" Inherits="SuperAdmin_E_User" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <div class="container-fluid">
        <center><h4>Edit User</h4></center>
        <div class="row-fluid span10 offset3">
            <table>
                <tr><td>User ID</td><td>
                    <input id="e_userid" type="text" readonly="true" /></td></tr>
                <tr><td>User Title</td><td>
                    <input id="e_usertitle" type="text" /></td></tr>
                <tr><td>User Display Name</td><td>
                    <input id="e_dispname" type="text" /></td></tr>
                <tr><td>User Role</td>
                    <td><asp:DropDownList ID="DropDownList3" runat="server"></asp:DropDownList></td></tr>
            </table>
            </div>
        <br />
          <center><input id="btnupdate" type="button" value="Update" />
                &nbsp;&nbsp;&nbsp;
                <input id="btncancel" type="button" value="Cancel" />
            </center>
                <br />
    </div>
    <br /><br />
</asp:Content>

