<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="kayit_ol.aspx.cs" Inherits="WebApplication2.kurumsaluser.kayit_ol" EnableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
     <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <!-- Font Awesome Icons -->
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <!-- Theme style -->
    <link href="dist/css/AdminLTE.min.css" rel="stylesheet" />
    <!-- iCheck -->
    <link href="plugins/iCheck/square/blue.css" rel="stylesheet" />
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
</head>
<body class="login-page">
    <form id="Form1" runat="server">
        <div class="login-box">
            <div class="login-logo">
                <b>SAĞLIK</b>HERŞEY
            </div>


            <!-- /.login-logo -->
            <div class="login-box-body">
                <p class="login-box-msg">Kayıt Ekranı</p>
                <form method="post">
                                <asp:MultiView ID="MultiView1" runat="server">
                <asp:View ID="View1" runat="server">
                        <div class="form-group has-feedback">
                        <asp:TextBox ID="t1" CssClass="form-control" placeholder="E-Posta" runat="server"></asp:TextBox>
                        <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
                    </div>
                    <div class="form-group has-feedback">
                        <asp:TextBox ID="txt_sifre" CssClass="form-control" TextMode="Password" placeholder="Şifre" runat="server"></asp:TextBox>
                        <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                    </div>
                                       
                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>

                        <div class="col-xs-4">
                            <asp:Button runat="server" type="submit" ID="b1" CssClass="btn btn-primary btn-block btn-flat" Text="Devam" OnClick="b1_Click"  />
                        </div>
                </asp:View>
                <asp:View ID="View2" runat="server">
                     <div class="form-group has-feedback">
                        <asp:TextBox ID="TextBox1" CssClass="form-control" placeholder="AD" runat="server"></asp:TextBox>
                         </div>
                      <div class="form-group has-feedback">
                        <asp:TextBox ID="TextBox2" CssClass="form-control" placeholder="SOYAD" runat="server"></asp:TextBox>
                         </div>
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                        <asp:ListItem Value="1">Erkek</asp:ListItem>
                        <asp:ListItem Value="2">Kadın</asp:ListItem>
                     </asp:RadioButtonList>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>11</asp:ListItem>
                        <asp:ListItem>12</asp:ListItem>
                        <asp:ListItem>13</asp:ListItem>
                        <asp:ListItem>14</asp:ListItem>
                        <asp:ListItem>15</asp:ListItem>
                        <asp:ListItem>16</asp:ListItem>
                        <asp:ListItem>17</asp:ListItem>
                        <asp:ListItem>18</asp:ListItem>
                        <asp:ListItem>19</asp:ListItem>
                        <asp:ListItem>20</asp:ListItem>
                        <asp:ListItem>21</asp:ListItem>
                        <asp:ListItem>22</asp:ListItem>
                        <asp:ListItem>23</asp:ListItem>
                        <asp:ListItem>24</asp:ListItem>
                        <asp:ListItem>25</asp:ListItem>
                        <asp:ListItem>26</asp:ListItem>
                        <asp:ListItem>27</asp:ListItem>
                        <asp:ListItem>28</asp:ListItem>
                        <asp:ListItem>29</asp:ListItem>
                        <asp:ListItem>30</asp:ListItem>
                        <asp:ListItem>31</asp:ListItem>
                     </asp:DropDownList><asp:DropDownList ID="DropDownList2" runat="server">
                         <asp:ListItem>ocak</asp:ListItem>
                         <asp:ListItem>şubat</asp:ListItem>
                         <asp:ListItem>mart</asp:ListItem>
                         <asp:ListItem>nisan</asp:ListItem>
                         <asp:ListItem>mayıs</asp:ListItem>
                         <asp:ListItem>haziran</asp:ListItem>
                         <asp:ListItem>temmuz</asp:ListItem>
                         <asp:ListItem>ağustos</asp:ListItem>
                         <asp:ListItem>eylül</asp:ListItem>
                         <asp:ListItem>ekim</asp:ListItem>
                         <asp:ListItem>kasım</asp:ListItem>
                         <asp:ListItem>aralık</asp:ListItem>
                     </asp:DropDownList>  <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>

                    <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                        <div class="col-xs-4">
                            <asp:Button runat="server" type="submit" ID="b2" CssClass="btn btn-primary btn-block btn-flat" Text="Kaydol" OnClick="b2_Click" />
                        </div>
                </asp:View>
              
            </asp:MultiView>

                
                    <div class="row">
                        <div class="col-xs-8">
                            <div class="checkbox icheck">
                  
                            </div>
                        </div>
                        <div class="col-xs-8">
                            <asp:Panel ID="pnl_ddogru" runat="server">
                            <div class="form-group">
                                <div class="alert alert-success alert-dismissable">
                                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                                    <h4><i class="icon fa fa-check"></i>Girş Yapıldı!</h4>
                                    Başarıyla Giriş Yapıldı...
                                </div>
                            </div>
                        </asp:Panel>
                        <asp:Panel ID="pnl_dyanlis" runat="server">
                            <div class="form-group">
                                <div class="alert alert-danger alert-dismissable">
                                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                                    <h4><i class="icon fa fa-ban"></i>Hata!</h4>
                                    Dığru Kullanıcı Adı veya Şifre Giriniz...
                                </div>
                            </div>
                        </asp:Panel>
                        </div>
                        <!-- /.col -->
                        <br />
                       
                        <!-- /.col -->
                    </div>
                </form>
                <%--<div class="social-auth-links text-center">
                <p>- OR -</p>
                <a href="#" class="btn btn-block btn-social btn-facebook btn-flat"><i class="fa fa-facebook"></i>Sign in using Facebook</a>
                <a href="#" class="btn btn-block btn-social btn-google-plus btn-flat"><i class="fa fa-google-plus"></i>Sign in using Google+</a>
            </div>--%>
                <!-- /.social-auth-links -->

                <%--            <a href="#">I forgot my password</a><br />
            <a href="register.html" class="text-center">Register a new membership</a>--%>
            </div>
            <!-- /.login-box-body -->
        </div>
        <!-- /.login-box -->
        <!-- jQuery 2.1.3 -->
        <script src="plugins/jQuery/jQuery-2.1.3.min.js"></script>
        <!-- Bootstrap 3.3.2 JS -->
        <script src="bootstrap/js/bootstrap.min.js"></script>
        <!-- iCheck -->
        <script src="plugins/iCheck/icheck.min.js"></script>
        <script>
            $(function () {
                $('input').iCheck({
                    checkboxClass: 'icheckbox_square-blue',
                    radioClass: 'iradio_square-blue',
                    increaseArea: '20%' // optional
                });
            });
    </script>
    </form>
</body>
</html>
