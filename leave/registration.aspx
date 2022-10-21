<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="leave.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 351px;
        }
        .auto-style3 {
            width: 351px;
            height: 34px;
            text-align: right;
        }
        .auto-style4 {
            height: 34px;
        }
        .auto-style5 {
            width: 351px;
            text-align: right;
        }
        .auto-style6 {
            width: 323px;
        }
        .auto-style7 {
            height: 34px;
            width: 323px;
        }
    </style>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>
</head>
<body>
    <form id="form1" runat="server">
        <section class="h-100 bg-dark">

  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col">
        <div class="card card-registration my-4">
          <div class="row g-0">
            <div class="col-xl-6 d-none d-xl-block">
              <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-registration/img4.webp"
                alt="Sample photo" class="img-fluid"
                style="border-top-left-radius: .25rem; border-bottom-left-radius: .25rem;" />
            </div>
            <div class="col-xl-6">
              <div class="card-body p-md-5 text-black">
                <h3 class="mb-5 text-uppercase">Student registration form</h3>

          
                <div class="row">
                  <div class="col-md-6 mb-4">
                    <div class="form-outline">
                        <%--<label class="form-label" for="form3Example1m">First name</label>--%>
                       <asp:Label ID="Lid1" runat="server" Text="Name"></asp:Label>
                         <asp:TextBox ID="nid" runat="server" Width="220px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="r1" runat="server" ControlToValidate="nid" ErrorMessage="please enter name" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                  </div>
                  <div class="col-md-6 mb-4">
                    <div class="form-outline">
                        <%--<label class="form-label" for="form3Example1n">User name</label>--%>
                     <asp:Label ID="Lid2" runat="server" Text="Username"></asp:Label>
                    <asp:TextBox ID="uid" runat="server" Width="220px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="r2" runat="server" ControlToValidate="uid" ErrorMessage="please enter username" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                  </div>
                </div>


                  <div class="row">
                  <div class="col-md-6 mb-4">
                    <div class="form-outline">
                        <%--<label class="form-label" for="form3Example1m">First name</label>--%>
                      <asp:Label ID="Lid3" runat="server" Text="Email"></asp:Label>
                    <asp:TextBox ID="eid" runat="server" TextMode="Email" Width="220px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="r3" runat="server" ControlToValidate="eid" ErrorMessage="please enter email" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                  </div>
                  <div class="col-md-6 mb-4">
                    <div class="form-outline">
                        <%--<label class="form-label" for="form3Example1n">User name</label>--%>
                     <asp:Label ID="Lid4" runat="server" Text="Password"></asp:Label>
                    <asp:TextBox ID="pid" runat="server" TextMode="Password" Width="220px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="pid" ErrorMessage="please enter password" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                  </div>
                </div>

                <div class="form-outline mb-4">
                   <asp:Label ID="Lid7" runat="server" Text="Mobile"></asp:Label>
                    <asp:TextBox ID="mid" runat="server" Width="220px"></asp:TextBox>
                    <%--<label class="form-label" for="form3Example99">Mobile No.</label>--%>
                    <asp:RequiredFieldValidator ID="r5" runat="server" ControlToValidate="mid" ErrorMessage="please enter mobile number" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>



                    <div class="form-outline mb-4">
                    
                </div>




                  <div class="row">
                  <div class="col-md-6 mb-4">
                    <div class="form-outline">
                        <%--<label class="form-label" for="form3Example1m">First name</label>--%>
                       <asp:Label ID="Lid5" runat="server" Text="Department"></asp:Label>
                    <asp:DropDownList ID="did" runat="server" Width="220px">
                        <asp:ListItem Selected="True">select department</asp:ListItem>
                        <asp:ListItem>CE</asp:ListItem>
                        <asp:ListItem>IT</asp:ListItem>
                        <asp:ListItem>EC</asp:ListItem>
                        <asp:ListItem>ME</asp:ListItem>
                        <asp:ListItem>CHE</asp:ListItem>
                    </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="r6" runat="server" ControlToValidate="did" ErrorMessage="please enter department " ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                  </div>
                  <div class="col-md-6 mb-4">
                    <div class="form-outline">
                     <asp:Label ID="Lid6" runat="server" Text="Registration as"></asp:Label>
                    <asp:DropDownList ID="lid" runat="server" Width="220px">
                        <asp:ListItem Selected="True">select this</asp:ListItem>
                        <asp:ListItem Value="Nuser">User</asp:ListItem>
                    </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="r7" runat="server" ControlToValidate="lid" ErrorMessage="please enter user" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                  </div>
                </div>



                <div class="d-flex justify-content-end pt-3">
                    <%--<button type="button" class="btn btn-light btn-lg">Reset all</button>--%>
                  <%--<button type="button" class="btn btn-warning btn-lg ms-2">Submit form</button>--%>
                    <asp:Button class="btn btn-warning btn-lg ms-2" runat="server" OnClick="sid_Click" Text="Register" Width="220px" />
                </div>
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
