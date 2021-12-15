<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="news.aspx.cs" Inherits="Admin_news" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style3 {
        text-align: left;
    }
    .auto-style4 {
        width: 278px;
        text-align: left;
    }
    .auto-style5 {
        width: 48px;
    }
    .auto-style6 {
        width: 205px;
        height: 32px;
    }
    .auto-style7 {
        width: 48px;
        height: 32px;
    }
    .auto-style8 {
        width: 278px;
        text-align: left;
        height: 32px;
    }
    .auto-style9 {
        text-align: left;
        width: 205px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="auto-style1">
    <tr>
        <td class="auto-style9" style="text-align: left">News Title</td>
        <td class="auto-style5" style="text-align: left">:</td>
        <td class="auto-style4">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
        <td rowspan="3" style="text-align: left">
            <asp:Image ID="Image1" runat="server" Height="232px" ImageUrl="~/pic/braking.jpg" style="margin-left: 5px" Width="872px" />
        </td>
    </tr>
    <tr>
        <td class="auto-style6" style="text-align: left">Detail</td>
        <td class="auto-style7" style="text-align: left">:</td>
        <td class="auto-style8" style="text-align: left">
            <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style9" style="text-align: left">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Save" />
        </td>
        <td class="auto-style5">&nbsp;</td>
        <td class="auto-style4">
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style3" colspan="4">
            <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="NewsId" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" style="text-align: center" Width="100%">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="NewsId" HeaderText="NewsId" InsertVisible="False" ReadOnly="True" SortExpression="NewsId" />
                    <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                    <asp:BoundField DataField="Detail" HeaderText="Detail" SortExpression="Detail" />
                    <asp:BoundField DataField="dt" HeaderText="dt" SortExpression="dt" />
                </Columns>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:HMSConnectionString %>" DeleteCommand="DELETE FROM [News] WHERE [NewsId] = @NewsId" InsertCommand="INSERT INTO [News] ([Title], [Detail], [dt]) VALUES (@Title, @Detail, @dt)" SelectCommand="SELECT * FROM [News]" UpdateCommand="UPDATE [News] SET [Title] = @Title, [Detail] = @Detail, [dt] = @dt WHERE [NewsId] = @NewsId">
                <DeleteParameters>
                    <asp:Parameter Name="NewsId" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Title" Type="String" />
                    <asp:Parameter Name="Detail" Type="String" />
                    <asp:Parameter Name="dt" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Title" Type="String" />
                    <asp:Parameter Name="Detail" Type="String" />
                    <asp:Parameter Name="dt" Type="String" />
                    <asp:Parameter Name="NewsId" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HMSConnectionString %>" SelectCommand="SELECT * FROM [News]"></asp:SqlDataSource>
        </td>
    </tr>
</table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

