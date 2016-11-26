﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Contacts.aspx.cs" Inherits="Contacts" %>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Contacts</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
<link rel="stylesheet" href="css/layout.css" type="text/css" media="all">
<link rel="stylesheet" href="css/style.css" type="text/css" media="all">
<link rel="stylesheet" href="css/zerogrid.css" type="text/css" media="all">
<link rel="stylesheet" href="css/responsive.css" type="text/css" media="all"> 
<script type="text/javascript" src="js/jquery-1.6.js" ></script>
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-replace.js"></script>  
<script type="text/javascript" src="js/Forum_400.font.js"></script>
<script type="text/javascript" src="js/atooltip.jquery.js"></script> 
<script type="text/javascript" src="js/css3-mediaqueries.js"></script>
<!--[if lt IE 9]>
	<script type="text/javascript" src="js/html5.js"></script>
	<style type="text/css">
		.slider_bg {behavior:url(js/PIE.htc)}
	</style>
<![endif]-->
<!--[if lt IE 7]>
	<div style='clear:both;text-align:center;position:relative'>
		<a href="http://www.microsoft.com/windows/internet-explorer/default.aspx?ocid=ie6_countdown_bannercode"><img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0" alt="" /></a>
	</div>
<![endif]-->
</head>
<body id="page5">
<div class="body6">
	<div class="body1">
		<div class="main zerogrid">
<!-- header -->
			<header>
				<h1><img src="images/logo.png"/></h1>
				<nav>
					<ul id="top_nav">
						<li><a href="Registration.aspx"><strong>Sign Up</strong></a></li>
						<li><a href="Login.aspx"><strong>Login</strong></a></li>
						<li class="end"><a href="Contacts.aspx"><strong>Cart</strong></a></li>
					</ul>
				</nav>
                <br />
                <br />
                <br />
				<nav>
					<ul id="menu">
						<li><a href="index.aspx">Restaurant</a></li>
						<li><a href="Cuisine.aspx">Cuisine</a></li>
						<li><a href="Gallery.aspx">Gallery</a></li>
						<li class="active"><a href="Contacts.aspx">Contacts</a></li>
					</ul>
				</nav>
			</header>
<!-- / header -->
<!-- content -->
			<article id="content">
				<div class="wrap">
					<div class="box">
						<div>
							<h2 class="letter_spacing">Contact <span>Form</span></h2>
							<form id="ContactForm" runat="server">
								<div>
									<div class="wrapper">
										<span>Your Name:</span>
                                        <asp:TextBox ID="txtName" runat="server" CssClass="input"></asp:TextBox>
										
									</div>
									<div class="wrapper">
										<span>Your E-mail:</span>
										<asp:TextBox ID="txtemail" runat="server" CssClass="input"></asp:TextBox>							
									</div>
									<div class="textarea_box">
										<span>Your Message:</span>
                                        <asp:TextBox id="txtmsg" TextMode="multiline" Columns="300" Rows="5" runat="server" />
																	
									</div>
									<center>
									
                                    <asp:Button ID="Button1" runat="server" Text="Send" CssClass="button1" OnClick="SendButton"></asp:Button>
                                    <asp:Button ID="Button2" runat="server" Text="Clear" CssClass="button1" OnClick="ClearButton"></asp:Button>
											
									</center>
								</div>
							</form>
						</div>
					</div>
				</div>
			</article>
		</div>
	</div>
</div>
<div class="body2">
	<div class="main zerogrid">
		<article id="content2">
			<section>
				<div class="wrapper">
					<div class="col-1-3"><div class="wrap-col">
						<h2>Our Contacts</h2>
						<div class="wrapper pad_bot1">
							<p>Sed ut perspiciatis unde omnis iunatus doloremque laudantium.</p>
							<p class="address">
								Marmora Road, Glasgow, D04 89GR.<br>
								<span>Freephone:</span>    +1 800 559 6580<br>
								<span>Telephone:</span>    +1 959 603 6035<br>
								<span>E-mail:</span>             <a href="mailto:">mail@demolink.org</a>
							</p>
						</div>
					</div></div>
					<div class="col-2-3"><div class="wrap-col mag-1">	
						<h2>Miscellaneous Info</h2>
						<p>
							Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
						</p>
						Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error.
					</div></div>
				</div>
			</section>
		</article>
<!-- / content -->
	</div>
</div>
<div class="body3">

		<div class="main zerogrid">
<!-- footer -->
			<footer>
				<div class="wrapper">
					<section class="col-2-3"><div class="wrap-col">
						<h3>Toll Free: <span>XXXXXXXXXX</span></h3>
					</div></section>
					<section class="col-1-3"><div class="wrap-col">
						<h3>Follow Us </h3>
						<ul id="icons">
							<li><a href="#" class="normaltip" title="Facebook"><img src="images/icon1.gif" alt=""></a></li>
							<li><a href="#" class="normaltip" title="Linkedin"><img src="images/icon2.gif" alt=""></a></li>
							<li><a href="#" class="normaltip" title="Twitter"><img src="images/icon3.gif" alt=""></a></li>
							<li><a href="#" class="normaltip" title="Delicious"><img src="images/icon4.gif" alt=""></a></li>
							<li><a href="#" class="normaltip" title="Technorati"><img src="images/icon5.gif" alt=""></a></li>
						</ul>
					</div></section>
				</div>
				<!-- {%FOOTER_LINK} -->
			</footer>
<!-- / footer -->
		</div>

</div>
<script type="text/javascript"> Cufon.now(); </script>
</body>
</html>
