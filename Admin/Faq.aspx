<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Faq.aspx.cs" Inherits="Admin_Faq" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style3 {
        text-align: left;
    }
    .auto-style4 {
        width: 26px;
    }
    .auto-style5 {
        width: 193px;
        text-align: left;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="auto-style1">
    <tr>
        <td class="auto-style3" style="text-align: left">Question</td>
        <td class="auto-style4" style="text-align: left">:</td>
        <td class="auto-style5" style="text-align: left">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
        <td rowspan="3" style="text-align: left">
            <asp:Image ID="Image1" runat="server" Height="185px" ImageUrl="~/pic/i-cp.jpg" Width="968px" />
        </td>
    </tr>
    <tr>
        <td class="auto-style3" style="text-align: left">Answer</td>
        <td class="auto-style4" style="text-align: left">:</td>
        <td class="auto-style5" style="text-align: left">
            <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine"></asp:TextBox>
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
            <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="FaqId" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" style="text-align: center" Width="100%">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="FaqId" HeaderText="FaqId" InsertVisible="False" ReadOnly="True" SortExpression="FaqId" />
                    <asp:BoundField DataField="Question" HeaderText="Question" SortExpression="Question" />
                    <asp:BoundField DataField="Answer" HeaderText="Answer" SortExpression="Answer" />
                    <asp:BoundField DataField="dt" HeaderText="dt" SortExpression="dt" />
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HMSConnectionString %>" DeleteCommand="DELETE FROM [Faq] WHERE [FaqId] = @FaqId" InsertCommand="INSERT INTO [Faq] ([Question], [Answer], [dt]) VALUES (@Question, @Answer, @dt)" SelectCommand="SELECT * FROM [Faq]" UpdateCommand="UPDATE [Faq] SET [Question] = @Question, [Answer] = @Answer, [dt] = @dt WHERE [FaqId] = @FaqId">
                <DeleteParameters>
                    <asp:Parameter Name="FaqId" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Question" Type="String" />
                    <asp:Parameter Name="Answer" Type="String" />
                    <asp:Parameter Name="dt" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Question" Type="String" />
                    <asp:Parameter Name="Answer" Type="String" />
                    <asp:Parameter Name="dt" Type="String" />
                    <asp:Parameter Name="FaqId" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
</table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

