<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="initialpage.aspx.cs" Inherits="S_Mod.initialpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <!--importing the scripts-->
     <!--importing the bootstrap, css and jquery-->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet">
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">


</head>
<body>
    <nav class="navbar navbar-default navbar-inverse" role="navigation">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">Login dropdown</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">Link</a></li>
        <li><a href="#">Link</a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li><a href="#">Action</a></li>
            <li><a href="#">Another action</a></li>
            <li><a href="#">Something else here</a></li>
            <li class="divider"></li>
            <li><a href="#">Separated link</a></li>
            <li class="divider"></li>
            <li><a href="#">One more separated link</a></li>
          </ul>
        </li>
      </ul>
      <form class="navbar-form navbar-left" role="search">
        <div class="form-group">
          <input type="text" class="form-control" placeholder="Search">
        </div>
        <button type="submit" class="btn btn-default">Submit</button>
      </form>
      <ul class="nav navbar-nav navbar-right">
        <li><p class="navbar-text">Already have an account?</p></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown"><b>Login</b> <span class="caret"></span></a>
			<ul id="login-dp" class="dropdown-menu">
				<li>
					 <div class="row">
							<div class="col-md-12">

								 <form class="form" role="form" id="loginbox" runat="server">
                                        <!--email address box-->
										<div class="form-group">
											 <label class="sr-only" for="inputemail">Email address</label>
											 <asp:textbox class="form-control" id="email" placeholder="Email Address" runat="server"></asp:textbox>
										</div>

										<!--password box-->
                                        <div class="form-group">
											 <label class="sr-only" for="inputpassword">Password</label>
											 <asp:textbox class="form-control" id="pwd" placeholder="Enter Password" runat="server" textmode="Password"></asp:textbox>
                                             <div class="help-block text-right"><a href="">Forget the password ?</a></div>
										</div>

                                        <!--alert for incorrect pasword-->
                                        <div class="form-group">
                                            <div class="col-sm-offset-2 col-sm-10">
                                                <asp:label cssclass="label label-danger" id="lblmsg" runat="server"></asp:label>
                                            </div>
                                        </div>

										<div class="form-group">
											 <asp:button cssclass="btn btn-success" id="btnLogin" onclick="btn_submit_action" runat="server" text="Log In">
                                            </asp:button>
										</div>

                                        <!--keep me signed in checkbox-->
										<div class="checkbox">
											 <label>
											 <input type="checkbox"> keep me logged-in
											 </label>
										</div>

								 </form>
							</div>
							<div class="bottom text-center">
								New here ? <a href="RegUser.aspx"><b>Join Us</b></a>
                                New here ? <a href="RegStaff.aspx"><b>Staff Register</b></a>
							</div>
					 </div>
				</li>
			</ul>
        </li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
</body>
</html>
