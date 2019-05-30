<%@ Page Title="" Language="C#" MasterPageFile="~/kurumsaluser/Site1.Master" AutoEventWireup="true" CodeBehind="hastalik.aspx.cs" Inherits="WebApplication2.kurumsaluser.hastalik" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <section class="content">
        <div class="row">
            <div class="col-lg-12">
                <div class="box box-warning box-solid">
                    <div class="box-header with-border">
                        <h3 class="box-title">Hastalık Bilgisi</h3>
                        <div class="box-tools pull-right">
                            <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
                        </div>
                        <!-- /.box-tools -->
                    </div>
                    <!-- /.box-header -->
                    <div class="box-body">
                         <div class="form-group has-feedback">
                        <asp:TextBox ID="t1" CssClass="form-control" placeholder="Ad" runat="server" Width="250px"></asp:TextBox>                        
                    </div>
                        <hr />
                                                 <div class="form-group has-feedback">
                                                    Durum:  <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                                                         <asp:ListItem>Aralıklı: Gelip gidiyor</asp:ListItem>
                                                         <asp:ListItem>Geçmiş: Artık sahip değil</asp:ListItem>
                                                         <asp:ListItem>Güncel: Şu anda sahip</asp:ListItem>
                                                     </asp:RadioButtonList>
                        
                    </div>
                       <hr />
                                    
                        Başlangıç Tarihi: <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="350px">
                            <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                            <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                            <OtherMonthDayStyle ForeColor="#999999" />
                            <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                            <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                            <TodayDayStyle BackColor="#CCCCCC" />
                         </asp:Calendar>    
                        <hr />
                        <br />
                        <br />
                        <br />

                        <div class="form-group" style="width: 200px;">
                            <asp:Button ID="Button1" runat="server" CssClass="btn btn-block btn-primary" Text="ekle" OnClick="Button1_Click"   />
                           <asp:Button ID="Button2" runat="server" CssClass="btn btn-block btn-primary" Text="ekle ve başka bir tane daha" OnClick="Button2_Click"  />
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
