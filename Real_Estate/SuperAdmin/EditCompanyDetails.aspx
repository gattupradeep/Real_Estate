<%@ Page Title="" Language="C#" MasterPageFile="~/SuperAdmin/SuperAdmin.master" AutoEventWireup="true" CodeFile="EditCompanyDetails.aspx.cs" Inherits="SuperAdmin_E_CompanyDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
     <div class="container-fluid">
        <center><h4>Edit Company Details</h4></center>
        <div class="row-fluid span12">
            <br /><br />
                <div class="row-fluid">
                    <div class="span1"></div>
        <div class="span5">
        <table>
            <tr><td>Company Code</td><td>
                <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList></td></tr>
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
    </table>
            </div>
                    <div class="span1"></div>
                <div class="span5">
                    <table>
                        <tr><td>Page Title</td><td>
            <input id="a_cpgtitle" type="text" /></td></tr>
        <tr><td>Meta Keywords</td><td>
            <textarea id="a_cmkw" cols="20" rows="4"></textarea></td></tr>
        <tr><td>Meta Description</td><td>
            <textarea id="a_mdesc" cols="20" rows="4"></textarea></td></tr>
                    </table>
                </div>
                    </div>
                 <center><input id="btnupdate" type="button" value="Update" />
                &nbsp;&nbsp;&nbsp;
                <input id="btncancel" type="button" value="Cancel" />
            </center>
                          <br />
                      </div>
    </div>
    <br /><br />
</asp:Content>

