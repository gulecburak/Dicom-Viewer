<%@ Page Title="" Language="C#" MasterPageFile="~/kurumsaluser/Site1.Master" AutoEventWireup="true" CodeBehind="ilac.aspx.cs" Inherits="WebApplication2.kurumsaluser.ilac" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <section class="content">
        <div class="row">
            <div class="col-lg-12">
                <div class="box box-warning box-solid">
                    <div class="box-header with-border">
                        <h3 class="box-title">İlaç Bilgisi</h3>
                        <div class="box-tools pull-right">
                            <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
                        </div>
                        <!-- /.box-tools -->
                    </div>
                    <!-- /.box-header -->
                    <div class="box-body">
                         <div class="form-group has-feedback">
                        <asp:TextBox ID="t1" CssClass="form-control" placeholder="Ad" runat="server" Width="250px"></asp:TextBox>
                        
                             <br />
                            
                        
                    </div>
                        <hr />
                         <br />


                       <div class="col-md-6">
                                         
    <asp:TextBox ID="t2" CssClass="form-control" placeholder="Etkinlik (örn:10 mg)" runat="server" Width="250px"></asp:TextBox>                                           
                                        </div>
                                        <div class="col-md-6">
                                            <fieldset>
                                                <asp:DropDownList ID="DropDownList1" runat="server">
                                                    <asp:ListItem Value="Seçim Yapılmadı">Seç ...</asp:ListItem>
                                                    <asp:ListItem>Birim (unt)</asp:ListItem>
                                                    <asp:ListItem>Mikrogram (mcg)</asp:ListItem>
                                                    <asp:ListItem>Miliekivalen (meq)</asp:ListItem>
                                                    <asp:ListItem>Miliekivalen/mililitre (meq/ml)</asp:ListItem>
                                                    <asp:ListItem>Miligram (mg)</asp:ListItem>
                                                    <asp:ListItem>Miligram/mililitre (mg/ml)</asp:ListItem>
                                                    <asp:ListItem>Mililitre (ml)</asp:ListItem>
                                                    <asp:ListItem>Mililitre başına birim (unt/ml)</asp:ListItem>
                                                    <asp:ListItem>Mililitre başına koloni oluşturan birim (cfu/ml)</asp:ListItem>
                                                    <asp:ListItem>Uluslararası birim (iu)</asp:ListItem>
                                                    <asp:ListItem>Yüzde (%)</asp:ListItem>
                                                </asp:DropDownList>
                 
                                            </fieldset>
                                        </div>
                    <hr />
                        <br />
                        <br />
                        <br />
   

                        
                       <div class="col-md-6">
                                            
    <asp:TextBox ID="t3" CssClass="form-control" placeholder="Dozaj (örn:1 damla)" runat="server" Width="250px"></asp:TextBox>                                            </fieldset>
                                        </div>
                                        <div class="col-md-6">
                                            <fieldset>
                                                <asp:DropDownList ID="DropDownList2" runat="server">
                                                    <asp:ListItem Value="Seçim Yapılmadı">Seç ...</asp:ListItem>
                                                    <asp:ListItem>Aplikatör dolusu</asp:ListItem>
                                                    <asp:ListItem>Bant</asp:ListItem>
                                                    <asp:ListItem>Birim (B)</asp:ListItem>
                                                    <asp:ListItem>Çay kaşığı (ç.k.)</asp:ListItem>
                                                    <asp:ListItem>Damla</asp:ListItem>
                                                    <asp:ListItem>Damlalık dolusu</asp:ListItem>
                                                    <asp:ListItem>Doz</asp:ListItem>
                                                    <asp:ListItem>Fitil</asp:ListItem>
                                                    <asp:ListItem>Gram (g)</asp:ListItem>
                                                    <asp:ListItem>İğne</asp:ListItem>
                                                    <asp:ListItem>Kapsül</asp:ListItem>
                                                    <asp:ListItem>Kaşık</asp:ListItem>
                                                    <asp:ListItem>Mikrogram (mcg)</asp:ListItem>
                                                    <asp:ListItem>Miligram (mg)</asp:ListItem>
                                                    <asp:ListItem>Mililitre (ml)</asp:ListItem>
                                                    <asp:ListItem>Nefes çekme</asp:ListItem>
                                                    <asp:ListItem>Paket</asp:ListItem>
                                                    <asp:ListItem>Pastil</asp:ListItem>
                                                    <asp:ListItem>Ped</asp:ListItem>
                                                    <asp:ListItem>Poşet</asp:ListItem>
                                                    <asp:ListItem>Soluma</asp:ListItem>
                                                    <asp:ListItem>Sprey</asp:ListItem>
                                                    <asp:ListItem>Şırınga</asp:ListItem>
                                                    <asp:ListItem>Tablet</asp:ListItem>
                                                    <asp:ListItem>Uzun tablet</asp:ListItem>
                                                    <asp:ListItem>Yemek kaşığı (y.k.)</asp:ListItem>
                                                    <asp:ListItem>Yüzde (%)</asp:ListItem>
                                                   
                                                </asp:DropDownList>
                 
                                            </fieldset>
                                        </div>

                     <br />
                  <hr />
                        <br />
                          <br />
                       Alınma biçimi<br />
&nbsp;<asp:DropDownList ID="DropDownList3" runat="server">
                             <asp:ListItem Value="Seçim Yapılmadı">Seç...</asp:ListItem>
                             <asp:ListItem>Ağız yoluyla</asp:ListItem>
                             <asp:ListItem>Besleme tüpü yoluyla</asp:ListItem>
                             <asp:ListItem>Burundan (sprey/damla)</asp:ListItem>
                             <asp:ListItem>Deri yoluyla</asp:ListItem>
                             <asp:ListItem>Dil altından</asp:ListItem>
                             <asp:ListItem>Enjeksiyon yoluyla</asp:ListItem>
                             <asp:ListItem>Gözden</asp:ListItem>
                             <asp:ListItem>İntravenöz (IV) hat yoluyla</asp:ListItem>
                             <asp:ListItem>Kulaktan</asp:ListItem>
                             <asp:ListItem>Rektal</asp:ListItem>
                             <asp:ListItem>Solunan</asp:ListItem>
                             <asp:ListItem>Vajinal</asp:ListItem>
                         </asp:DropDownList>

                        <br />
                         <br />
                        <hr />
                                           <div class="form-group has-feedback">
                        <asp:TextBox ID="t4" CssClass="form-control" placeholder="Alınma Sıklığı (örn günde 1 defa)" runat="server" Width="250px"></asp:TextBox>
                        
                             <br />
                            
                        
                    </div>
                        


                        

                       
                                    
                       
                       
                      
                        <div class="form-group" style="width: 200px;">
                            <asp:Button ID="Button1" runat="server" CssClass="btn btn-block btn-primary" Text="ekle" OnClick="Button1_Click"    />
                           <asp:Button ID="Button2" runat="server" CssClass="btn btn-block btn-primary" Text="ekle ve başka bir tane daha" OnClick="Button2_Click"   />
                            <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
                        </div>
                     
                    </div>
                    <!-- /.box-body -->
                </div>
                <!-- /.box -->
            </div>
        
         </section>

</asp:Content>
