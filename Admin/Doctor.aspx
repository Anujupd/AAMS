<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Doctor.aspx.cs" Inherits="Admin_Doctor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
        }
        .auto-style4 {
            width: 37px;
        }
        .auto-style5 {
            width: 142px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style3">Name</td>
            <td class="auto-style4">:</td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td rowspan="10">
                <asp:Image ID="Image1" runat="server" Height="328px" ImageUrl="~/pic/neuro.jpg" style="margin-left: 1px" Width="725px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Designation</td>
            <td class="auto-style4">:</td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Department</td>
            <td class="auto-style4">:</td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Total Experience</td>
            <td class="auto-style4">:</td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Expertization</td>
            <td class="auto-style4">:</td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Profile Pho</td>
            <td class="auto-style4">:</td>
            <td class="auto-style5">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Contact Number</td>
            <td class="auto-style4">:</td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Email Id</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">User Name</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Password</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Register Now" />
            </td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style5">
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3" colspan="4">
                <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataKeyNames="DoctorId" DataSourceID="SqlDataSource1" GridLines="None" style="text-align: center" Width="100%">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="DoctorId" HeaderText="DoctorId" InsertVisible="False" ReadOnly="True" SortExpression="DoctorId" />
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="Designation" HeaderText="Designation" SortExpression="Designation" />
                        <asp:BoundField DataField="Department" HeaderText="Department" SortExpression="Department" />
                        <asp:BoundField DataField="TotalExperience" HeaderText="TotalExperience" SortExpression="TotalExperience" />
                        <asp:BoundField DataField="Expertization" HeaderText="Expertization" SortExpression="Expertization" />
                        <asp:BoundField DataField="ProfilePho" HeaderText="ProfilePho" SortExpression="ProfilePho" />
                        <asp:BoundField DataField="ContactNo" HeaderText="ContactNo" SortExpression="ContactNo" />
                        <asp:BoundField DataField="EmailId" HeaderText="EmailId" SortExpression="EmailId" />
                        <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                        <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                        <asp:BoundField DataField="dt" HeaderText="dt" SortExpression="dt" />
                    </Columns>
                    <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                    <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#594B9C" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#33276A" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HMSConnectionString %>" DeleteCommand="DELETE FROM [Doc] WHERE [DoctorId] = @DoctorId" InsertCommand="INSERT INTO [Doc] ([Name], [Designation], [Department], [TotalExperience], [Expertization], [ProfilePho], [ContactNo], [EmailId], [UserName], [Password], [dt]) VALUES (@Name, @Designation, @Department, @TotalExperience, @Expertization, @ProfilePho, @ContactNo, @EmailId, @UserName, @Password, @dt)" SelectCommand="SELECT * FROM [Doc]" UpdateCommand="UPDATE [Doc] SET [Name] = @Name, [Designation] = @Designation, [Department] = @Department, [TotalExperience] = @TotalExperience, [Expertization] = @Expertization, [ProfilePho] = @ProfilePho, [ContactNo] = @ContactNo, [EmailId] = @EmailId, [UserName] = @UserName, [Password] = @Password, [dt] = @dt WHERE [DoctorId] = @DoctorId">
                    <DeleteParameters>
                        <asp:Parameter Name="DoctorId" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="Designation" Type="String" />
                        <asp:Parameter Name="Department" Type="String" />
                        <asp:Parameter Name="TotalExperience" Type="String" />
                        <asp:Parameter Name="Expertization" Type="String" />
                        <asp:Parameter Name="ProfilePho" Type="String" />
                        <asp:Parameter Name="ContactNo" Type="Decimal" />
                        <asp:Parameter Name="EmailId" Type="String" />
                        <asp:Parameter Name="UserName" Type="String" />
                        <asp:Parameter Name="Password" Type="String" />
                        <asp:Parameter Name="dt" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="Designation" Type="String" />
                        <asp:Parameter Name="Department" Type="String" />
                        <asp:Parameter Name="TotalExperience" Type="String" />
                        <asp:Parameter Name="Expertization" Type="String" />
                        <asp:Parameter Name="ProfilePho" Type="String" />
                        <asp:Parameter Name="ContactNo" Type="Decimal" />
                        <asp:Parameter Name="EmailId" Type="String" />
                        <asp:Parameter Name="UserName" Type="String" />
                        <asp:Parameter Name="Password" Type="String" />
                        <asp:Parameter Name="dt" Type="String" />
                        <asp:Parameter Name="DoctorId" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

