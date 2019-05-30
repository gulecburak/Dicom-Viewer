<%@ Page Title="" Language="C#" MasterPageFile="~/kurumsaluser/Site1.Master" AutoEventWireup="true" CodeBehind="dosya_yukle.aspx.cs" Inherits="WebApplication2.kurumsaluser.dosya_yukle" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <asp:Label ID="Label1" runat="server" Text="Documents :"></asp:Label><br />
            <asp:FileUpload ID="FileUpload1" runat="server" /><br />
            <asp:Button ID="Button1" runat="server" Text="save" OnClick="Button1_Click" />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id">
                <Columns>
                    <asp:TemplateField HeaderText="Document">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" Text='<%# Eval("name") %>'></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <br />
</asp:Content>
