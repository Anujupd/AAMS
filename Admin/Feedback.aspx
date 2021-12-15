<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="Admin_Feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style3 {
    }
    .auto-style4 {
        width: 46px;
    }
    .auto-style5 {
        width: 138px;
        text-align: left;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="auto-style1">
    <tr>
        <td class="auto-style3" style="text-align: left">Doctor Name</td>
        <td class="auto-style4" style="text-align: left">:</td>
        <td class="auto-style5">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
        <td rowspan="3" style="text-align: left">
            <asp:Image ID="Image1" runat="server" Height="217px" ImageUrl="~/pic/84585339-medics-or-doctors-at-hospital-showing-thumbs-up.jpg" Width="940px" />
        </td>
    </tr>
    <tr>
        <td class="auto-style3" style="text-align: left">Rating</td>
        <td class="auto-style4" style="text-align: left">:</td>
        <td class="auto-style5">
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
            <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="FeedbackId" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="100%">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="FeedbackId" HeaderText="FeedbackId" InsertVisible="False" ReadOnly="True" SortExpression="FeedbackId" />
                    <asp:BoundField DataField="DoctorName" HeaderText="DoctorName" SortExpression="DoctorName" />
                    <asp:BoundField DataField="Rating" HeaderText="Rating" SortExpression="Rating" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HMSConnectionString %>" DeleteCommand="DELETE FROM [Feedback] WHERE [FeedbackId] = @FeedbackId" InsertCommand="INSERT INTO [Feedback] ([DoctorName], [Rating], [dt]) VALUES (@DoctorName, @Rating, @dt)" SelectCommand="SELECT * FROM [Feedback]" UpdateCommand="UPDATE [Feedback] SET [DoctorName] = @DoctorName, [Rating] = @Rating, [dt] = @dt WHERE [FeedbackId] = @FeedbackId">
                <DeleteParameters>
                    <asp:Parameter Name="FeedbackId" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="DoctorName" Type="String" />
                    <asp:Parameter Name="Rating" Type="String" />
                    <asp:Parameter Name="dt" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="DoctorName" Type="String" />
                    <asp:Parameter Name="Rating" Type="String" />
                    <asp:Parameter Name="dt" Type="String" />
                    <asp:Parameter Name="FeedbackId" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
</table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

