<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="A_Agents.aspx.cs" Inherits="A_Agents" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <div class="container-fluid">
        <div class="row-fluid span12 offset2">
            <center><h4 class="row-title">Add New Agent</h4>
             <table>
                 <tr><td>Agent Name</td><td><input type="text" id="a_txtaname" /></td></tr>
                 <tr><td>Address</td><td>
                     <input id="a_txtaadd" type="text" /></td></tr>
                 <tr><td>City</td><td>
                     <input id="a_txtacity" type="text" /></td></tr>
                 <tr><td>Phone No</td><td>
                     <input id="a_txtaphno" type="text" /></td></tr>
                 <tr><td>Mobile No</td><td>
                     <input id="a_txtamobno" type="text" /></td></tr>
                 <tr><td>Description</td><td>
                     <textarea id="a_txtadesc" cols="20" rows="2"></textarea></td></tr>
                 <tr><td>Image</td><td>
                     <asp:FileUpload ID="a_image" runat="server" /></td></tr>
             </table>
                <br />
                <input id="btnadd" type="button" value="Add" />
                </center>
        </div> 
    </div>
    <br /><br />
</asp:Content>

