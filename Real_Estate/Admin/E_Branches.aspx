<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="E_Branches.aspx.cs" Inherits="Admin_E_Branches" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <div class="container-fluid">
        <div class="row-fluid span12 offset2">
            <center><h4 class="row-title">Edit Branch</h4></center>
           <div class="row-fluid">
            <div class="span1"></div>
               <div class="span5">
                 <table>
                     <tr><td>Branch Code</td><td><input type="text" id="e_brcode" /></td></tr>
                 <tr><td>Branch Name</td><td><input type="text" id="e_bname" /></td></tr>
                 <tr><td>Address Type</td><td>
                     <asp:DropDownList ID="e_ddladdtype" runat="server"></asp:DropDownList>
                                          </td></tr>
                 <tr><td>Street</td><td>
                     <input id="e_bstreet" type="text" /></td></tr>
                 <tr><td>City</td><td>
                     <input id="e_bcity" type="text" /></td></tr>
                 <tr><td>State</td><td>
                     <input id="e_bstate" type="text" /></td></tr>
                <tr><td>Country</td><td>
                     <input id="e_bcountry" type="text" /></td></tr>
                
                 
             </table>
                   </div>
               <div class="span1"></div>
               <div class="span5">
                   <table>
                 <tr><td>Pin Code</td><td>
                     <input id="e_bpin" type="text" /></td></tr>
                 <tr><td>Contact Name</td><td>
                     <input id="e_bcontname" type="text" /></td></tr>
                 <tr><td>Designation</td><td>
                     <asp:DropDownList ID="e_ddldesgtype" runat="server"></asp:DropDownList></td></tr>
                 <tr><td>Phone No</td><td>
                     <input id="e_bphno" type="text" /></td></tr>
                <tr><td>Mobile No</td><td>
                     <input id="e_bmobno" type="text" /></td></tr> 
                <tr><td>Email ID</td><td>
                     <input id="e_bemail" type="text" /></td></tr> 
                 <tr><td>Status</td><td>
                 <input id="e_bstatus" type="text" />    
                 </td></tr>

                   </table>

               </div>
            </div>
                <br />
                <center><input id="btnupdate" type="button" value="Update" />
                &nbsp;&nbsp;&nbsp;
                <input id="btncancel" type="button" value="Cancel" />
            </center>
        </div> 
    </div>
    <br /><br />
</asp:Content>

