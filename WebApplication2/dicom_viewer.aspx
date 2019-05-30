<%@ Page Title="" Language="C#" MasterPageFile="~/kurumsaluser/Site1.Master" AutoEventWireup="true" CodeBehind="dicom_viewer.aspx.cs" Inherits="WebApplication2.dicom_viewer" %>
<%@ Import Namespace="System.IO" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <style>
        #divList {
            display: inline-block;
            border: 1px solid #969696;
            padding-left: 0px;
            float:left;
        }
            #divList li {
                background: #e4e4e4;
                padding: 5px;
            }
            #divList li:not(:first-child) {
                border-top:1px solid #969696;
            }
        #dwv {
            display:inline-block;
            margin-left:20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     
        <div style="float:left">
          <div>
            <asp:FileUpload ID="FileUpload1" runat="server" />
            <asp:Button ID="Button1" OnClick="Button1_Click" runat="server" Text="Upload" />
          </div>
          <ul id="divList">

          <% foreach(string i in FileList) { %>
           <li> <a href="/?filename=<%=new  FileInfo(i).Name %>"><%=new  FileInfo(i).Name %></a></li>
          <% } %>
          </ul>
        </div>
    <!-- Main container div -->
      <div id="dwv">
        <div class="layerContainer">
          <canvas class="imageLayer"></canvas>
        </div>
      </div>

    <script src="dwv-0.22.0.min.js"></script>
    <script>
        // base function to get elements
        dwv.gui.getElement = dwv.gui.base.getElement;
        dwv.gui.displayProgress = function (percent) { };

        // create the dwv app
        var app = new dwv.App();
        // initialise with the id of the container div
        app.init({
            "containerDivId": "dwv"
        });
        // load dicom data
        <% if (!string.IsNullOrEmpty(SelectedFile)) {%>
          app.loadURLs(["<%= SelectedFile%>"]);
        <% } %>
    </script>

</asp:Content>
