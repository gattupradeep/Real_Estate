<%@ Page Title="" Language="C#" MasterPageFile="~/SuperAdmin/SuperAdmin.master" AutoEventWireup="true" CodeFile="AddBranches.aspx.cs" Inherits="A_Branches" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <div class="container-fluid">
        <div class="row-fluid span12">
            <center><h4 class="row-title">Add New Branch</h4></center>
           <div class="row-fluid">
            <div class="span1"></div>
               <div class="span5">
                 <table>
                 <tr><td>Branch Name</td><td><input type="text" id="a_bname" /></td></tr>
                 <tr><td>Address Type</td><td>
                     <asp:DropDownList ID="a_ddladdtype" runat="server" DataSourceID="ObjectDataSource1" DataTextField="AddressType" DataValueField="AddTypeId" ClientIDMode="Static"></asp:DropDownList>
                                          <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="AddType" TypeName="SuperAdminServices"></asp:ObjectDataSource>
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
                     <asp:DropDownList ID="a_ddldesgtype" runat="server" DataSourceID="ObjectDataSource2" DataTextField="DesgType" DataValueField="DesgId" ClientIDMode="Static"></asp:DropDownList>
                     <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" SelectMethod="DesigTypes" TypeName="SuperAdminServices"></asp:ObjectDataSource>
                     </td></tr>
                 <tr><td>Phone No</td><td>
                     <input id="a_bphno" type="text" /></td></tr>
                <tr><td>Mobile No</td><td>
                     <input id="a_bmobno" type="text" /></td></tr> 
                <tr><td>Email ID</td><td>
                     <input id="a_bemail" type="text" /></td></tr> 
                 <tr><td>Status</td><td>
                 <input id="a_bstatus" type="text" />    
                 </td></tr>
                       <tr>
                           <td>Start Date</td>
                           <td><input type="text" id="startdate" /></td>
                       </tr>
                   </table>

               </div>
            </div>
                <br />
                <center><input id="btnadd" type="button" value="Add" />&nbsp;&nbsp;
                <input type="button" id="cancel" value="Cancel" />
                <br /><br />
            <asp:Label ID="lblmsg" runat="server" ClientIDMode="Static" Font-Size="12"></asp:Label>
            <br /></center>
        </div> 
        
        <script type="text/javascript" src="../js/bootstrap-datepicker.js"></script>
        <script type="text/javascript">
            $(document).ready(function () {
                $("#startdate").datepicker();

                $("#cancel").click(function () {
                    location.href = "ManageBranches.aspx";
                });


                $("#btnadd").click(function () {
                    var name = $("#a_bname").val();
                    var ddl = $("#a_ddladdtype").val();
                    var street = $("#a_bstreet").val();
                    var city = $("#a_bcity").val();
                    var state = $("#a_bstate").val();
                    var country = $("#a_bcountry").val();
                    var pin = $("#a_bpin").val();
                    var contact = $("#a_bcontname").val();
                    var desg = $("#a_ddldesgtype").val();
                    var phno = $("#a_bphno").val();
                    var mobno = $("#a_bmobno").val();
                    var email = $("#a_bemail").val();
                    var status = $("#a_bstatus").val();
                    var date = $("#startdate").val();
                    //                    alert(name + "  " + ddl + "  " + street + "  " + city + "  " + state + "  " + country + "  " + pin
                    //                     + "  " + contact + "  " + desg + "  " + mobno + "  " + phno + "  " + email + "  " + status + "  " + date);
                    if (name.length > 0 && ddl.length > 0 && street.length > 0 && city.length > 0 && state.length > 0 && country.length > 0 && contact.length > 0
                        && pin.length > 0 && desg.length > 0 && phno.length > 0 && mobno.length > 0 && email.length > 0 && status.length > 0 && date.length > 0) {
                        if (validateEmail(email)) {
                            $.ajax({
                                type: "POST",
                                contentType: "application/json; charset=utf-8",
                                url: "../Webservice4SuperAdmin.asmx/AddBranch",
                                data: "{name:'" + name + "',ddl:'" + ddl + "',street:'" + street + "',city:'" + city + "',state:'" + state + "',country:'" + country + "',contact:'" + contact + "',pin:'" + pin + "',desg:'" + desg + "',phno:'" + phno + "',mobno:'" + mobno + "',email:'" + email + "',status:'" + status + "',date:'" + date + "'}",
                                dataType: "json",
                                success: function (data) {
                                    var flag = data.d;
                                    if (flag == true) {
                                        $("#lblmsg").alert().val("Success").html("Added Successfully").addClass("label-success");
                                    }
                                    else if (flag == false) {
                                        $("#lblmsg").alert().val("Warning").html("Error While Adding").addClass("label-warning");
                                    }
                                }
                            });

                            function validateEmail(a) {
                                var l = a.length;
                                if (l > 0) {
                                    var filter = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;
                                    if (filter.test(a)) {
                                        return true;
                                    }
                                    else {
                                        return false;
                                    }

                                } else {
                                    return false;
                                }
                            }
                        }
                        else {
                            $("#lblmsg").alert().val("Warning").html("Enter Valid Email").addClass("label-warning");
                        }
                    }
                    else {
                        $("#lblmsg").alert().val("Warning").html("Enter All Fields").addClass("label-warning");
                    }
                });



            });
        </script>
    </div>
    <br /><br />
</asp:Content>

