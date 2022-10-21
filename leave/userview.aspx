<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="userview.aspx.cs" Inherits="leave.userview"  %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body{
            background-color:black;
        }
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            margin-left: 156px;
            margin-top: 14px;
        }
        .auto-style3 {
            height: 45px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
        <div class="auto-style1">
            <div class="auto-style3" style="font-size: 30px; font-weight: bold; color: #FFFFFF">
                USER</div>
            <asp:GridView ID="GrideShowUs" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" OnRowCancelingEdit="GrideShowUs_RowCancelingEdit" OnRowEditing="GrideShowUs_RowEditing" OnRowUpdating="GrideShowUs_RowUpdating" CssClass="auto-style2" Width="1127px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                    <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                    <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                    <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                    <asp:BoundField DataField="mobile" HeaderText="mobile" SortExpression="mobile" />
                    <asp:BoundField DataField="department" HeaderText="department" SortExpression="department" />
                    <asp:BoundField DataField="f_start" HeaderText="f_start" SortExpression="f_start" />
                    <asp:BoundField DataField="To_end" HeaderText="To_end" SortExpression="To_end" />
                    <asp:BoundField DataField="Status" HeaderText="Status" ReadOnly="True" SortExpression="Status" />
                    <asp:CommandField ButtonType="Button" ShowEditButton="True" />
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
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT userdata.Id, userdata.name, userdata.username, userdata.email, userdata.password, userdata.mobile, userdata.department, Reuest.f_start, Reuest.To_end, Reuest.Status FROM userdata INNER JOIN Reuest ON userdata.Id = Reuest.Id"></asp:SqlDataSource>
        <br />
        <asp:Button class="btn btn-warning btn-lg ms-2" ID="L_out" runat="server" OnClick="L_out_Click" Text="Logout" />
        </div>
    </form>
</body>
</html>
