<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminshow.aspx.cs" Inherits="leave.adminshow" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
         body{
            background-color:black;
        }
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            font-size: medium;
            margin-left: 100px;
            margin-top: 33px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1" style="font-size: 30px; font-weight: bold; color: #FFFFFF">
            <div>
                ADMIN</div>
        <asp:GridView ID="GrideShowVM" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" OnRowEditing="GrideShowVM_RowEditing" OnRowUpdating="GrideShowVM_RowUpdating" OnRowDeleting="GrideShowVM_RowDeleting" CssClass="auto-style2" Height="261px" Width="1167px" OnSelectedIndexChanged="GrideShowVM_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" ReadOnly="True" />
                <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" ReadOnly="True" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" ReadOnly="True" />
                <asp:BoundField DataField="mobile" HeaderText="mobile" SortExpression="mobile" ReadOnly="True" />
                <asp:BoundField DataField="department" HeaderText="department" SortExpression="department" ReadOnly="True" />
                <asp:BoundField DataField="f_start" HeaderText="f_start" SortExpression="f_start" ReadOnly="True" />
                <asp:BoundField DataField="To_end" HeaderText="To_end" SortExpression="To_end" ReadOnly="True" />
                <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                <asp:CommandField ButtonType="Button"  ShowEditButton="True" />
                <asp:CommandField ButtonType="Button"  ShowDeleteButton="True" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT userdata.Id, userdata.name, userdata.username, userdata.email, userdata.mobile, userdata.department, Reuest.f_start, Reuest.To_end, Reuest.Status FROM userdata INNER JOIN Reuest ON userdata.Id = Reuest.Id"></asp:SqlDataSource>
        <br />
        <asp:Button class="btn btn-warning btn-lg ms-2"  ID="L_btn" runat="server" OnClick="L_btn_Click" Text="Logout" />
        </div>
    </form>
</body>
</html>
