<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="A_Reports.aspx.cs" Inherits="A_Reports" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <div class="container-fluid">
        <div class="row-fluid span12 offset2">
            <input type="text" id="txt" />
            <input type="button" id="btn" value="Submit" /><br /><br />
            <label id="lblmsg" class="label"></label>
        </div>
        <script type="text/javascript">
            $(document).ready(function () {
                $("#btn").click(function () {
                    $("#lblmsg").removeClass();
                    var txt = $("#txt").val();
                    if (txt.length == 0) {
                        $("#lblmsg").alert().val("Warning").html("Empty").addClass("label-warning");
                    }
                    else {
                        $("#lblmsg").alert().val("Warning").html("Value").addClass("label-success");
                    }
                });
            });
        </script>
    </div>


</asp:Content>  

