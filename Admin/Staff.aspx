<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Staff.aspx.cs" Inherits="Admin_Staff" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
        }
        .auto-style4 {
            width: 33px;
        }
        .auto-style5 {
            width: 151px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style3">Staff Name</td>
            <td class="auto-style4">:</td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td rowspan="5">
                <asp:Image ID="Image1" runat="server" Height="224px" ImageUrl="~/pic/anigif.gif" Width="793px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Atteched Department</td>
            <td class="auto-style4">:</td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Salery</td>
            <td class="auto-style4">:</td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">UserName</td>
            <td class="auto-style4">:</td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Password</td>
            <td class="auto-style4">:</td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox5" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Save" />
            </td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style5">
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3" colspan="4">
                <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="StaffId" DataSourceID="SqlDataSource1" style="text-align: center" Width="100%">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="StaffId" HeaderText="StaffId" InsertVisible="False" ReadOnly="True" SortExpression="StaffId" />
                        <asp:BoundField DataField="StaffName" HeaderText="StaffName" SortExpression="StaffName" />
                        <asp:BoundField DataField="AttechedDepartment" HeaderText="AttechedDepartment" SortExpression="AttechedDepartment" />
                        <asp:BoundField DataField="Salery" HeaderText="Salery" SortExpression="Salery" />
                        <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                        <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                        <asp:BoundField DataField="dt" HeaderText="dt" SortExpression="dt" />
                    </Columns>
                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FFF1D4" />
                    <SortedAscendingHeaderStyle BackColor="#B95C30" />
                    <SortedDescendingCellStyle BackColor="#F1E5CE" />
                    <SortedDescendingHeaderStyle BackColor="#93451F" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HMSConnectionString %>" DeleteCommand="DELETE FROM [Staff] WHERE [StaffId] = @StaffId" InsertCommand="INSERT INTO [Staff] ([StaffName], [AttechedDepartment], [Salery], [Username], [Password], [dt]) VALUES (@StaffName, @AttechedDepartment, @Salery, @Username, @Password, @dt)" SelectCommand="SELECT * FROM [Staff]" UpdateCommand="UPDATE [Staff] SET [StaffName] = @StaffName, [AttechedDepartment] = @AttechedDepartment, [Salery] = @Salery, [Username] = @Username, [Password] = @Password, [dt] = @dt WHERE [StaffId] = @StaffId">
                    <DeleteParameters>
                        <asp:Parameter Name="StaffId" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="StaffName" Type="String" />
                        <asp:Parameter Name="AttechedDepartment" Type="String" />
                        <asp:Parameter Name="Salery" Type="String" />
                        <asp:Parameter Name="Username" Type="String" />
                        <asp:Parameter Name="Password" Type="String" />
                        <asp:Parameter Name="dt" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="StaffName" Type="String" />
                        <asp:Parameter Name="AttechedDepartment" Type="String" />
                        <asp:Parameter Name="Salery" Type="String" />
                        <asp:Parameter Name="Username" Type="String" />
                        <asp:Parameter Name="Password" Type="String" />
                        <asp:Parameter Name="dt" Type="String" />
                        <asp:Parameter Name="StaffId" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

