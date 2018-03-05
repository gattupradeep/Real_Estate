<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="E_Slider.aspx.cs" Inherits="Admin_E_Slider" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <div class="container-fluid">
        <div class="row-fluid span12 offset2">
            <center><h4>Edit Slider</h4></center>
            <br />
           <div class="span4"></div>
            <div class="span4">
             <table>
                 <tr>
                    <td>SliderID</td>
                    <td><input type="text" id="e_sid" readonly="true" /></td>
                </tr>
                <tr>
                    <td>Image Url</td>
                    <td><input type="text" id="e_imageurl" /></td>
                </tr>
                <tr>
                    <td>Title</td>
                    <td><input type="text" id="e_title" /></td>
                </tr>
                <tr>
                    <td>Caption</td>
                    <td><input type="text" id="e_caption" /></td>
                </tr>
                <tr>
                    <td>Description</td>
                    <td>
                        <textarea id="e_desc" cols="20" rows="4"></textarea>
                    </td>
                </tr>
                <tr>
                    <td>Navigation Url</td>
                    <td><input type="text" id="e_navurl" /></td>
                </tr>
            </table>
                <br />
        <center>
            <input id="btnupdate" type="button" value="Update" />&nbsp;&nbsp;&nbsp;
                <input id="btncancel" type="button" value="Cancel" />
        </center>
                </div>
            <div class="span4"></div>
        </div>
        
    </div>
</asp:Content>

