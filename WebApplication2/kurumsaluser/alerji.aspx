<%@ Page Title="" Language="C#" MasterPageFile="~/kurumsaluser/Site1.Master" AutoEventWireup="true" CodeBehind="alerji.aspx.cs" Inherits="WebApplication2.kurumsaluser.alerji" EnableEventValidation="false"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <section class="content">
        <div class="row">
            <div class="col-lg-12">
                <div class="box box-warning box-solid">
                    <div class="box-header with-border">
                        <h3 class="box-title">Alerji Bilgisi</h3>
                        <div class="box-tools pull-right">
                            <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
                        </div>
                        <!-- /.box-tools -->
                    </div>
                    <!-- /.box-header -->
                    <div class="box-body">
                         <div class="form-group has-feedback">
                        <asp:TextBox ID="t1" CssClass="form-control" placeholder="Ad" runat="server" Width="250px"></asp:TextBox>
                        <hr />
                             <br />
                             Tepkime</div>
                                                 <div class="form-group has-feedback">
                                 <asp:DropDownList ID="DropDownList1" runat="server">
                                     <asp:ListItem Value="Seçim Yapılmadı">Seç</asp:ListItem>
                                     <asp:ListItem>ağrılı idrar çıkarma</asp:ListItem>
                                     <asp:ListItem>ağrılı nefes alma</asp:ListItem>
                                     <asp:ListItem>anaflatik şok</asp:ListItem>
                                     <asp:ListItem>anormal kan pıhtılaşması</asp:ListItem>
                                     <asp:ListItem>anormal refleksler</asp:ListItem>
                                     <asp:ListItem>anormal susama</asp:ListItem>
                                     <asp:ListItem>aşırı uyuma</asp:ListItem>
                                     <asp:ListItem>ateş</asp:ListItem>
                                     <asp:ListItem>az idrara çıkma</asp:ListItem>
                                     <asp:ListItem>baş ağrısı</asp:ListItem>
                                     <asp:ListItem>baş dönmesi</asp:ListItem>
                                     <asp:ListItem>bayılma /bilinç kaybı</asp:ListItem>
                                     <asp:ListItem>bebeğin aşırı ağlaması</asp:ListItem>
                                     <asp:ListItem>bez büyümesi</asp:ListItem>
                                     <asp:ListItem>boğaz ağrısı</asp:ListItem>
                                     <asp:ListItem>boyun tutulması</asp:ListItem>
                                     <asp:ListItem>bulantı / kusma</asp:ListItem>
                                     <asp:ListItem>burun kanaması</asp:ListItem>
                                     <asp:ListItem>büyüme sorunu</asp:ListItem>
                                     <asp:ListItem>dışkı kaçırma</asp:ListItem>
                                     <asp:ListItem>döküntü</asp:ListItem>
                                     <asp:ListItem>duyuşsal değişiklikler</asp:ListItem>
                                     <asp:ListItem>düşük kan basıncı</asp:ListItem>
                                     <asp:ListItem>düşük kan sayımı</asp:ListItem>
                                     <asp:ListItem>felç </asp:ListItem>
                                     <asp:ListItem>gaz</asp:ListItem>
                                     <asp:ListItem>göğüs sıkışması /rahatsızlığı</asp:ListItem>
                                     <asp:ListItem>görsel değişiklikler</asp:ListItem>
                                     <asp:ListItem>hafıza kaybı</asp:ListItem>
                                     <asp:ListItem>halüsinasyonlar</asp:ListItem>
                                     <asp:ListItem>hağşırma </asp:ListItem>
                                     <asp:ListItem>hıçkırık</asp:ListItem>
                                     <asp:ListItem>hırıltı</asp:ListItem>
                                     <asp:ListItem>hızlı kalp atışı</asp:ListItem>
                                     <asp:ListItem>hızlı nefes alma</asp:ListItem>
                                     <asp:ListItem>hiperventilasyon</asp:ListItem>
                                     <asp:ListItem>idrar kaçırma</asp:ListItem>
                                     <asp:ListItem>ishal</asp:ListItem>
                                     <asp:ListItem>iştah kaybı</asp:ListItem>
                                     <asp:ListItem>kabızlık</asp:ListItem>
                                     <asp:ListItem>kalp çarpıntısı</asp:ListItem>
                                     <asp:ListItem>kan enfeksiyonu</asp:ListItem>
                                     <asp:ListItem>karın ağrısı</asp:ListItem>
                                     <asp:ListItem>karın şişkinliği</asp:ListItem>
                                     <asp:ListItem Value="kas ağrıları"></asp:ListItem>
                                     <asp:ListItem Value="göz kaşıntısı/sulanması"></asp:ListItem>
                                     <asp:ListItem Value="kızarma"></asp:ListItem>
                                     <asp:ListItem>kilo alma</asp:ListItem>
                                     <asp:ListItem>kilo kaybı</asp:ListItem>
                                     <asp:ListItem>koku veya tat alma bozukluğu</asp:ListItem>
                                     <asp:ListItem>kolay yaralanma</asp:ListItem>
                                   
                                     <asp:ListItem>konuşma sorunu</asp:ListItem>
                                     <asp:ListItem>koordinasyon eksikliği</asp:ListItem>
                                     <asp:ListItem>kurdeşen</asp:ListItem>
                                     <asp:ListItem>mide yanması</asp:ListItem>
                                     <asp:ListItem>nefes darlığı</asp:ListItem>
                                     <asp:ListItem>nöbet geçirme</asp:ListItem>
                                     <asp:ListItem>öksürük</asp:ListItem>
                                     <asp:ListItem>öksürükle kan gelmesi</asp:ListItem>
                                     <asp:ListItem>sarılık</asp:ListItem>
                                     <asp:ListItem>seğirme</asp:ListItem>
                                     <asp:ListItem>sesli nefes alma</asp:ListItem>
                                     <asp:ListItem>sık idrara çıkma</asp:ListItem>
                                     <asp:ListItem>solgunluk</asp:ListItem>
                                     <asp:ListItem>şok</asp:ListItem>
                                     <asp:ListItem>terleme</asp:ListItem>
                                     <asp:ListItem>uykusuzluk</asp:ListItem>
                                     <asp:ListItem>yeşil veyya sarı balgam</asp:ListItem>
                                     <asp:ListItem>yorgunluk</asp:ListItem>
                                     <asp:ListItem>yutkunmada zorluk</asp:ListItem>
                                     <asp:ListItem>yüksek kan basıncı</asp:ListItem>
                                     <asp:ListItem>yürümede sorun</asp:ListItem>
                                     <asp:ListItem>yüz zayıflığı </asp:ListItem>
                                     <asp:ListItem>zayıflık</asp:ListItem>
                                                     </asp:DropDownList>
                        
                                                     <br />
                                                     <br />
                                                     <hr />
                        
                    </div>Tür<br />
                         <br />
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                            <asp:ListItem>Bitki</asp:ListItem>
                            <asp:ListItem>Çevresel</asp:ListItem>
                            <asp:ListItem>Hayvan</asp:ListItem>
                            <asp:ListItem>Gıda</asp:ListItem>
                            <asp:ListItem>İlaç</asp:ListItem>
                         </asp:RadioButtonList>
                                    
                         <br />
                         <br />
                         <br />
                        <hr />
                         İlk Gözlemlenen Tarih<br />
                         <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="350px">
                           <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                           <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                           <OtherMonthDayStyle ForeColor="#999999" />
                           <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                           <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                           <TodayDayStyle BackColor="#CCCCCC" />
                         </asp:Calendar>
                       
                      
                        <div class="form-group" style="width: 200px;">
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <asp:Button ID="Button1" runat="server" CssClass="btn btn-block btn-primary" Text="ekle" OnClick="Button1_Click"/>
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
