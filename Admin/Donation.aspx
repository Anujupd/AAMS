<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Donation.aspx.cs" Inherits="Admin_Donation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style4 {
        width: 112px;
    }
    .auto-style5 {
        width: 112px;
        height: 23px;
    }
    .auto-style6 {
        height: 23px;
    }
    .auto-style7 {
        width: 196px;
    }
    .auto-style8 {
        height: 23px;
        width: 196px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="auto-style1" style="width: 89%">
    <tr>
        <td class="auto-style4">Donor Name</td>
        <td class="auto-style7">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
        <td rowspan="7">
            <asp:Image ID="Image2" runat="server" Height="430px" ImageUrl="~/pic/md.jpg" Width="695px" style="margin-left: 113px" />
        </td>
    </tr>
    <tr>
        <td class="auto-style4">Medicine Name</td>
        <td class="auto-style7">
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">Disease Name</td>
        <td class="auto-style7">
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">Quantity</td>
        <td class="auto-style8">
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">Mobile Number</td>
        <td class="auto-style7">
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">Address</td>
        <td class="auto-style7">
            <asp:TextBox ID="TextBox6" runat="server" Height="34px" Width="167px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Save" />
        </td>
        <td class="auto-style7">
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style7">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

