<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 227px;
        }
        .auto-style3 {
            width: 22px;
        }
        .auto-style4 {
            width: 205px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">User Name</td>
            <td class="auto-style3">:</td>
            <td class="auto-style4">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td rowspan="5">
                <asp:Image ID="Image1" runat="server" Height="255px" ImageUrl="~/pic/download.gif" Width="723px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Contact Number</td>
            <td class="auto-style3">:</td>
            <td class="auto-style4">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Email Id</td>
            <td class="auto-style3">:</td>
            <td class="auto-style4">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Purpose</td>
            <td class="auto-style3">:</td>
            <td class="auto-style4">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Detail</td>
            <td class="auto-style3">:</td>
            <td class="auto-style4">
                <asp:TextBox ID="TextBox5" runat="server" Height="74px" TextMode="MultiLine" Width="248px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Save" />
            </td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

