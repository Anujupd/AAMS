<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
    }
        .auto-style3 {
            width: 385px;
        }
        .auto-style4 {
            width: 79px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2" colspan="3">
               <center> <asp:Login ID="Login1" runat="server" style="color: #FFFFFF; font-weight: 700; background-color: #660066" Width="295px" OnAuthenticate="Login1_Authenticate">
                </asp:Login></center>
                <asp:DropShadowExtender ID="Login1_DropShadowExtender" runat="server" Enabled="True" Radius="25" TargetControlID="Login1" Width="25">
                </asp:DropShadowExtender>
            </td>
            <td>
                <asp:Image ID="Image1" runat="server" Height="357px" ImageUrl="~/pic/istock-1036557452.jpg" style="margin-left: 0px" Width="714px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style3">
                <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                </asp:ToolkitScriptManager>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

