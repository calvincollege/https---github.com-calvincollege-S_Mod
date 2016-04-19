<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="logon.aspx.cs" Inherits="S_Mod.logon" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet">
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">

</head>
<body>
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
                                <asp:CheckBox ID="Persist" runat="server" />
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
                                <asp:button cssclass="btn btn-success" id="btnLogin" onclick="Logon_Click" runat="server" text="Submit">
                            </asp:button>
                            <!--LOGIN WITH FACEBOOK BUTTON-->
                                <!--<a id="btn-fblogin" href="#" class="btn btn-primary">Login with Facebook</a> -->
                                

                            </div>
                            
                        </div>
<div style="float: left; font-size: 80%; position: relative; top: -10px"><a href="initialpage.aspx">Back to Homepag/a></div>
                    </form>

                </div>
            </div>
        </div>
</form>
</body>
</html>
