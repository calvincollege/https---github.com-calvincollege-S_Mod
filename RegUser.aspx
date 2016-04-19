<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegUser.aspx.cs" Inherits="S_Mod.RegUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <!--IMPORTING ALL OF THE SCRIPTS WE NEED TO RUN THE WEB PAGE-->

        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
        <script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
        <link rel="stylesheet" type="text/css" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">

</head>
<!--MAIN LOGIN CONTAINER-->
<form id="RegUserForm" class="form-horizontal" role="form" runat="server">
    <div class="container">
        <div id="Registerbox" style="margin-top: 50px;" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
            <div class="panel panel-info">
                <div class="panel-heading">
                    <div class="panel-title">User Registration</div>
                    <div style="float: right; font-size: 80%; position: relative; top: -10px"><a href="#">Forgot password?</a></div>
                </div>

                <div style="padding-top: 30px" class="panel-body">

                    <div style="display: none" id="login-alert" class="alert alert-danger col-sm-12"></div>

                    <form id="regform" class="form-horizontal" role="form">

                        <!--FIRST NAME SECTION-->
                        <div style="margin-bottom: 25px" class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                            <div class="col-sm-10">
                                <asp:textbox class="form-control" id="fname" placeholder="First Name" runat="server"></asp:textbox>
                            </div>

                        </div>

                        
                        <!--LAST NAME SECTION-->
                        <div style="margin-bottom: 25px" class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                            <div class="col-sm-10">
                                <asp:textbox class="form-control" id="lname" placeholder="Last Name" runat="server"></asp:textbox>
                            </div>

                        </div>

                        <!--EMAIL ADDRESS SECTION-->
                        <div style="margin-bottom: 25px" class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                            <div class="col-sm-10">
                                <asp:textbox class="form-control" id="email" placeholder="Enter Email Address" runat="server"></asp:textbox>
                            </div>

                        </div>
                        <!--PASSWORD SECTION-->
                        <div style="margin-bottom: 25px" class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                            <div class="col-sm-10">
                                <asp:textbox class="form-control" id="pwd" placeholder="Enter Password" runat="server" textmode="Password"></asp:textbox>
                                <asp:label cssclass="label label-danger" id="Label1" runat="server"></asp:label>
                            </div>

                        </div>

                        <div style="margin-bottom: 25px" class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                            <div class="col-sm-10">
                                <!--Secret Question drop down list-->
                                <asp:DropDownList ID="ddlsecretquestion" width="100%" height="100%" runat="Server">
                                  </asp:DropDownList>
                            </div>

                        </div>

                        

                        <!--SECRET QUESTION RESPONSE SECTION-->
                        <div style="margin-bottom: 25px" class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                            <div class="col-sm-10">
                                <asp:textbox class="form-control" id="sqresponse" placeholder="Secret Question Answer" runat="server"></asp:textbox>
                                <asp:label cssclass="label label-danger" id="Label2" runat="server"></asp:label>
                            </div>

                        </div>


                        <!--INVALID PASSWORD ALERT SECTION-->
                        <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10">
                                <asp:label cssclass="label label-danger" id="lblmsg" runat="server"></asp:label>
                            </div>
                        </div>

                        <!--HOLDER FOR BUTTONS-->
                        <div style="margin-top: 10px" class="form-group">
                            <!-- LOGIN BUTTON -->

                            <div class="col-sm-12 controls">
                                <asp:button cssclass="btn btn-success" id="btnLogin" onclick="btn_reg" runat="server" text="Submit">
                            </asp:button>
                            <!--LOGIN WITH FACEBOOK BUTTON-->
                                <!--<a id="btn-fblogin" href="#" class="btn btn-primary">Login with Facebook</a> -->
                                

                            </div>
                            
                        </div>
<div style="float: left; font-size: 80%; position: relative; top: -10px"><a href="initialpage.aspx">Back to Homepage</a></div>
                    </form>

                </div>
            </div>
        </div>
</form>
</html>
