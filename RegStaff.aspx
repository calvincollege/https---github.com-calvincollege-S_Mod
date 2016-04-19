<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="RegStaff.aspx.cs" Inherits="S_Mod.RegStaff" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <div class="container">
        <div class="row centered-form">
        <div class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4">
        	<div class="panel panel-default">
        		<div class="panel-heading">
			    		<h3 class="panel-title">Register As Staff</h3>
			 			</div>
			 			<div class="panel-body">
			    		<form role="form" runat="server">
			    			<div class="row">
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			                <asp:textbox class="form-control" id="first_name" placeholder="First Name" runat="server"></asp:textbox>
			    					</div>
			    				</div>
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			    						<asp:textbox class="form-control" id="last_name" placeholder="Last Name" runat="server"></asp:textbox>
			    					</div>
			    				</div>
			    			</div>

			    			<div class="form-group">
			    				<asp:textbox class="form-control" id="staffno" placeholder="Employee Number" runat="server"></asp:textbox>
			    			</div>

			    			<div class="row">
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			    						<asp:textbox class="form-control" id="password" placeholder="Enter Password" runat="server" textmode="Password"></asp:textbox>
			    					</div>
			    				</div>
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			    						<asp:textbox class="form-control" id="confirmpassword" placeholder="Confirm Password" runat="server" textmode="Password"></asp:textbox>
			    					</div>
			    				</div>
			    			</div>
			    			
			    			  <asp:button cssclass="btn btn-success" id="btnLogin" onclick="btn_reg_employee" runat="server" text="Submit"></asp:button>
			    		
			    		</form>
			    	</div>
	    		</div>
    		</div>
    	</div>
    <%--</div>--%>
</asp:Content>
