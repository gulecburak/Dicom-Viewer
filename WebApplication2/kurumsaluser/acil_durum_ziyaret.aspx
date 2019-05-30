<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="acil_durum_ziyaret.aspx.cs" Inherits="WebApplication2.kurumsaluser.acil_durum_ziyaret" EnableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
       <div>
             <b>Alerjiler</b>
    <br />
    
  
                                <table class="table table-hover">
                                    <tbody>
                                        <tr>
                                            <th>Ad</th>
                                            <th>Tepki </th>
                                            <th>Tür</th>
                                               <th>Tarih</th>
                                      
                                        </tr>
                                       
                                     <asp:repeater id="my1" runat="server">
                                            <ItemTemplate>
                                                <tr>
                                                    <td>
                                                         <%# Eval("ad") %>
                                                       
                                                    </td>
                                                    <td>
                                                         <%# Eval("tepki") %> 
                                                        
                                                    </td>
                                                    <td>
                                                         <%# Eval("tur") %>
                                                        
                                                    </td>
                                                      <td>
                                                         <%# Eval("tarih") %>
                                                        
                                                    </td>
                                                   
                                                </tr>
                                            </ItemTemplate>
                                     </asp:repeater>
                                    </tbody>
                                </table>
      <br />
    <b>Sağlık Durumu</b>
                            
   
                                <table class="table table-hover">
                                    <tbody>
                                        <tr>
                                            <th>Ad</th>
                                            <th>Durum</th>
                                            <th>Başlangıç Tarihi</th>
                                      
                                        </tr>
                                       
                                     <asp:repeater id="my2" runat="server">
                                            <ItemTemplate>
                                                <tr>
                                                    <td>
                                                         <%# Eval("ad") %>
                                                       
                                                    </td>
                                                    <td>
                                                         <%# Eval("durum") %> 
                                                        
                                                    </td>
                                                    <td>
                                                         <%# Eval("ftarih") %>
                                                        
                                                    </td>
                                                   
                                                </tr>
                                            </ItemTemplate>
                                     </asp:repeater>
                                    </tbody>
                                </table>
                      
    <hr />
    <b>Kullanılan İlaçlar</b>
      <br />

                                <table class="table table-hover">
                                    <tbody>
                                        <tr>
                                            <th>Ad</th>
                                            <th>Etkinlik</th>
                                            <th>Dozaj </th>
                                            <th>Alınma Biçimi</th>
                                            <th>Alınma Sıklığı</th>
                                      
                                        </tr>
                                       
                                     <asp:repeater id="my3" runat="server">
                                            <ItemTemplate>
                                                <tr>
                                                    <td>
                                                         <%# Eval("ad") %>
                                                       
                                                    </td>
                                                    <td>
                                                         <%# Eval("etkinlik") %> 
                                                        
                                                    </td>
                                                    <td>
                                                         <%# Eval("dozaj") %>
                                                        
                                                    </td>
                                                      <td>
                                                         <%# Eval("alma") %>
                                                        
                                                    </td>
                                                      <td>
                                                         <%# Eval("zaman") %>
                                                        
                                                    </td>
                                                   
                                                </tr>
                                            </ItemTemplate>
                                     </asp:repeater>
                                    </tbody>
                                </table>
    <hr />
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label> 
        </div>
    </form>
</body>
</html>
