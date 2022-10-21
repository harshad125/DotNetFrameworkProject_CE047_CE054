<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="leave.home" EnableEventValidation="False" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>
    <style type="text/css">
        body{
            background-color:black;
        }
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 551px;
            text-align: left;
        }
        .auto-style3 {
            margin-left: 0px;
        }
        
        #rowStyle{
            background-image:url(./images/image1.jpg);
            background-size:cover;
            height:600px; 
        }
        
    </style>
</head>
<body>
     <section class="h-100">
    <div class="container">
        <div class="row" style="height:60px"></div>
        <div class="row">
            <div class="row" id="rowStyle" >
            <div class="col">
                <!--<h1>Main Page..</h1>-->
                <div class="row"></div>
                <div class="row" style="height:100px" ></div>
                <div class="row">
                    <div class="col"></div>
                    <div class="col-6 bg-white opacity-50 rounded-3 text-center">
                        <h1 class="text-success">WELCOME...</h1>
                        <!--<div class="row">
                            <div class="col text-dark">
                                <h3>Sign Of Quality Educations</h3>
                            </div>
                        </div>-->
                        <!--<div class="row">
                            <div class="col-md-2"></div>
                            <div class="col"><h5>Private University</h5></div>
                        </div>-->
                    </div>
                    <div class="col"></div>
                </div>
                 <div class="row" style="height:50px" ></div>
                 <div class="row">
                    <div class="col"></div>
                    <div class="col-6 bg-white opacity-50 rounded-3 text-center">
                        <h1 class="text-success">Leave Management System.</h1>
                        <!--<div class="row">
                            <div class="col text-dark">
                                <h3>Sign Of Quality Educations</h3>
                            </div>
                        </div>-->
                        <!--<div class="row">
                            <div class="col-md-2"></div>
                            <div class="col"><h5>Private University</h5></div>
                        </div>-->
                    </div>
                    <div class="col"></div>
                </div>
                 <div class="row" style="height:50px" ></div>
                 <div class="row">
                    <div class="col"></div>
                    <div class="col-4 bg-white opacity-50 rounded-3 text-center">
                        <form id="form1" runat="server">
              
                            <asp:Button  class="btn btn-info btn-lg ms-2 " ID="L_btn" runat="server" OnClick="L_btn_Click" Text="login" />
                        
                            <asp:Button class="btn btn-info btn-lg ms-2 " ID="R_btn" runat="server"  OnClick="R_btn_Click" Text="registration" />
                        
            </form>
                        <!--<div class="row">
                            <div class="col text-dark">
                                <h3>Sign Of Quality Educations</h3>
                            </div>
                        </div>-->
                        <!--<div class="row">
                            <div class="col-md-2"></div>
                            <div class="col"><h5>Private University</h5></div>
                        </div>-->
                    </div>
                    <div class="col"></div>
                </div>
            </div>
        </div>
        </div>
        <div class="row" style="height:40px"></div>
        <div class="row">
           
        </div>
    </div>
 </section>
</body>
</html>
