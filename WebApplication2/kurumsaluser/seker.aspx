<%@ Page Title="" Language="C#" MasterPageFile="~/kurumsaluser/Site1.Master" AutoEventWireup="true" CodeBehind="seker.aspx.cs" Inherits="WebApplication2.kurumsaluser.seker" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="row">
            <div class="col-lg-12">
                <div class="box box-warning box-solid">
                    <div class="box-header with-border">
                        <h3 class="box-title">Şeker Bilgisi</h3>
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
                                            <th>Kan Şekeri</th>
                                            <th>Ölçüm İçeriği</th>
                                      
                                        </tr>
                                       
                                     <asp:repeater id="my" runat="server">
                                            <ItemTemplate>
                                                <tr>
                                                    <td>
                                                         <%# Eval("tarih") %>
                                                       
                                                    </td>
                                                    <td>
                                                         <%# Eval("sugar") %> mg / dL
                                                        
                                                    </td>
                                                    <td>
                                                         <%# Eval("durum") %>
                                                        
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
    AÇ<asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1">
        <Series>
            <asp:Series Name="Series1" ChartType="Line" XValueMember="tarih" YValueMembers="sugar"></asp:Series>
        </Series>
        <ChartAreas>
            <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
        </ChartAreas>
    </asp:Chart>
    TOK<asp:Chart ID="Chart2" runat="server" DataSourceID="SqlDataSource2">
        <Series>
            <asp:Series Name="Series1" ChartType="Line" XValueMember="tarih" YValueMembers="sugar"></asp:Series>
        </Series>
        <ChartAreas>
            <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
        </ChartAreas>
    </asp:Chart>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bitirmeConnectionString %>" SelectCommand="SELECT [sugar], [tarih] FROM [seker] WHERE (([id] = @id) AND ([durum] = @durum)) ORDER BY [tarih]">
        <SelectParameters>
    
            <asp:SessionParameter Name="id" SessionField="id" Type="Int32" />
            <asp:Parameter DefaultValue="AÇ" Name="durum" Type="String" />
        </SelectParameters>
     </asp:SqlDataSource>
    
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:bitirmeConnectionString %>" SelectCommand="SELECT [sugar], [tarih] FROM [seker] WHERE (([id] = @id) AND ([durum] = @durum)) ORDER BY [tarih]">
        <SelectParameters>
            <asp:SessionParameter Name="id" SessionField="id" Type="Int32" />
            <asp:Parameter DefaultValue="TOK" Name="durum" Type="String" />
        </SelectParameters>
     </asp:SqlDataSource>
</asp:Content>
