<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="A_CompanyDetails.aspx.cs" Inherits="A_CompanyDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <div class="container-fluid">
        <div class="row-fluid span12 offset2">
            <center><h4 class="row-title">Add New Company</h4></center>
            <br />
            <div class="row-fluid">
                <div class="span1"></div>
            <div class="span5">
             <table>
                 <tr><td>Short Name</td><td><input type="text" id="a_cname" /></td></tr>
                 <tr><td>Image</td><td>
                     <asp:FileUpload ID="a_image" runat="server" /></td></tr>
                 <tr><td>Facebook Url</td><td>
                     <input id="a_cfb" type="text" /></td></tr>
                 <tr><td>Twitter Url</td><td>
                     <input id="a_ctw" type="text" /></td></tr>
                 <tr><td>Google Url</td><td>
                     <input id="a_cggl" type="text" /></td></tr>
                 <tr><td>Youtube Url</td><td>
                     <input id="a_cyt" type="text" /></td></tr>
                 <tr><td>Address Type</td><td>
                     <asp:DropDownList ID="a_ddladdtype" runat="server"></asp:DropDownList>
                                          </td></tr>
                 <tr><td>Street</td><td>
                     <input id="a_cstreet" type="text" /></td></tr>
                 <tr><td>City</td><td>
                     <input id="a_ccity" type="text" /></td></tr>
                 <tr><td>State</td><td>
                     <input id="a_cstate" type="text" /></td></tr>
                <tr><td>Country</td><td>
                     <input id="a_ccountry" type="text" /></td></tr>
                 
             </table>
                </div>
            <div class="span1"></div>
            <div class="span5">
            <table>
                <tr><td>Pin Code</td><td>
                     <input id="a_cpin" type="text" /></td></tr>
                 <tr><td>Contact Name</td><td>
                     <input id="a_ccontname" type="text" /></td></tr>
                 <tr><td>Designation</td><td>
                     <asp:DropDownList ID="a_ddldesgtype" runat="server"></asp:DropDownList></td></tr>
                 <tr><td>Phone No</td><td>
                     <input id="a_cphno" type="text" /></td></tr>
                <tr><td>Mobile No</td><td>
                     <input id="a_cmobno" type="text" /></td></tr> 
                <tr><td>Email ID</td><td>
                     <input id="a_cemail" type="text" /></td></tr> 
                <tr><td>Page Title</td><td>
                     <input id="a_cpgtitle" type="text" /></td></tr>
                 <tr><td>Meta Keywords</td><td>
                     <textarea id="a_cmkw" cols="20" rows="4"></textarea></td></tr>
                 <tr><td>Meta Description</td><td>
                     <textarea id="a_mdesc" cols="20" rows="4"></textarea></td></tr>
             </table>
            </div>
                <br />
                </div>
            <center><input id="btnadd" type="button" value="Add" /></center>
        </div> 
         
    </div>
    <br /><br />
</asp:Content>

