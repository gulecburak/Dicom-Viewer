<%@ Page Title="" Language="C#" MasterPageFile="~/kurumsaluser/Site1.Master" AutoEventWireup="true" CodeBehind="kilo.aspx.cs" Inherits="WebApplication2.kurumsaluser.kilo" EnableEventValidation="false" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="row">
            <div class="col-lg-12">
                <div class="box box-warning box-solid">
                    <div class="box-header with-border">
                        <h3 class="box-title">Kilo Bilgisi</h3>
                        <div class="box-tools pull-right">
                            <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
                        </div>
                        <!-- /.box-tools -->
                    </div>
                    <!-- /.box-header -->
                    <div class="box-body">
                        <div class="box">
                            <div class="box-body table-responsive no-padding">
                                <table class="table table-hover">
                                    <tbody>
                                        <tr>
                                            <th>Tarih</th>
                                            <th>Kilo</th>
                            
                                      
                                        </tr>
                                       
                                     <asp:repeater id="my" runat="server">
                                            <ItemTemplate>
                                                <tr>
                                                    <td>
                                                         <%# Eval("tarih") %>
                                                       
                                                    </td>
                                                    <td>
                                                         <%# Eval("kg") %>  KG
                                                        
                                                    </td>
 
                                                   
                                                </tr>
                                            </ItemTemplate>
                                     </asp:repeater>
                                    </tbody>
                                </table>
                            </div>
                            <!-- /.box-body -->
                        </div>
                        <!-- /.box -->
                    </div>
                    <!-- /.box-body -->
                </div>
                <!-- /.box -->
            </div>
        </div>

    <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1">
        <Series>
            <asp:Series Name="Series1" ChartType="Line" XValueMember="tarih" YValueMembers="kg"></asp:Series>
        </Series>
        <ChartAreas>
            <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
        </ChartAreas>
    </asp:Chart>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bitirmeConnectionString %>" SelectCommand="SELECT [kg], [tarih] FROM [kilo] WHERE ([id] = @id) ORDER BY [tarih]">
        <SelectParameters>
            <asp:SessionParameter Name="id" SessionField="id" Type="Int32" />
        </SelectParameters>
</asp:SqlDataSource>


</asp:Content>
