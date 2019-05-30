<%@ Page Title="" Language="C#" MasterPageFile="~/kurumsaluser/Site1.Master" AutoEventWireup="true" CodeBehind="giris.aspx.cs" Inherits="WebApplication2.kurumsaluser.giris" EnableEventValidation="false"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        Kilo:<asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1">
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
    <br/>
    <hr />


        AÇ<asp:Chart ID="Chart2" runat="server" DataSourceID="SqlDataSource2">
        <Series>
            <asp:Series Name="Series1" ChartType="Line" XValueMember="tarih" YValueMembers="sugar"></asp:Series>
        </Series>
        <ChartAreas>
            <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
        </ChartAreas>
    </asp:Chart>
    TOK<asp:Chart ID="Chart3" runat="server" DataSourceID="SqlDataSource3">
        <Series>
            <asp:Series Name="Series1" ChartType="Line" XValueMember="tarih" YValueMembers="sugar"></asp:Series>
        </Series>
        <ChartAreas>
            <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
        </ChartAreas>
    </asp:Chart>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:bitirmeConnectionString %>" SelectCommand="SELECT [sugar], [tarih] FROM [seker] WHERE (([id] = @id) AND ([durum] = @durum)) ORDER BY [tarih]">
        <SelectParameters>
    
            <asp:SessionParameter Name="id" SessionField="id" Type="Int32" />
            <asp:Parameter DefaultValue="AÇ" Name="durum" Type="String" />
        </SelectParameters>
     </asp:SqlDataSource>
    
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:bitirmeConnectionString %>" SelectCommand="SELECT [sugar], [tarih] FROM [seker] WHERE (([id] = @id) AND ([durum] = @durum)) ORDER BY [tarih]">
        <SelectParameters>
            <asp:SessionParameter Name="id" SessionField="id" Type="Int32" />
            <asp:Parameter DefaultValue="TOK" Name="durum" Type="String" />
        </SelectParameters>
     </asp:SqlDataSource>
    <br/>
    <hr />

       Sistolik<asp:Chart ID="Chart4" runat="server" DataSourceID="SqlDataSource4">
        <Series>
            <asp:Series Name="Series1" ChartType="Line" YValuesPerPoint="3" XValueMember="tarih" YValueMembers="sis"></asp:Series>
        </Series>
        <ChartAreas>
            <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
        </ChartAreas>
    </asp:Chart>
   Diyastolik <asp:Chart ID="Chart5" runat="server" DataSourceID="SqlDataSource5">
        <Series>
            <asp:Series Name="Series1" ChartType="Line" XValueMember="tarih" YValueMembers="diyas"></asp:Series>
        </Series>
        <ChartAreas>
            <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
        </ChartAreas>
    </asp:Chart>
  Nabız  <asp:Chart ID="Chart6" runat="server" DataSourceID="SqlDataSource6">
        <Series>
            <asp:Series Name="Series1" ChartType="Line" XValueMember="tarih" YValueMembers="nabiz"></asp:Series>
        </Series>
        <ChartAreas>
            <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
        </ChartAreas>
    </asp:Chart>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:bitirmeConnectionString %>" SelectCommand="SELECT [sis], [tarih] FROM [tansiyon] WHERE ([id] = @id) ORDER BY [tarih]">
        <SelectParameters>
            <asp:SessionParameter Name="id" SessionField="id" Type="Int32" />
        </SelectParameters>
      </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:bitirmeConnectionString %>" SelectCommand="SELECT [diyas], [tarih] FROM [tansiyon] WHERE ([id] = @id) ORDER BY [tarih]">
        <SelectParameters>
            <asp:SessionParameter Name="id" SessionField="id" Type="Int32" />
        </SelectParameters>
      </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:bitirmeConnectionString %>" SelectCommand="SELECT [tarih], [nabiz] FROM [tansiyon] WHERE ([id] = @id) ORDER BY [tarih]">
        <SelectParameters>
            <asp:SessionParameter Name="id" SessionField="id" Type="Int32" />
        </SelectParameters>
      </asp:SqlDataSource>
</asp:Content>
