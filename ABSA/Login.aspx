<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ABSA.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script type="text/javascript" src="js2/jquery-1.11.0.min.js"></script>
    <script src="js2/leanModal-modified-for-onload.js"></script>
<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css" />
<link type="text/css" rel="stylesheet" href="css2/style.css" />


 
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Different Multiple Form Widget template Responsive, Login form web template,Flat Pricing tables,Flat Drop downs  Sign up Web Templates, Flat Web Templates, Login sign up Responsive web template, SmartPhone Compatible web template, free web designs for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Custom Theme files -->
<link href="css3/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- //Custom Theme files -->
<!-- font-awesome icons -->
<link href="css3/font-awesome.css" rel="stylesheet"/> 
<!-- //font-awesome icons -->
<!-- web font -->
<link href="//fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i" rel="stylesheet"/>
<!-- //web font -->
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <a id="modal_trigger" href="#modal" class="btn">Click here to Login or register</a>
 
		
	
    <section class="popupBody">
      	
	
				<div class="top-grids-left">
					<div class="signin-form-grid">
						<div  id="modal" class="signin-form main-agile popupContainer" style="display:none;">
							<h2>Sign In Form</h2><span class="modal_close"><i class="fa fa-times"></i></span>
							<form id="signin" action="#" method="post">
								<input type="text" name="User Name" placeholder="User Name" required="">
								<input type="password" name="Password" placeholder="Password" required="">	 
								<input type="checkbox" id="brand" value="">
								<label for="brand"><span></span> Remember me ?</label> 
								<input type="submit" value="SIGN IN">
								<div class="signin-agileits-bottom"> 
									<p><a href="#">Forgot Password ?</a></p>    
								</div> 
							</form>
						</div>
						
					</div>
					</div>
                </div>
			</div>
	
	<!-- //main --> 

    </section>
        <script type="text/javascript">
	$("#modal_trigger").leanModal({top : 200, overlay : 0.6, closeButton: ".modal_close" });

	$(function(){
		// Calling Login Form
		$("#login_form").click(function(){
			$(".social_login").hide();
			$(".user_login").show();
			return false;
		});

		// Calling Register Form
		$("#register_form").click(function(){
			$(".social_login").hide();
			$(".user_register").show();
			$(".header_title").text('Register');
			return false;
		});

		// Going back to Social Forms
		$(".back_btn").click(function(){
			$(".user_login").hide();
			$(".user_register").hide();
			$(".social_login").show();
			$(".header_title").text('Login');
			return false;
		});

	})
</script>


</asp:Content>
