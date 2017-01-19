<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="ABSA.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="signin-form signup-form">
						<h3>Sign Up Form</h3>
						<form id="signin" action="#" method="post">
							<input type="text" name="User Name" placeholder="User Name" required="">
							<input type="email" name="Email" placeholder="Your Email" required="">
							<input type="password" name="Password" placeholder="Password" required="">
							<input type="checkbox" id="brand1" value="">
							<label for="brand1"><span></span>I accept the terms of use</label>
							<input type="submit" value="SIGN UP">
						</form>
					</div>


    <section class="popupBody">
      	
	
				<div class="top-grids-left">
					<div class="signin-form-grid">
						<div  id="modal2" class="signin-form main-agile popupContainer" style="display:none;">
							
							<h3>Sign Up Form</h3><span class="modal_close"><i class="fa fa-times"></i></span>
						<form id="signin" action="#" method="post">
							<input type="text" name="User Name" placeholder="User Name" required="">
							<input type="email" name="Email" placeholder="Your Email" required="">
							<input type="password" name="Password" placeholder="Password" required="">
							<input type="checkbox" id="brand1" value="">
							<label for="brand1"><span></span>I accept the terms of use</label>
							<input type="submit" value="SIGN UP">
						</form>
							
						</div>
						
					</div>
					</div>
                
	<!-- //main --> 

    </section>
</asp:Content>
