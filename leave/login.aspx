<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="leave.WebForm3" EnableEventValidation="False" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>LOGIN</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 368px;
            text-align: right;
        }
        .auto-style3 {
            width: 327px;
        }
    </style>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>
</head>
<body>
    <form id="form1" runat="server">
        <section class="h-100 bg-dark">


  <div class="container py-5 h-100" >
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col" >
        <div class="card card-registration my-4" >
          <div class="row g-0" >
            <div class="col-xl-4 d-none d-xl-block">
              <img src="https://t4.ftcdn.net/jpg/02/29/75/83/360_F_229758328_7x8jwCwjtBMmC6rgFzLFhZoEpLobB6L8.jpg"
                alt="Sample photo" class="img-fluid"
                style="border-top-left-radius: .25rem; border-bottom-left-radius: .25rem;" />
            </div>
            <div class="col-xl-6">
              <div class="card-body p-md-5 text-black">
                <h3 class="mb-5 text-uppercase">Log in form</h3>

          
                <div class="row">
                  <div class="col-md-6 mb-4">
                    <div class="form-outline">
                      <asp:Label ID="l1" runat="server" Text="Username"></asp:Label>
                    <asp:TextBox ID="userid" runat="server" Width="220px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="r1" runat="server" ControlToValidate="userid" ErrorMessage="please enter valid username" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                  </div>
                  <div class="col-md-6 mb-4">
                    <div class="form-outline">
                    <asp:Label ID="l2" runat="server" Text="Password"></asp:Label>
                    <asp:TextBox ID="passid" runat="server" Width="220px" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="r2" runat="server" ControlToValidate="passid" ErrorMessage="please enter the valid password" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                  </div>
                </div>

                  <asp:Button class="btn btn-warning btn-lg ms-2" runat="server" OnClick="log_id_Click" Text="login" />


              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

</section>
</form>
   

</body>
</html>
