<%@ Page Title="" Language="C#" MasterPageFile="~/kurumsaluser/Site1.Master" AutoEventWireup="true" CodeBehind="acil_durum_paylas.aspx.cs" Inherits="WebApplication2.kurumsaluser.acil_durum_paylas" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="form-group has-feedback">
          <asp:TextBox ID="t1" CssClass="form-control" placeholder="Alıcının E-posta Adresi" runat="server" Width="300px"></asp:TextBox>
          <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
        </div>

                        <div class="col-xs-4">
                            
                         <asp:Button runat="server" type="submit" ID="btn_giris" CssClass="btn btn-primary btn-block btn-flat" Text="Paylaşım Erişimi Gönder" OnClick="btn_giris_Click"  />
                        </div>
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
  
</asp:Content>
