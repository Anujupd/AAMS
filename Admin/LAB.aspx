<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="LAB.aspx.cs" Inherits="Admin_LAB" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
        }
        .auto-style5 {
            width: 246px;
        }
        .auto-style6 {
            width: 60px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style3">Lab Incharge Name</td>
            <td class="auto-style6">:</td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td rowspan="7">
                <asp:Image ID="Image1" runat="server" Height="309px" ImageUrl="~/pic/source.gif" Width="841px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Patient Id</td>
            <td class="auto-style6">:</td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Patient Name</td>
            <td class="auto-style6">:</td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Date</td>
            <td class="auto-style6">:</td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Lab Category</td>
            <td class="auto-style6">:</td>
            <td class="auto-style5">
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>[-Select-]</asp:ListItem>
                    <asp:ListItem>Category GX(General)</asp:ListItem>
                    <asp:ListItem>Category GY(General)</asp:ListItem>
                    <asp:ListItem>Category B(Branch)</asp:ListItem>
                    <asp:ListItem>Category M (Medical Practice)</asp:ListItem>
                    <asp:ListItem>Category S(Specialised)</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">PatientType</td>
            <td class="auto-style6">:</td>
            <td class="auto-style5">
                <asp:DropDownList ID="DropDownList2" runat="server">
                    <asp:ListItem>[-Select-]</asp:ListItem>
                    <asp:ListItem>Passive dependant</asp:ListItem>
                    <asp:ListItem>Expedient Flexible</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Amount</td>
            <td class="auto-style6">:</td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Save" />
            </td>
            <td class="auto-style6">:</td>
            <td class="auto-style5">
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3" colspan="4">
                <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="LabId" DataSourceID="SqlDataSource1" style="text-align: center" Width="100%">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="LabId" HeaderText="LabId" InsertVisible="False" ReadOnly="True" SortExpression="LabId" />
                        <asp:BoundField DataField="LabInchargeName" HeaderText="LabInchargeName" SortExpression="LabInchargeName" />
                        <asp:BoundField DataField="PatientId" HeaderText="PatientId" SortExpression="PatientId" />
                        <asp:BoundField DataField="PatientName" HeaderText="PatientName" SortExpression="PatientName" />
                        <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                        <asp:BoundField DataField="LabCategory" HeaderText="LabCategory" SortExpression="LabCategory" />
                        <asp:BoundField DataField="PatientType" HeaderText="PatientType" SortExpression="PatientType" />
                        <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
                    </Columns>
                    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                    <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                    <RowStyle BackColor="White" ForeColor="#330099" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                    <SortedAscendingCellStyle BackColor="#FEFCEB" />
                    <SortedAscendingHeaderStyle BackColor="#AF0101" />
                    <SortedDescendingCellStyle BackColor="#F6F0C0" />
                    <SortedDescendingHeaderStyle BackColor="#7E0000" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HMSConnectionString %>" DeleteCommand="DELETE FROM [LAB] WHERE [LabId] = @LabId" InsertCommand="INSERT INTO [LAB] ([LabInchargeName], [PatientId], [PatientName], [Date], [LabCategory], [PatientType], [Amount]) VALUES (@LabInchargeName, @PatientId, @PatientName, @Date, @LabCategory, @PatientType, @Amount)" SelectCommand="SELECT * FROM [LAB]" UpdateCommand="UPDATE [LAB] SET [LabInchargeName] = @LabInchargeName, [PatientId] = @PatientId, [PatientName] = @PatientName, [Date] = @Date, [LabCategory] = @LabCategory, [PatientType] = @PatientType, [Amount] = @Amount WHERE [LabId] = @LabId">
                    <DeleteParameters>
                        <asp:Parameter Name="LabId" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="LabInchargeName" Type="String" />
                        <asp:Parameter Name="PatientId" Type="String" />
                        <asp:Parameter Name="PatientName" Type="String" />
                        <asp:Parameter Name="Date" Type="String" />
                        <asp:Parameter Name="LabCategory" Type="String" />
                        <asp:Parameter Name="PatientType" Type="String" />
                        <asp:Parameter Name="Amount" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="LabInchargeName" Type="String" />
                        <asp:Parameter Name="PatientId" Type="String" />
                        <asp:Parameter Name="PatientName" Type="String" />
                        <asp:Parameter Name="Date" Type="String" />
                        <asp:Parameter Name="LabCategory" Type="String" />
                        <asp:Parameter Name="PatientType" Type="String" />
                        <asp:Parameter Name="Amount" Type="String" />
                        <asp:Parameter Name="LabId" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

