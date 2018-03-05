<%@ Page Title="" Language="C#" MasterPageFile="~/SuperAdmin/SuperAdmin.master" AutoEventWireup="true" CodeFile="AddCompanyDetails.aspx.cs" Inherits="A_CompanyDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../css/fileuploads/default.css" rel="stylesheet" />
    <link href="../css/fileuploads/uploadify.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <div class="container-fluid">
        <center><h4>Add Company Details</h4></center>
        <div class="row-fluid span12">
            <br /><br />
                <div class="row-fluid">
                    <div class="span1"></div>
        <div class="span5">
        <table>
        <tr><td>Company Code</td><td><asp:DropDownList ID="ddlcompanycode" runat="server" 
                DataSourceID="ObjectDataSource1" DataTextField="Cname" DataValueField="Ccode" ClientIDMode="Static"></asp:DropDownList>
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                SelectMethod="Companies" TypeName="SuperAdminServices">
            </asp:ObjectDataSource>
            </td></tr>
        <tr><td>Short Name</td><td><input type="text" id="a_txtShotrName" /></td></tr>
        <tr><td>Logo</td><td><img id="imglogo" style=" height:100px; width:100px;" />
                             <asp:FileUpload ID="logoupload" runat="server" />
                             <input id="txtLogoUrl" type="text" /></td></tr>     
        <tr><td>Facebook Url</td><td><input id="a_txtFacebookUrl" type="text" /></td></tr>
        <tr><td>Twitter Url</td><td><input id="a_txtTwitterUrl" type="text" /></td></tr>
         <tr><td>Youtube Url</td><td><input id="a_txtYoutubeUrl" type="text" /></td></tr>
        <tr><td>Google Url</td><td><input id="a_txtGoogleUrl" type="text" /></td></tr>
        <tr><td>Footer Image</td><td><img id="imgFooter" style=" height:100px; width:100px;" />
                                     <asp:FileUpload ID="footerImageUpload" runat="server" />
                                     <input id="txtFooterImageUrl" type="text" /></td></tr>   
        <tr><td>Background Image</td><td><img id="imgBackground" style=" height:100px; width:100px;" />
                                         <asp:FileUpload ID="BackgroundImageUpload" runat="server" />
                                         <input id="txtBgImageUrl" type="text" /></td></tr>
        <tr><td>Home Video Url</td><td><input type="text" id="txtHomevideoUrl" /></td></tr> 
        <tr><td>Address Id</td><td><asp:DropDownList ID="ddlAddressId" runat="server" 
                DataSourceID="ObjectDataSource2" DataTextField="AddressType" ClientIDMode="Static" 
                DataValueField="AddTypeId"></asp:DropDownList>
            <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" 
                SelectMethod="AddType" TypeName="SuperAdminServices"></asp:ObjectDataSource>
            </td></tr>
                
     </table>
     </div>
      <div class="span1"></div>
      <div class="span5">
       <table>
        <tr><td>Phone No</td><td><input type="text" id="txtPhoneNo" /></td></tr>          
        <tr><td>Mobile No</td><td><input type="text" id="txtMobileNo" /></td></tr>
         <tr><td>Welcome Description</td><td> <textarea id="txtWelcomeDesc" cols="20" rows="4" style="overflow:scroll"></textarea></td></tr>
         <tr><td>Copyrights</td><td><input type="text" id="txtCopyRights" /></td></tr>
         <tr><td>Style Color</td><td><input type="text" id="txtStyleColor" /></td></tr>
         <tr><td>Page Title</td><td><input id="txtPageTitle" type="text" /></td></tr>
         <tr><td>Meta Keywords</td><td> <textarea id="txtMetakeywords" cols="20" rows="4" style="overflow:scroll"></textarea></td></tr>
         <tr><td>Meta Description</td><td> <textarea id="txtMetaDesc" cols="20" rows="4" style="overflow:scroll"></textarea></td></tr>
         </table>
     </div>
     </div>
     <center><input type="button" id="add" value="Add" />&nbsp &nbsp
             <input type="button" id="Cancel" value="Cancel" />
    </center>
      <br />

      </div>

       <script src="../js/jquery-1.9.1.min.js" type="text/javascript"></script>
        <script src="../js/bootstrap.js" type="text/javascript"></script>
        <script src="../js/swfobject.js" type="text/javascript"></script>
        <script src="../js/jquery.uploadify.v2.1.0.min.js" type="text/javascript"></script>
       
                <script type="text/javascript">
                    $(document).ready(function () {

                        $("#txtLogoUrl").hide();
                        $("#txtFooterImageUrl").hide();
                        $("#txtBgImageUrl").hide();
                        $("#imglogo").hide();
                        $("#imgFooter").hide();
                        $("#imgBackground").hide();
                        $("#<%=logoupload.ClientID%>").uploadify({
                            'uploader': '../js/uploadify.swf',
                            'script': '../Upload.ashx',
                            'cancelImg': '../images/cancel.png',
                            'folder': '../imgs',
                            'multi': true,
                            'auto': true,
                            'onComplete': function (event, queueID, fileObj, response, data) {
                                var path = response.toString();
                                $("#txtLogoUrl").val(path);
                                $("#imglogo").attr('src', path);
                                $("#imglogo").show();
                            }
                        });
                        $("#<%=footerImageUpload.ClientID%>").uploadify({
                            'uploader': '../js/uploadify.swf',
                            'script': '../Upload.ashx',
                            'cancelImg': '../images/cancel.png',
                            'folder': '../imgs',
                            'multi': true,
                            'auto': true,
                            'onComplete': function (event, queueID, fileObj, response, data) {
                                var path = response.toString();
                                $("#txtFooterImageUrl").val(path);
                                $("#imgFooter").attr('src', path);
                                $("#imgFooter").show();
                            }
                        });
                        $("#<%=BackgroundImageUpload.ClientID%>").uploadify({
                            'uploader': '../js/uploadify.swf',
                            'script': '../Upload.ashx',
                            'cancelImg': '../images/cancel.png',
                            'folder': '../imgs',
                            'multi': true,
                            'auto': true,
                            'onComplete': function (event, queueID, fileObj, response, data) {
                                var path = response.toString();
                                $("#txtBgImageUrl").val(path);
                                $("#imgBackground").attr('src', path);
                                $("#imgBackground").show();
                            }
                        });

                        $("#Cancel").click(function () {
                            location.href = "ManageCompanyDetails.aspx";
                        });
                        $("#add").click(function () {
                            var CompanyCode = $("#ddlcompanycode").val();
                            var ShortName = $("#a_txtShotrName").val();
                            var Logourl = $("#txtLogoUrl").val();
                            var AddressId = $("#ddlAddressId").val();
                            var PhoneNo = $("#txtPhoneNo").val();
                            var MobileNo = $("#txtMobileNo").val();
                            var FBUrl = $("#a_txtFacebookUrl").val();
                            var TwUrl = $("#a_txtTwitterUrl").val();
                            var YtUrl = $("#a_txtYoutubeUrl").val();
                            var GoogleUrl = $("#a_txtGoogleUrl").val();
                            var FooterImgUrl = $("#txtFooterImageUrl").val();
                            var BGImgUrl = $("#txtBgImageUrl").val();
                            var HomeVideoUrl = $("#txtHomevideoUrl").val();
                            var WelcomeDesc = $("#txtWelcomeDesc").val();
                            var CopyRight = $("#txtCopyRights").val();
                            var StyleColor = $("#txtStyleColor").val();
                            var PageTitle = $("#txtPageTitle").val();
                            var MetaKw = $("#txtMetakeywords").val();
                            var MetaDesc = $("#txtMetaDesc").val();
                            $.ajax({
                                type: "POST",
                                contentType: "application/json; charset=utf-8",
                                url: "../WebService4SuperAdmin.asmx/AddCompanyDetails",
                                data: "{CompanyCode: '" + CompanyCode + "',ShortName: '" + ShortName + "',Logourl: '" + Logourl + "',AddressId: '" + AddressId + "',PhoneNo: '" + PhoneNo + "',MobileNo: '" + MobileNo + "',FBUrl: '" + FBUrl + "',TwUrl: '" + TwUrl + "',YtUrl: '" + YtUrl + "',GoogleUrl: '" + GoogleUrl + "',FooterImgUrl: '" + FooterImgUrl + "',BGImgUrl: '" + BGImgUrl + "',HomeVideoUrl: '" + HomeVideoUrl + "',WelcomeDesc: '" + WelcomeDesc + "',CopyRight: '" + CopyRight + "',StyleColor: '" + StyleColor + "',PageTitle: '" + PageTitle + "',MetaKw: '" + MetaKw + "',MetaDesc: '" + MetaDesc + "'}",
                                dataType: "json",
                                success: function (data) {
                                    var flag = data.d;
                                    if (flag == true) {
                                        alert("added succesfully");
                                        //                                        $("#lblmsg").alert().val("Success").html("Added Successfully").addClass("label-success");
                                    }
                                    else if (flag == false) {
                                        alert("Error while adding");
                                        //                                        $("#lblmsg").alert().val("Warning").html("Error While Adding").addClass("label-warning");
                                    }
                                }
                            });
                        });
                    });
        </script>


            </div>
    <br /><br />
</asp:Content>

