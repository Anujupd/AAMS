<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 226px;
        }
        .auto-style3 {
            width: 123px;
        }
        .auto-style4 {
            width: 40px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style3">User Name</td>
            <td class="auto-style4">:</td>
            <td class="auto-style2">
                <asp:TextBox ID="TextBox1" runat="server" Height="24px" Width="160px"></asp:TextBox>
                <asp:RoundedCornersExtender ID="TextBox1_RoundedCornersExtender" runat="server" BorderColor="Red" Color="Purple" Enabled="True" Radius="25" TargetControlID="TextBox1">
                </asp:RoundedCornersExtender>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*Please fill your Name" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:ValidatorCalloutExtender ID="RequiredFieldValidator1_ValidatorCalloutExtender" runat="server" Enabled="True" TargetControlID="RequiredFieldValidator1">
                </asp:ValidatorCalloutExtender>
            </td>
            <td rowspan="13">
                <asp:Image ID="Image1" runat="server" Height="632px" ImageUrl="~/pic/download (5).jpg" Width="859px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Password</td>
            <td class="auto-style4">:</td>
            <td class="auto-style2">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="please fill your password" ForeColor="#FF0066"></asp:RequiredFieldValidator>
                <asp:PasswordStrength ID="TextBox2_PasswordStrength" runat="server" Enabled="True" TargetControlID="TextBox2">
                </asp:PasswordStrength>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Confirm Password</td>
            <td class="auto-style4">:</td>
            <td class="auto-style2">
                <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Fill your password" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Gender</td>
            <td class="auto-style4">:</td>
            <td class="auto-style2">
                <asp:RadioButton ID="RadioButton1" runat="server" Text="Male" />
                <asp:RadioButton ID="RadioButton2" runat="server" Text="Female" />
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Email Id</td>
            <td class="auto-style4">:</td>
            <td class="auto-style2">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="please fill your Email" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Marital Status</td>
            <td class="auto-style4">:</td>
            <td class="auto-style2">
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>[-select-]</asp:ListItem>
                    <asp:ListItem>Married</asp:ListItem>
                    <asp:ListItem>Unmarried</asp:ListItem>
                    <asp:ListItem>Wideo</asp:ListItem>
                    <asp:ListItem>others</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Select coulms" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Leaving Status</td>
            <td class="auto-style4">:</td>
            <td class="auto-style2">
                <asp:DropDownList ID="DropDownList2" runat="server">
                    <asp:ListItem>[-select-]</asp:ListItem>
                    <asp:ListItem>High class</asp:ListItem>
                    <asp:ListItem>middle class</asp:ListItem>
                    <asp:ListItem>lower class</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="DropDownList2" ErrorMessage="please choose one" ForeColor="#FF0066"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Highest Qualification</td>
            <td class="auto-style4">:</td>
            <td class="auto-style2">
                <asp:DropDownList ID="DropDownList3" runat="server">
                    <asp:ListItem>[-Select-]</asp:ListItem>
                    <asp:ListItem>post graduate</asp:ListItem>
                    <asp:ListItem>graduate</asp:ListItem>
                    <asp:ListItem>Diploma</asp:ListItem>
                    <asp:ListItem>Intermidiate</asp:ListItem>
                    <asp:ListItem>Highschool</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="DropDownList3" ErrorMessage="Select one" ForeColor="#FFFF66"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Pincode</td>
            <td class="auto-style4">:</td>
            <td class="auto-style2">
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox5" ErrorMessage="please Fill your zip code"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Date of Birth</td>
            <td class="auto-style4">:</td>
            <td class="auto-style2">
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox6" ErrorMessage="please Fil your zip code"></asp:RequiredFieldValidator>
                <asp:CalendarExtender ID="TextBox6_CalendarExtender" runat="server" Enabled="True" TargetControlID="TextBox6">
                </asp:CalendarExtender>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Contact Number</td>
            <td class="auto-style4">:</td>
            <td class="auto-style2">
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBox7" ErrorMessage="Fill Your Contact"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Address</td>
            <td class="auto-style4">:</td>
            <td class="auto-style2">
                <asp:TextBox ID="TextBox8" runat="server" Height="48px" Width="214px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="TextBox8" ErrorMessage="fill your Address" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Profile Pic</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style2">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Register Now" />
            </td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style2">
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style2">
                <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                </asp:ToolkitScriptManager>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

