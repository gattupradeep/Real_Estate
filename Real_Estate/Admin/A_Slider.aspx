<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="A_Slider.aspx.cs" Inherits="Slider" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <div class="container-fluid">
        <div class="row-fluid span12 offset2">
            <center><h4>Add New Slider</h4></center>
            <br />
           <div class="span4"></div>
            <div class="span4">
             <table>
                <tr>
                    <td>Image Url</td>
                    <td><input type="text" id="a_imageurl" /></td>
                </tr>
                <tr>
                    <td>Title</td>
                    <td><input type="text" id="a_title" /></td>
                </tr>
                <tr>
                    <td>Caption</td>
                    <td><input type="text" id="a_caption" /></td>
                </tr>
                <tr>
                    <td>Description</td>
                    <td>
                        <textarea id="a_desc" cols="20" rows="4"></textarea>
                    </td>
                </tr>
                <tr>
                    <td>Navigation Url</td>
                    <td><input type="text" id="a_navurl" /></td>
                </tr>
            </table>
                <br />
        <center><input type="button" id="btnadd" value="Add" /></center>
                </div>
            <div class="span4"></div>
        </div>
        
    </div>
    <br /><br />
</asp:Content>

