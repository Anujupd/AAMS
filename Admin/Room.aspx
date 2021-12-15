<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Room.aspx.cs" Inherits="Admin_Room" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {            text-align: center;
        }
        .auto-style4 {
            width: 115px;
            height: 34px;
        }
        .auto-style6 {
            width: 204px;
        }
        .auto-style7 {
            height: 34px;
            width: 204px;
        }
        .auto-style8 {
            width: 211px;
        }
        .auto-style9 {
            height: 34px;
            width: 211px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style3">Room Type</td>
            <td class="auto-style6">:</td>
            <td class="auto-style8">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td rowspan="3">
                <asp:Image ID="Image1" runat="server" Height="213px" style="margin-left: 1px" Width="943px" ImageUrl="~/pic/113944279-medical-equipment-on-the-background-of-group-of-health-workers-in-the-icu-.jpg" />
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Status</td>
            <td class="auto-style7">:</td>
            <td class="auto-style9">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Patient Name</td>
            <td class="auto-style6">:</td>
            <td class="auto-style8">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Button ID="Button1" runat="server" Text="Save" OnClick="Button1_Click" />
            </td>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style8">
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3" colspan="4">
                <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="RoomNo" DataSourceID="SqlDataSource1" Width="100%">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="RoomNo" HeaderText="RoomNo" InsertVisible="False" ReadOnly="True" SortExpression="RoomNo" />
                        <asp:BoundField DataField="RoomType" HeaderText="RoomType" SortExpression="RoomType" />
                        <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                        <asp:BoundField DataField="PatientName" HeaderText="PatientName" SortExpression="PatientName" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HMSConnectionString %>" DeleteCommand="DELETE FROM [Room] WHERE [RoomNo] = @RoomNo" InsertCommand="INSERT INTO [Room] ([RoomType], [Status], [PatientName], [dt]) VALUES (@RoomType, @Status, @PatientName, @dt)" SelectCommand="SELECT * FROM [Room]" UpdateCommand="UPDATE [Room] SET [RoomType] = @RoomType, [Status] = @Status, [PatientName] = @PatientName, [dt] = @dt WHERE [RoomNo] = @RoomNo">
                    <DeleteParameters>
                        <asp:Parameter Name="RoomNo" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="RoomType" Type="String" />
                        <asp:Parameter Name="Status" Type="String" />
                        <asp:Parameter Name="PatientName" Type="String" />
                        <asp:Parameter Name="dt" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="RoomType" Type="String" />
                        <asp:Parameter Name="Status" Type="String" />
                        <asp:Parameter Name="PatientName" Type="String" />
                        <asp:Parameter Name="dt" Type="String" />
                        <asp:Parameter Name="RoomNo" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

