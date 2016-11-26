<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Cuisine.aspx.cs" Inherits="Cuisine" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Cusine</title>
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
<body id ="page5">
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
						<li class="end"><a href="Cart.aspx"><strong>Cart</strong></a></li>
					</ul>
				</nav>
                <br />
                <br />
                <br />
              <!--  <asp:Label ID="Logged_Username" runat="server" Text="Label"></asp:Label> -->
				<nav>
					<ul id="menu">
						<li><a href="index.aspx">Restaurant</a></li>
						<li class="active"><a href="Cuisine.aspx">Cuisine</a></li>
						<li><a href="Gallery.aspx">Gallery</a></li>
						<li><a href="Contacts.aspx">Contacts</a></li>
					</ul>
				</nav>
			</header>
            <br />
            <br />
<!-- / header -->
<!-- content -->
			<article id="content">
				<div class="wrap">
					<div class="box">
						<div>
							<h2 align="center" class="letter_spacing"> Menu <span></span></h2>
                                <h3 class="letter_spacing"><a href="Cuisine.aspx" class="active"> Indian <span>Cuisine</span></a>&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp<a href="frenchCuisine.aspx"> French <span>Cuisine</span></a>&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp <a href="italianCuisine.aspx">Italian <span>Cuisine</span></a></h3>
                                    <form runat="server">
                                    <h3 class="letter_spacing"><span>Starters </span></h3>

                                        <div class="wrap">
						                    <section class="col-1-3"><div class="wrap-col">
							                    <div class="box">
								                    <div>
									                    <h2>Veg <span>Manchuria</span></h2>
									                    <figure><img src="images/manchuria.jpeg" alt="" /></figure>
									                    <p class="pad_bot1">INGREDIENTS:chopped cabbage,cornflour,carrot,onions.</br><strong>Price:100/-</strong></p>
									                    <a href="?i=1" class="button1">Add to cart</a>
                                                        <!--<asp:Button ID="Button1" runat="server" Text="Add to cart" class="button1" OnClick="Button1_Click"/>-->
								                    </div>
					                    </div>
						                    </div></section>
                                            <section class="col-1-3"><div class="wrap-col">
							                    <div class="box">
								                    <div>
									                    <h2>Chicken <span>Tawa</span></h2>
									                    <figure><img src="images/chicken tawa.jpg" alt="" /></figure>
									                    <p class="pad_bot1">INGREDIENTS:chicken,yoghurt,garlic paste,onions.</br><strong>Price:120/-</strong></p>
									                    <a href="?i=2" class="button1">Add to cart</a>
								                    </div>
							                    </div>
						                    </div></section>
                                             <section class="col-1-3"><div class="wrap-col">
							                    <div class="box">
								                    <div>
                                                        <h2>Chicken <span>Roll</span></h2>
									                    <figure><img src="images/chicken roll.jpg" alt="" /></figure>
									                    <p class="pad_bot1">INGREDIENTS:chicken,Chicken, All Purpose Flour, Egg, Breadcrumbs,  Green Chillies, Onion.</br><strong>Price:150/-</strong></p>
									                    <a href="?i=3" class="button1">Add to cart</a>
									                   
								                    </div>
							                    </div>
						                    </div></section>

						</div>
                             <h3 class="letter_spacing"><span>Main Course</span></h3>

                                        <div class="wrap">
						                    <section class="col-1-3"><div class="wrap-col">
							                    <div class="box">
								                    <div>
									                    <h2>Veg <span>Biryani</span></h2>
									                    <figure><img src="images/VegBiryani.jpg" alt="" /></figure>
									                    <p class="pad_bot1">INGREDIENTS:chopped vegetables,masala,rice,garlic paste.</br><strong>Price:180/-</strong></p>
                                                        
									                    <a href="?i=4" class="button1">Add to cart</a>

								                    </div>
					                    </div>
						                    </div></section>
                                            <section class="col-1-3"><div class="wrap-col">
							                    <div class="box">
								                    <div>
									                    <h2>Chicken<span>Biryani</span></h2>
									                    <figure><img src="images/chickenbiryani.jpg" alt="" /></figure>
									                    <p class="pad_bot1">INGREDIENTS:chicken,rice,garlic paste,masala.</br><strong>Price:200/-</strong></p>
									                    <a href="?i=5" class="button1">Add to cart</a>
								                    </div>
							                    </div>
						                    </div></section>
                                             <section class="col-1-3"><div class="wrap-col">
							                    <div class="box">
								                    <div>
                                                         <h2>Jeera<span>rice</span></h2>
									                    <figure><img src="images/jeerarice.jpg" alt="" /></figure>
									                    <p class="pad_bot1">INGREDIENTS:jeera,rice,onions,corriander,GreenChillies.</br><strong>Price:150/-</strong></p>
									                    <a href="?i=6" class="button1">Add to cart</a>
									                    
								                    </div>
							                    </div>
						                    </div></section>

						</div>
                            <div class="wrap">
						                    <section class="col-1-3"><div class="wrap-col">
							                    <div class="box">
								                    <div>
									                    <h2>Sabudhana<span>Kichidi</span></h2>
									                    <figure><img src="images/sabudhana.jpg" alt="" /></figure>
									                    <p class="pad_bot1">INGREDIENTS:sabudana,Peanuts,Green chillies,Potato,Ghee ,Curry leaves.</br><strong>Price:100/-</strong></p>
									                    <a href="?i=7" class="button1">Add to cart</a>

								                    </div>
					                    </div>
						                    </div></section>
                                            <section class="col-1-3"><div class="wrap-col">
							                    <div class="box">
								                    <div>
									                    <h2>Paneer<span>Fried Rice</span></h2>
									                    <figure><img src="images/paneer.jpg" alt="" /></figure>
									                    <p class="pad_bot1">INGREDIENTS:paneer,rice,garlic paste,onions.</br><strong>Price:200/-</strong></p>
									                    <a href="?i=8" class="button1">Add to cart</a>
								                    </div>
							                    </div>
						                    </div></section>
                                             <section class="col-1-3"><div class="wrap-col">
							                    <div class="box">
								                    <div>
                                                         <h2>Mutton<span>Biryani</span></h2>
									                    <figure><img src="images/mutton.jpg" alt="" /></figure>
									                    <p class="pad_bot1">INGREDIENTS:mutton,rice,onions,corriander,GreenChillies,masala.</br><strong>Price:150/-</strong></p>
									                    <a href="?i=9" class="button1">Add to cart</a>
									                    
								                    </div>
							                    </div>
						                    </div></section>

						</div>
                                        
                         <h3 class="letter_spacing"><span>Desserts </span></h3>

                                        <div class="wrap">
						                    <section class="col-1-3"><div class="wrap-col">
							                    <div class="box">
								                    <div>
									                    <h2>Gulab<span> Jamun</span></h2>
									                    <figure><img src="images/gulabjamun.jpg" alt="" /></figure>
									                    <p class="pad_bot1">INGREDIENTS:kovaa,sugar,flour,milk powder.</br><strong>Price:70/-</strong></p>
									                    <a href="?i=10" class="button1">Add to cart</a>

								                    </div>
					                    </div>
						                    </div></section>
                                            <section class="col-1-3"><div class="wrap-col">
							                    <div class="box">
								                    <div>
									                    <h2>Ras<span>Malai</span></h2>
									                    <figure><img src="images/rasmalai.jpg" alt="" /></figure>
									                    <p class="pad_bot1">INGREDIENTS:kovaa,sugar,flour,milk powder,malai.</br><strong>Price:70/-</strong></p>
									                    <a href="?i=11" class="button1">Add to cart</a>

								                    </div>
					                    </div>
						                    </div></section>
                                            <section class="col-1-3"><div class="wrap-col">
							                    <div class="box">
								                    <div>
									                    <h2>Double<span>Ka meeta</span></h2>
									                    <figure><img src="images/doublekameta.jpg" alt="" /></figure>
									                    <p class="pad_bot1">INGREDIENTS:kovaa,sugar,bread,dry fruits.</br><strong>Price:70/-</strong></p>
									                    <a href="?i=12" class="button1">Add to cart</a>

								                    </div>
					                    </div>
						                    </div></section>
                                            </div>
                                             </form>
                                            </div>
                       
					</div>
				</div>
			</article>
		</div>
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