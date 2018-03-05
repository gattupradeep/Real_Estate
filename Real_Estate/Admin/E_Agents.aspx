<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="E_Agents.aspx.cs" Inherits="E_Agents" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <div class="container-fluid">
        <div class="row-fluid span12 offset2">
            <center><h4 class="row-title">Edit Agent</h4>
             <table>
                 <tr><td>Agent Id</td><td><input type="text" id="e_txtaid" readonly="true" /></td></tr>
                 <tr><td>Agent Name</td><td><input type="text" id="e_txtaname" /></td></tr>
                 <tr><td>Address</td><td>
                     <input id="e_txtaadd" type="text" /></td></tr>
                 <tr><td>City</td><td>
                     <input id="e_txtacity" type="text" /></td></tr>
                 <tr><td>Phone No</td><td>
                     <input id="e_txtaphno" type="text" /></td></tr>
                 <tr><td>Mobile No</td><td>
                     <input id="e_txtamobno" type="text" /></td></tr>
                 <tr><td>Description</td><td>
                     <textarea id="e_txtadesc" cols="20" rows="2"></textarea></td></tr>
                 <tr><td>Image</td><td>
                     <asp:FileUpload ID="e_image" runat="server" /></td></tr>
             </table>
                <br />
                <input id="btnupdate" type="button" value="Update" />&nbsp;&nbsp;&nbsp;
                <input id="btncancel" type="button" value="Cancel" />
                </center>
        </div> 
    </div>
    <br /><br />
</asp:Content>

