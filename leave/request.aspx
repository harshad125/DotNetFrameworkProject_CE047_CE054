<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="request.aspx.cs" Inherits="leave.reuest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>Register</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 359px;
            text-align: right;
        }
        .auto-style3 {
            width: 359px;
            text-align: right;
            height: 29px;
        }
        .auto-style4 {
            height: 29px;
        }
        .auto-style5 {
            width: 321px;
        }
        .auto-style6 {
            height: 29px;
            width: 321px;
        }
        .auto-style7 {
            width: 321px;
            text-align: left;
            margin:auto;
            height: 40px;
        }
        .auto-style8 {
            width: 359px;
            text-align: right;
            height: 40px;
        }
        .auto-style9 {
            height: 40px;
        }
        .auto-style11 {
            width: 321px;
            height: 46px;
        }
        .auto-style12 {
            width: 359px;
            text-align: right;
            height: 46px;
        }
        .auto-style13 {
            height: 46px;
        }
    </style>
</head>
<body>
     <form id="form1" runat="server">
        <section class="h-100 bg-dark">


  <div class="container py-5 h-100" >
    <%--<div class="row d-flex justify-content-center align-items-center h-100" style ="/*width = 100px*/">--%>
      <%--<div class="col" >--%>
        <div class="card card-registration my-12" >
          <div class="row g-0" >
            <div class="col-xl-4 d-none d-xl-block">
              <%--<img src="https://t4.ftcdn.net/jpg/02/29/75/83/360_F_229758328_7x8jwCwjtBMmC6rgFzLFhZoEpLobB6L8.jpg"
                alt="Sample photo" class="img-fluid"
                style="border-top-left-radius: .25rem; border-bottom-left-radius: .25rem;" />--%>
            </div>
            <div class="col-xl-6">
              <div class="card-body p-md-5 text-black">
                <h3 class="mb-5 text-uppercase">Request form</h3>

          
                <div class="row">
                  <div class="col-md-6 mb-4">
                    <div class="form-outline">
                      <asp:Label ID="u1" runat="server" Text="Username"></asp:Label>
                        <asp:TextBox ID="userid" runat="server" Width="220px"></asp:TextBox>
                    </div>
                  </div>
                </div>


                   <div class="row">
                  <div class="col-md-6 mb-4">
                    <div class="form-outline">
                     <asp:Label ID="F1" runat="server" Text="From"></asp:Label>
                        <asp:TextBox ID="d1" runat="server" TextMode="Date" Width="220px"></asp:TextBox>
                    </div>
                  </div>
                  <div class="col-md-6 mb-4">
                    <div class="form-outline">
                    <asp:Label ID="F2" runat="server" Text="To"></asp:Label>
                        <asp:TextBox ID="d2" runat="server" TextMode="Date" Width="220px"></asp:TextBox>
                    </div>
                  </div>
                </div>
                  <asp:Button class="btn btn-info btn-lg ms-2 " ID="Request_btn" runat="server" OnClick="Request_btn_Click" Text="Request" Width="107px" />
                  <asp:Button class="btn btn-info btn-lg ms-2 "  runat="server" Text="show request" OnClick="sh_btn_Click" />


              </div>
            </div>
          </div>
        </div>
      </div>
    <%--</div>--%>
  <%--</div>--%>

</section>
</form>
</body>
</html>
