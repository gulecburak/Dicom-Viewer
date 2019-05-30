<%@ Page Title="" Language="C#" MasterPageFile="~/kurumsaluser/Site1.Master" AutoEventWireup="true" CodeBehind="kilo_ekle.aspx.cs" Inherits="WebApplication2.kurumsaluser.kilo_ekle" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <section class="content">
        <div class="row">
            <div class="col-lg-12">
                <div class="box box-warning box-solid">
                    <div class="box-header with-border">
                        <h3 class="box-title">Kilo Ekle</h3>
                        <div class="box-tools pull-right">
                            <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
                        </div>
                        <!-- /.box-tools -->
                    </div>
                    <!-- /.box-header -->
                    <div class="box-body">
                         <div class="form-group has-feedback">
                        <asp:TextBox ID="t1" CssClass="form-control" placeholder="Kilo" runat="server" Width="250px"></asp:TextBox> KG
                        
                    </div>
                                                
                       
                                    
                       
                       
                      
                        <div class="form-group" style="width: 200px;">
                            <asp:Button ID="Button1" runat="server" CssClass="btn btn-block btn-primary" Text="ekle" OnClick="Button1_Click"    />
                           <asp:Button ID="Button2" runat="server" CssClass="btn btn-block btn-primary" Text="ekle ve başka bir tane daha" OnClick="Button2_Click" />
                            <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
                        </div>
                     
                    </div>
                    <!-- /.box-body -->
                </div>
                <!-- /.box -->
            </div>
        </div>
         </section>
</asp:Content>
