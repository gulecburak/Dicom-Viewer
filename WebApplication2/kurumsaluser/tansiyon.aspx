<%@ Page Title="" Language="C#" MasterPageFile="~/kurumsaluser/Site1.Master" AutoEventWireup="true" CodeBehind="tansiyon.aspx.cs" Inherits="WebApplication2.kurumsaluser.tansiyon" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="row">
            <div class="col-lg-12">
                <div class="box box-warning box-solid">
                    <div class="box-header with-border">
                        <h3 class="box-title">Tansiyon Bilgisi</h3>
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
                                            <th>Sistolik</th>
                                            <th>Diyastolik</th>
                                            <th>Nabız</th>
                                      
                                        </tr>
                                       
                                     <asp:repeater id="my" runat="server">
                                            <ItemTemplate>
                                                <tr>
                                                    <td>
                                                         <%# Eval("tarih") %>
                                                       
                                                    </td>
                                                    <td>
                                                         <%# Eval("sis") %>  mmHg
                                                        
                                                    </td>
                                                    <td>
                                                         <%# Eval("diyas") %>  mmHg
                                                        
                                                    </td>
                                                    <td>
                                                         <%# Eval("nabiz") %> BPM
                                                        
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
    Sistolik<asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1">
        <Series>
            <asp:Series Name="Series1" ChartType="Line" YValuesPerPoint="3" XValueMember="tarih" YValueMembers="sis"></asp:Series>
        </Series>
        <ChartAreas>
            <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
        </ChartAreas>
    </asp:Chart>
   Diyastolik <asp:Chart ID="Chart2" runat="server" DataSourceID="SqlDataSource2">
        <Series>
            <asp:Series Name="Series1" ChartType="Line" XValueMember="tarih" YValueMembers="diyas"></asp:Series>
        </Series>
        <ChartAreas>
            <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
        </ChartAreas>
    </asp:Chart>
  Nabız  <asp:Chart ID="Chart3" runat="server" DataSourceID="SqlDataSource3">
        <Series>
            <asp:Series Name="Series1" ChartType="Line" XValueMember="tarih" YValueMembers="nabiz"></asp:Series>
        </Series>
        <ChartAreas>
            <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
        </ChartAreas>
    </asp:Chart>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bitirmeConnectionString %>" SelectCommand="SELECT [sis], [tarih] FROM [tansiyon] WHERE ([id] = @id) ORDER BY [tarih]">
        <SelectParameters>
            <asp:SessionParameter Name="id" SessionField="id" Type="Int32" />
        </SelectParameters>
      </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:bitirmeConnectionString %>" SelectCommand="SELECT [diyas], [tarih] FROM [tansiyon] WHERE ([id] = @id) ORDER BY [tarih]">
        <SelectParameters>
            <asp:SessionParameter Name="id" SessionField="id" Type="Int32" />
        </SelectParameters>
      </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:bitirmeConnectionString %>" SelectCommand="SELECT [tarih], [nabiz] FROM [tansiyon] WHERE ([id] = @id) ORDER BY [tarih]">
        <SelectParameters>
            <asp:SessionParameter Name="id" SessionField="id" Type="Int32" />
        </SelectParameters>
      </asp:SqlDataSource>
</asp:Content>
