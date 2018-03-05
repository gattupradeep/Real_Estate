<%@ Page Title="" Language="C#" MasterPageFile="~/SuperAdmin/SuperAdmin.master" AutoEventWireup="true" CodeFile="EditCompany.aspx.cs" Inherits="SuperAdmin_E_Company" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<link href="../css/datepicker.css" rel="stylesheet" />
    <link href="../css/fileuploads/default.css" rel="stylesheet" />
    <link href="../css/fileuploads/uploadify.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
        <div class="container-fluid">
        <br /><br />
            <center><h4>Edit Company</h4></center><br />
        <div class="row-fluid span12">
            <div class="row-fluid">
                              <div class="span1"></div>
                <div class="span5">
                    <table>
                    <tr><td>Company Code</td><td><input type="text" id="ccode" readonly="readonly" /></td></tr>
                    <tr>
                        <td>Company Name</td>
                        <td><input id="cmpname" type="text" /></td>
                    </tr>
                    <tr><td>Start Date</td>
                        <td><input id="startdate" type="text" /></td></tr>
                    <tr><td>End Date</td>
                        <td><input id="enddate" type="text" /></td></tr>
                    <tr><td>Trial Date</td>
                        <td><input id="trialdate" type="text" /></td></tr>
                    <tr><td>Contract Agreement</td><td><input type="text" id="file1" />
                        <asp:FileUpload ID="FileUpload1" runat="server" ClientIDMode="Static" />
                        <span id="realfile" style="visibility:hidden;"></span>
                                                   </td></tr>
                    <tr><td>Agreement Brief</td>
                        <td>
                            <textarea id="brief" cols="20" rows="4" style="overflow:scroll"></textarea></td></tr>
                    <tr><td>Discussion Details</td>
                        <td>
                            <textarea id="details" cols="20" rows="4" style="overflow:scroll"></textarea></td></tr>
                    <tr><td>Status</td><td>
                        <input id="status" type="text" /></td></tr>
                    <tr><td>Created Date</td><td>
                        <input id="createddate" type="text" /></td></tr>
                    <tr><td>Last Updated Date</td><td>
                        <input id="updateddate" type="text" /></td></tr>
                  </table>
                </div> 
                              <div class="span1"></div>
                              <div class="span5">
                           <table>
                               <tr><td>Website URL</td><td>
                        <input id="wurl" type="text" /></td></tr>
                              <tr><td>Address type</td><td>
                        <asp:DropDownList ID="ddladdtype" runat="server" DataSourceID="ObjectDataSource2" DataTextField="AddressType" DataValueField="AddTypeId" Width="214px" ClientIDMode="Static"></asp:DropDownList>
                                  <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" SelectMethod="AddType" TypeName="SuperAdminServices"></asp:ObjectDataSource>
                                  </td></tr>
                    <tr><td>Street</td><td>
                        <input id="street" type="text" /></td></tr>
                    <tr><td>City</td><td>
                        <input id="city" type="text" /></td></tr>
                    <tr><td>State</td><td>
                        <input id="state" type="text" /></td></tr>
                    <tr><td>Country</td><td>
                        <input id="country" type="text" /></td></tr>
                    <tr><td>Pin Code</td><td>
                        <input id="pin" type="text" /></td></tr>
                    <tr><td>Contact Name</td><td>
                        <input id="contact" type="text" /></td></tr>
                    <tr><td>Designation type</td>
                        <td><asp:DropDownList ID="ddldesgtype" runat="server" DataSourceID="ObjectDataSource1" DataTextField="DesgType" DataValueField="DesgId" Width="214px" ClientIDMode="Static"></asp:DropDownList>
                            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="DesigTypes" TypeName="SuperAdminServices"></asp:ObjectDataSource>
                        </td></tr>
                    <tr><td>Phone No</td><td>
                        <input id="phno" type="text" /></td></tr>
                    <tr><td>Mobile No</td><td>
                        <input id="mobno" type="text" /></td></tr>
                    <tr><td>Email ID</td><td>
                        <input id="email" type="text" /></td></tr>           
                           </table>
                              </div>
                              </div>
                          <center>
                              <label id="lblmsg" style="font-size:13px; color:White;"></label>
                          <br /><input type="button" value="Update" id="cupdate" />&nbsp;&nbsp;
                              <input type="button" value="Cancel" id="cancel" />
                          </center>
                          <br />
        </div>
        <script src="../js/swfobject.js" type="text/javascript"></script>
        <script src="../js/bootstrap-datepicker.js" type="text/javascript"></script>
        <script src="../js/jquery.uploadify.v2.1.0.min.js" type="text/javascript"></script>
        <script type="text/javascript">
            $(document).ready(function () {
                $("#startdate").datepicker();
                $("#enddate").datepicker();
                $("#trialdate").datepicker();
                $("#createddate").datepicker();
                $("#updateddate").datepicker();

                // File Upload for ADD tab2
                $("#<%=FileUpload1.ClientID%>").uploadify({
                    'uploader': '../js/uploadify.swf',
                    'script': '../Upload.ashx',
                    'cancelImg': '../images/cancel.png',
                    'folder': '../imgs',
                    'multi': true,
                    'auto': true,
                    'onComplete': function (event, queueID, fileObj, response, data) {
                        var path = response.toString();
                        var pth = path.substring(path.lastIndexOf('/') + 1, path.length);
                        $("#file1").val(pth);
                        $("#realfile").val(path);
                    }
                });

                $("#cancel").click(function () {
                    location.href = "ManageCompany.aspx";
                });


                var url = window.location.search;
                var id = url.substring(url.lastIndexOf('=') + 1, url.length);
                
                //                var ids = url.split("=");
                //                alert(ids);
                //                var id = ids[1];
                //                alert(id);

                $.ajax({
                    type: "POST",
                    contentType: "application/json; charset=utf-8",
                    url: "../WebService4SuperAdmin.asmx/GetCompany",
                    data: "{id: '" + id + "'}",
                    dataType: "json",
                    success: function (data1) {
                        var data = data1.d;
                        $("#ccode").val(data.Ccode);
                        $("#cmpname").val(data.Cname);
                        $("#startdate").val(data.sdate);
                        $("#enddate").val(data.edate);
                        $("#trialdate").val(data.tdate);
                        var path = data.file;
                        var pth = path.substring(path.lastIndexOf('/') + 1, path.length);
                        $("#realfile").val(path);
                        $("#file1").val(pth);
                        $("#brief").val(data.brief);
                        $("#details").val(data.details);
                        $("#status").val(data.status);
                        $("#createddate").val(data.cdate);
                        $("#updateddate").val(data.ldate);
                        $("#wurl").val(data.url);
                        $("#ddladdtype").val(data.AddressType);
                        $("#street").val(data.street);
                        $("#city").val(data.city);
                        $("#state").val(data.state);
                        $("#country").val(data.country);
                        $("#pin").val(data.pin);
                        $("#contact").val(data.contact);
                        $("#ddldesgtype").val(data.DesgType);
                        $("#phno").val(data.phno);
                        $("#mobno").val(data.mobno);
                        $("#email").val(data.email);
                    }
                });

                $("#cupdate").click(function () {
                    var ccode = $("#ccode").val();
                    var name = $("#cmpname").val();
                    var startdate = $("#startdate").val();
                    var enddate = $("#enddate").val();
                    var trialdate = $("#trialdate").val();
                    var agreement = $("#realfile").val();
                    var brief = $("#brief").val();
                    var details = $("#details").val();
                    var status = $("#status").val();
                    var createddate = $("#createddate").val();
                    var updateddate = $("#updateddate").val();
                    var url = $("#wurl").val();
                    var addtypeid = $("#ddladdtype").val();
                    var street = $("#street").val();
                    var city = $("#city").val();
                    var state = $("#state").val();
                    var country = $("#country").val();
                    var pin = $("#pin").val();
                    var contact = $("#contact").val();
                    var desg = $("#ddldesgtype").val();
                    var phno = $("#phno").val();
                    var mobno = $("#mobno").val();
                    var email = $("#email").val();
                    //alert(name + "  " + startdate + "  " + enddate + "  " + trialdate + "  " + agreement + "  " + brief + "  " + details + "  " + status + "  " + createddate + "  " + updateddate + "  " + url);
                    //alert(address + "  " + street + "  " + city + "  " + state + "  " + country + "  " + pin + "  " + contact + "  " + desg + "  " + phno + "  " + mobno + "  " + email);
                    if (name.length > 0 && startdate.length > 0 && enddate.length > 0 && trialdate.length > 0 && agreement.length > 0 && brief.length > 0 && details.length > 0 && status.length > 0 && createddate.length > 0 && updateddate.length > 0 && url.length > 0
                    && addressid.length > 0 && street.length > 0 && city.length > 0 && state.length > 0 && country.length > 0 && pin.length > 0 && contact.length > 0 && desg.length > 0 && phno.length > 0 && mobno.length > 0 && email.length > 0) {
                        if (validateEmail(email)) {
                            $.ajax({
                                type: "POST",
                                contentType: "application/json; charset=utf-8",
                                url: "../WebService4SuperAdmin.asmx/UpdateCompany",
                                data: "{ccode: '" + ccode + "',name: '" + name + "',startdate: '" + startdate + "',enddate: '" + enddate + "',trialdate: '" + trialdate + "',agreement: '" + agreement + "',brief: '" + brief + "',details: '" + details + "',status: '" + status + "',createddate: '" + createddate + "',updateddate: '" + updateddate + "',url: '" + url + "',addtypeid: '" + addtypeid + "',street: '" + street + "',city: '" + city + "',state: '" + state + "',country: '" + country + "',pin: '" + pin + "',contact: '" + contact + "',desg: '" + desg + "',phno: '" + phno + "',mobno: '" + mobno + "',email: '" + email + "'}",
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
                        $("#lblmsg").alert().val("Warning").html("Enter all fields").addClass("label-warning");
                    }
                });



            });
        </script>
    </div>
    <br /><br />
</asp:Content>

