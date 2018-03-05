<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="E_CompanyDetails.aspx.cs" Inherits="E_CompanyDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <div class="container-fluid">
        <div class="row-fluid span12 offset2">
            <center><h4 class="row-title">Edit Company</h4></center>
            <br />
            <div class="row-fluid">
                <div class="span1"></div>
            <div class="span5">
             <table>
                 <tr><td>Company Code</td><td><input type="text" id="e_ccode" readonly="true"/></td></tr>
                 <tr><td>Short Name</td><td><input type="text" id="e_cname" /></td></tr>
                 <tr><td>Image</td><td>
                     <asp:FileUpload ID="e_image" runat="server" /></td></tr>
                 <tr><td>Facebook Url</td><td>
                     <input id="e_cfb" type="text" /></td></tr>
                 <tr><td>Twitter Url</td><td>
                     <input id="e_ctw" type="text" /></td></tr>
                 <tr><td>Google Url</td><td>
                     <input id="e_cggl" type="text" /></td></tr>
                 <tr><td>Youtube Url</td><td>
                     <input id="e_cyt" type="text" /></td></tr>
                 <tr><td>Address Type</td><td>
                     <asp:DropDownList ID="e_ddladdtype" runat="server"></asp:DropDownList>
                                          </td></tr>
                 <tr><td>Street</td><td>
                     <input id="e_cstreet" type="text" /></td></tr>
                 <tr><td>City</td><td>
                     <input id="e_ccity" type="text" /></td></tr>
                 <tr><td>State</td><td>
                     <input id="e_cstate" type="text" /></td></tr>
                <tr><td>Country</td><td>
                     <input id="e_ccountry" type="text" /></td></tr>
                 
             </table>
                </div>
            <div class="span1"></div>
            <div class="span5">
            <table>
                <tr><td>Pin Code</td><td>
                     <input id="e_cpin" type="text" /></td></tr>
                 <tr><td>Contact Name</td><td>
                     <input id="e_ccontname" type="text" /></td></tr>
                 <tr><td>Designation</td><td>
                     <asp:DropDownList ID="e_ddldesgtype" runat="server"></asp:DropDownList></td></tr>
                 <tr><td>Phone No</td><td>
                     <input id="e_cphno" type="text" /></td></tr>
                <tr><td>Mobile No</td><td>
                     <input id="e_cmobno" type="text" /></td></tr> 
                <tr><td>Email ID</td><td>
                     <input id="e_cemail" type="text" /></td></tr> 
                <tr><td>Page Title</td><td>
                     <input id="e_cpgtitle" type="text" /></td></tr>
                 <tr><td>Meta Keywords</td><td>
                     <textarea id="e_mkw" cols="20" rows="4"></textarea></td></tr>
                 <tr><td>Meta Description</td><td>
                     <textarea id="e_mdesc" cols="20" rows="4"></textarea></td></tr>
             </table>
            </div>
                <br />
                </div>
            <center><input id="btnupdate" type="button" value="Update" />
                &nbsp;&nbsp;&nbsp;
                <input id="btncancel" type="button" value="Cancel" />
            </center>
        </div> 
    </div>
    <br /><br />
</asp:Content>

