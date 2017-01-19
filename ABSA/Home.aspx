
<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/master.Master" CodeBehind="Home.aspx.vb" Inherits="ABSA.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- banner -->
	<div class="banner">
		<div class="container">
			<div class="banner-left">
				<h3>the easiest way to find your dream home</h3>
				<p></p>

			</div>
			<div class="banner-right">
				<h3><span>Search For Home</span></h3>
				<div class="reservation">
              <div class="section_room">
						<span class="glyphicon glyphicon-user" aria-hidden="true"></span>
						<select id="country" onchange="change_country(this.value)" class="frm-field required">
							<option value="null">Type of Seller</option>
							<option value="null">Any</option>         
							<option value="Private">Private</option>
							<option value="Bank Repo">Bank Repo</option>
							<option value="Bank Privat">Bank Private</option>
							<option value="Rental">Rental</option>
						</select>
					<div class="section_room">
						<span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span>
						<select id="country" onchange="change_country(this.value)" class="frm-field required">
							<option value="null">Location</option>
							<option value="null">Any</option>         
							<option value="Gauteng">Gauteng</option>
							<option value="Kwa-Zulu Natal">Kwa-Zulu Natal</option>
							<option value="Eastern Cape">Eastern Cape</option>
							<option value="Western Cape">Western Cape</option>
                            <option value="Northern Cape">Northern Cape</option>
                            <option value="Limpopo">Limpopo</option>
                            <option value="Free State">Free State</option>
						</select>
					</div>	
					<div class="section_room">
						<span class="glyphicon glyphicon-home" aria-hidden="true"></span>
						<select id="country1" onchange="change_country(this.value)" class="frm-field required">
							<option value="null">Type of property</option>
							<option value="null">Any</option>         
							<option value="Cluster">Cluster</option>
							<option value="Duet">Duet</option>
							<option value="Duplex">Duplex</option>
							<option value="Flat/Apartment">Flat/Apartment</option>
                            <option value="House">House</option>         
							<option value="Simplex">Simplex</option>
							<option value="Retirement Home">Retirement Home</option>
							<option value="Land">Land</option>
							<option value="Farm/Small Holding">Farm/Small Holding</option>
                            <option value="Sec Title">Sec Title</option>         
							<option value="Guest House">Guest House</option>
							
						</select>
					</div>
					<div class="reservation-grids">
						<div class="reservation-grid-left">
							<div class="section_room">
								<span class="tent"> </span>
								<select id="country2" onchange="change_country(this.value)" class="frm-field required">
									<option value="null">Bedrooms</option>
                                    	<option value="null">Any</option>
									<option value="1">1</option>         
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value=">4">More than 4</option>
								</select>
							</div>
						</div>
						<div class="reservation-grid-right">
							<div class="section_room">
								<span class="bath"></span>
								<select id="country3" onchange="change_country(this.value)" class="frm-field required">
									<option value="null">Baths</option>
                                    <option value="null">Any</option>
									<option value="1">1</option>         
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value=">4">More than 4</option>
								</select>
							</div>
						</div>
						<div class="clearfix"> </div>
					</div>
					
                        <div class="reservation-grids">
						<div class="reservation-grid-left">
							<div class="section_room">
								<span class="glyphicon glyphicon-th" aria-hidden="true"> </span>
								<select id="country2" onchange="change_country(this.value)" class="frm-field required">
									<option value="null">ERF Size From</option>
									<option value="null">1</option>         
									<option value="AX">2</option>
									<option value="AX">3</option>
									<option value="AX">4</option>
									<option value="AX">More</option>
								</select>
							</div>
						</div>
						<div class="reservation-grid-right">
							<div class="section_room">
								<span class="glyphicon glyphicon-th" aria-hidden="true"></span>
								<select id="country3" onchange="change_country(this.value)" class="frm-field required">
									<option value="null">ERF Size To </option>
									<option value="null">Any</option>         
									<option value="AX">2</option>
									<option value="AX">3</option>
									<option value="AX">4</option>
									<option value="AX">More</option>
								</select>
							</div>
						</div>
						  <div class="reservation-grids">
						<div class="reservation-grid-left">
							<div class="section_room">
								<span class="glyphicon glyphicon-home" aria-hidden="true"> </span>
								<select id="country2" onchange="change_country(this.value)" class="frm-field required">
									<option value="null">Floor Size From</option>
									<option value="null">1</option>         
									<option value="AX">2</option>
									<option value="AX">3</option>
									<option value="AX">4</option>
									<option value="AX">More</option>
								</select>
							</div>
						</div>
						<div class="reservation-grid-right">
							<div class="section_room">
								<span class="glyphicon glyphicon-home" aria-hidden="true"></span>
								<select id="country3" onchange="change_country(this.value)" class="frm-field required">
									<option value="null">Floor Size To </option>
									<option value="null">Any</option>         
									<option value="AX">2</option>
									<option value="AX">3</option>
									<option value="AX">4</option>
									<option value="AX">More</option>
								</select>
							</div>
						</div>
					<div class="reservation-grids">
						<div class="reservation-grid-left">
							<div class="section_room">
								<span class="glyphicon glyphicon-piggy-bank" aria-hidden="true"></span>
								<select id="country2" onchange="change_country(this.value)" class="frm-field required">
									<option value="null">Price From</option>
									<option value="null">No Minimum</option>         
									<option value="AX">1000Yen</option>
									<option value="AX">3000Yen</option>
									<option value="AX">4000Yen</option>
									<option value="AX">5000Yen</option>
								</select>
							</div>
						</div>
						<div class="reservation-grid-right">
							<div class="section_room">
								<span class="glyphicon glyphicon-piggy-bank" aria-hidden="true"></span>
								<select id="country3" onchange="change_country(this.value)" class="frm-field required">
									<option value="null">Price To</option>
									<option value="null">Any</option>         
									<option value="AX">15000Yen</option>
									<option value="AX">25000Yen</option>
									<option value="AX">35000Yen</option>
									<option value="AX">More</option>
								</select>
							</div>

						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="keywords">
						<form action="#" method="post">
							<span class="glyphicon glyphicon-list-alt" aria-hidden="true"></span>
							<input type="text" name="Key Words" placeholder="Key Words" required=" "/>
							<input type="submit" value="Search"/>
						</form>
					</div>
                  </div>
                  </div>
				</div>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
<!-- //banner -->
</asp:Content>
