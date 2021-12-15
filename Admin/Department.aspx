<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Department.aspx.cs" Inherits="Admin_Department" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style3 {
    }
    .auto-style4 {
        width: 32px;
    }
    .auto-style5 {
        width: 200px;
        text-align: left;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="auto-style1">
    <tr>
        <td class="auto-style3" style="text-align: left">Department Name</td>
        <td class="auto-style4" style="text-align: left">:</td>
        <td class="auto-style5" style="text-align: left">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
        <td rowspan="3" style="text-align: left">
            <asp:Image ID="Image1" runat="server" Height="230px" ImageUrl="~/pic/images (3).jpg" Width="889px" />
        </td>
    </tr>
    <tr>
        <td class="auto-style3" style="text-align: left">Detail</td>
        <td class="auto-style4" style="text-align: left">:</td>
        <td class="auto-style5" style="text-align: left">
            <asp:TextBox ID="TextBox2" runat="server" Height="41px" TextMode="MultiLine" Width="191px"></asp:TextBox>
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
    </tr>
    <tr>
        <td class="auto-style3" colspan="4">
            <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="DepartmentId" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None" Width="100%">
                <AlternatingRowStyle BackColor="PaleGoldenrod" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="DepartmentId" HeaderText="DepartmentId" InsertVisible="False" ReadOnly="True" SortExpression="DepartmentId" />
                    <asp:BoundField DataField="DepartmentName" HeaderText="DepartmentName" SortExpression="DepartmentName" />
                    <asp:BoundField DataField="Detail" HeaderText="Detail" SortExpression="Detail" />
                    <asp:BoundField DataField="dt" HeaderText="dt" SortExpression="dt" />
                </Columns>
                <FooterStyle BackColor="Tan" />
                <HeaderStyle BackColor="Tan" Font-Bold="True" />
                <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                <SortedAscendingCellStyle BackColor="#FAFAE7" />
                <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                <SortedDescendingCellStyle BackColor="#E1DB9C" />
                <SortedDescendingHeaderStyle BackColor="#C2A47B" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HMSConnectionString %>" DeleteCommand="DELETE FROM [Department] WHERE [DepartmentId] = @DepartmentId" InsertCommand="INSERT INTO [Department] ([DepartmentName], [Detail], [dt]) VALUES (@DepartmentName, @Detail, @dt)" SelectCommand="SELECT * FROM [Department]" UpdateCommand="UPDATE [Department] SET [DepartmentName] = @DepartmentName, [Detail] = @Detail, [dt] = @dt WHERE [DepartmentId] = @DepartmentId">
                <DeleteParameters>
                    <asp:Parameter Name="DepartmentId" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="DepartmentName" Type="String" />
                    <asp:Parameter Name="Detail" Type="String" />
                    <asp:Parameter Name="dt" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="DepartmentName" Type="String" />
                    <asp:Parameter Name="Detail" Type="String" />
                    <asp:Parameter Name="dt" Type="String" />
                    <asp:Parameter Name="DepartmentId" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
</table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

