<%@ Page Title="" Language="C#" MasterPageFile="~/SuperAdmin/SuperAdmin.master" AutoEventWireup="true" CodeFile="EditBranches.aspx.cs" Inherits="Admin_E_Branches" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <div class="container-fluid">
        <div class="row-fluid span12">
            <center><h4 class="row-title">Edit Branch</h4></center><br />
           <div class="row-fluid">
            <div class="span1"></div>
               <div class="span5">
                 <table>
                     <tr><td>Branch Code</td><td><input type="text" id="e_brcode" /></td></tr>
                 <tr><td>Branch Name</td><td><input type="text" id="e_bname" /></td></tr>
                 <tr><td>Address Type</td><td>
                     <asp:DropDownList ID="e_ddladdtype" runat="server"  ClientIDMode="Static"
                         DataSourceID="ObjectDataSource1" DataTextField="AddressType" 
                         DataValueField="AddTypeId" Height="30px" Width="205px"></asp:DropDownList>
                                          <asp:ObjectDataSource ID="ObjectDataSource1" 
                         runat="server" SelectMethod="AddType" TypeName="SuperAdminServices">
                     </asp:ObjectDataSource>
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
                     <asp:DropDownList ID="e_ddldesgtype" runat="server" ClientIDMode="Static"
                         DataSourceID="ObjectDataSource2" DataTextField="DesgType" 
                         DataValueField="DesgId" Width="203px"></asp:DropDownList>
                     <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" 
                         SelectMethod="DesigTypes" TypeName="SuperAdminServices"></asp:ObjectDataSource>
                     </td></tr>
                 <tr><td>Phone No</td><td>
                     <input id="e_bphno" type="text" /></td></tr>
                <tr><td>Mobile No</td><td>
                     <input id="e_bmobno" type="text" /></td></tr> 
                <tr><td>Email ID</td><td>
                     <input id="e_bemail" type="text" /></td></tr> 
                 <tr><td>Status</td><td>
                 <input id="e_bstatus" type="text" />    
                 </td></tr>
                  <tr>
                           <td>Start Date</td>
                           <td><input type="text" id="startdate" /></td>
                       </tr>
                   </table>

               </div>
            </div>
                <br />
                <center>
                <label id="lblmsg" style="font-size:13px; color:White;"></label><br />
                <input id="btnupdate" type="button" value="Update" />
                &nbsp;&nbsp;&nbsp;
                <input id="btncancel" type="button" value="Cancel" />
                </center>
        </div> 
        <script type="text/javascript" src="../js/bootstrap-datepicker.js"></script>
        <script type="text/javascript">
            $(document).ready(function () {
                var url = window.location.search;
                var id = url.substring(url.lastIndexOf('=') + 1, url.length);
                alert(id);

                $.ajax({
                    type: "POST",
                    contentType: "application/json; charset=utf-8",
                    url: "../WebService4SuperAdmin.asmx/GetBranch",
                    data: "{id: '" + id + "'}",
                    dataType: "json",
                    success: function (data1) {
                        var data = data1.d;
                        $("#e_brcode").val(data.bcode);
                        $("#e_bname").val(data.bname);
                        $("#e_ddladdtype").val(data.AddTypeId);
                        $("#e_bstreet").val(data.street);
                        $("#e_bcity").val(data.city);
                        $("#e_bstate").val(data.state);
                        $("#e_bcountry").val(data.country);
                        $("#e_bpin").val(data.pin);
                        $("#e_bcontname").val(data.contact);
                        $("#e_ddldesgtype").val(data.DesgId);
                        $("#e_bphno").val(data.phno);
                        $("#e_bmobno").val(data.mobno);
                        $("#e_bemail").val(data.email);
                        $("#e_bstatus").val(data.strstatus);
                        $("#startdate").val(data.sdate);
                    }
                });

                $("#cancel").click(function () {
                    location.href = "ManageBranches.aspx";
                });

                $("#btnupdate").click(function () {
                    var code = $("#e_brcode").val();
                    var name = $("#e_bname").val();
                    var ddl = $("#e_ddladdtype").val();
                    var street = $("#e_bstreet").val();
                    var city = $("#e_bcity").val();
                    var state = $("#e_bstate").val();
                    var country = $("#e_bcountry").val();
                    var pin = $("#e_bpin").val();
                    var contact = $("#e_bcontname").val();
                    var desg = $("#e_ddldesgtype").val();
                    var phno = $("#e_bphno").val();
                    var mobno = $("#e_bmobno").val();
                    var email = $("#e_bemail").val();
                    var status = $("#e_bstatus").val();
                    var date = $("#startdate").val();
                                        alert(code + " " + name + "  " + ddl + "  " + street + "  " + city + "  " + state + "  " + country + "  " + pin
                                         + "  " + contact + "  " + desg + "  " + mobno + "  " + phno + "  " + email + "  " + status + "  " + date);
                    if (code.length>0 && name.length > 0 && ddl.length > 0 && street.length > 0 && city.length > 0 && state.length > 0 && country.length > 0 && contact.length > 0
                        && pin.length > 0 && desg.length > 0 && phno.length > 0 && mobno.length > 0 && email.length > 0 && status.length > 0 && date.length > 0) {
                        if (validateEmail(email)) {
                            $.ajax({
                                type: "POST",
                                contentType: "application/json; charset=utf-8",
                                url: "../Webservice4SuperAdmin.asmx/UpdateBranch",
                                data: "{code:'" + code + "',name:'" + name + "',ddl:'" + ddl + "',street:'" + street + "',city:'" + city + "',state:'" + state + "',country:'" + country + "',contact:'" + contact + "',pin:'" + pin + "',desg:'" + desg + "',phno:'" + phno + "',mobno:'" + mobno + "',email:'" + email + "',status:'" + status + "',date:'" + date + "'}",
                                dataType: "json",
                                success: function (data) {
                                    var flag = data.d;
                                    if (flag == true) {
                                        $("#lblmsg").alert().val("Success").html("Updated Successfully").addClass("label-success");
                                    }
                                    else if (flag == false) {
                                        $("#lblmsg").alert().val("Warning").html("Error While Updating").addClass("label-warning");
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

