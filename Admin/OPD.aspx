<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="OPD.aspx.cs" Inherits="Admin_OPD" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
        }
        .auto-style4 {
            width: 35px;
        }
        .auto-style5 {
            width: 144px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style3">Discharge Date</td>
            <td class="auto-style4">:</td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td rowspan="4">
                <asp:Image ID="Image1" runat="server" Height="226px" ImageUrl="~/pic/opd.jpg" Width="949px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Patient Name</td>
            <td class="auto-style4">:</td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Health Status</td>
            <td class="auto-style4">:</td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
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
                <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataKeyNames="PatientId" DataSourceID="SqlDataSource1" GridLines="None" style="text-align: center" Width="100%">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="PatientId" HeaderText="PatientId" InsertVisible="False" ReadOnly="True" SortExpression="PatientId" />
                        <asp:BoundField DataField="Ddate" HeaderText="Ddate" SortExpression="Ddate" />
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="HealthStatus" HeaderText="HealthStatus" SortExpression="HealthStatus" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HMSConnectionString %>" DeleteCommand="DELETE FROM [OPD] WHERE [PatientId] = @PatientId" InsertCommand="INSERT INTO [OPD] ([Ddate], [Name], [HealthStatus], [dt]) VALUES (@Ddate, @Name, @HealthStatus, @dt)" SelectCommand="SELECT * FROM [OPD]" UpdateCommand="UPDATE [OPD] SET [Ddate] = @Ddate, [Name] = @Name, [HealthStatus] = @HealthStatus, [dt] = @dt WHERE [PatientId] = @PatientId">
                    <DeleteParameters>
                        <asp:Parameter Name="PatientId" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Ddate" Type="String" />
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="HealthStatus" Type="String" />
                        <asp:Parameter Name="dt" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Ddate" Type="String" />
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="HealthStatus" Type="String" />
                        <asp:Parameter Name="dt" Type="String" />
                        <asp:Parameter Name="PatientId" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

