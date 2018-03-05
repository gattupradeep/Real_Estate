<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="A_Branches.aspx.cs" Inherits="A_Branches" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <div class="container-fluid">
        <div class="row-fluid span12 offset2">
            <center><h4 class="row-title">Add New Branch</h4></center>
           <div class="row-fluid">
            <div class="span1"></div>
               <div class="span5">
                 <table>
                 <tr><td>Branch Name</td><td><input type="text" id="a_bname" /></td></tr>
                 <tr><td>Address Type</td><td>
                     <asp:DropDownList ID="a_ddladdtype" runat="server"></asp:DropDownList>
                                          </td></tr>
                 <tr><td>Street</td><td>
                     <input id="a_bstreet" type="text" /></td></tr>
                 <tr><td>City</td><td>
                     <input id="a_bcity" type="text" /></td></tr>
                 <tr><td>State</td><td>
                     <input id="a_bstate" type="text" /></td></tr>
                <tr><td>Country</td><td>
                     <input id="a_bcountry" type="text" /></td></tr>
                 <tr><td>Pin Code</td><td>
                     <input id="a_bpin" type="text" /></td></tr>
                 
             </table>
                   </div>
               <div class="span1"></div>
               <div class="span5">
                   <table>
                       <tr><td>Contact Name</td><td>
                     <input id="a_bcontname" type="text" /></td></tr>
                 <tr><td>Designation</td><td>
                     <asp:DropDownList ID="a_ddldesgtype" runat="server"></asp:DropDownList></td></tr>
                 <tr><td>Phone No</td><td>
                     <input id="a_bphno" type="text" /></td></tr>
                <tr><td>Mobile No</td><td>
                     <input id="a_bmobno" type="text" /></td></tr> 
                <tr><td>Email ID</td><td>
                     <input id="a_bemail" type="text" /></td></tr> 
                 <tr><td>Status</td><td>
                 <input id="a_bstatus" type="text" />    
                 </td></tr>

                   </table>

               </div>
            </div>
                <br />
                <center><input id="btnadd" type="button" value="Add" /></center>
        </div> 
    </div>
    <br /><br />
</asp:Content>

