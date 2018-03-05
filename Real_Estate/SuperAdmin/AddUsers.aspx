<%@ Page Title="" Language="C#" MasterPageFile="~/SuperAdmin/SuperAdmin.master" AutoEventWireup="true" CodeFile="AddUsers.aspx.cs" Inherits="SuperAdmin_A_User" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <div class="container-fluid">
        <center><h4>Add New User</h4></center>
        <div class="row-fluid span10 offset3">
            <table>
                <tr><td>Company Code</td><td><asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList></td></tr>
                <tr><td>User Title</td><td>
                    <input id="a_usertitle" type="text" /></td></tr>
                <tr><td>User Display Name</td><td>
                    <input id="a_dispname" type="text" /></td></tr>
                <tr><td>User Role</td>
                    <td><asp:DropDownList ID="DropDownList3" runat="server"></asp:DropDownList></td></tr>
            </table>
            </div>
        <br />
                <center><input type="button" id="adduser" value="Add" />&nbsp;&nbsp;
                    <input type="button" id="cancel" value="Cancel"/>
                </center>
                <br />
    </div>
    <br /><br />
</asp:Content>

