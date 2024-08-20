<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@ include file="./base.jsp"%>
</head>
<body>
	<!-- Start Header Area -->
	<header class="header-section d-none d-xl-block">
		<div class="header-wrapper">
			<div
				class="header-bottom header-bottom-color--black section-fluid sticky-header sticky-color--black">
				<div class="container-fluid">
					<div class="row">
						<div
							class="col-12 d-flex align-items-center justify-content-between">
							<!-- Start Header Logo -->
							<div class="header-logo">
								<div class="logo">
									<a href="home"><img
										src="assets/images/logo/logo_white.png" alt=""></a>
								</div>
							</div>
							<!-- End Header Logo -->

							<!-- Start Header Main Menu -->
							<div class="main-menu menu-color--white menu-hover-color--pink">
								<nav>
									<ul>
										<li class="has-dropdown"><a class="active main-menu-link"
											href="home">Home</i></a></li>
										<li class="has-dropdown has-megaitem"><a
											href='plp?productType=all'>Shop <i
												class="fa fa-angle-down"></i></a> <!-- Mega Menu -->
											<div class="mega-menu">
												<ul class="mega-menu-inner">
													<!-- Mega Menu Sub Link -->
													<li class="mega-menu-item"><a href="#"
														class="mega-menu-item-title">Electronics</a>
														<ul class="mega-menu-sub">
														
															<li><a href='plp?productType=mobile'>Mobile</a></li>
															<li><a href='plp?productType=laptop'>laptops</a></li>
															<li><a href='plp?productType=gadget'>Other Gadgets</a></li>
														</ul></li>
													<li class="mega-menu-item"><a href="#"
														class="mega-menu-item-title">Home Appliences</a>
														<ul class="mega-menu-sub">
															<li><a href='plp?productType=tv'>Tv</a></li>
															<li><a href='plp?productType=refrigerator'>Refrigerator</a></li>
															<li><a href='plp?productType=ac'>Others</a></li>
														</ul></li>

												</ul>
												<div class="menu-banner">
													<a href="#" class="menu-banner-link"> <img
														class="menu-banner-img"
														src="assets/images/banner/menu-banner.jpg" alt="">
													</a>
												</div>
											</div></li>
										<li><a href="aboutus">About Us</a></li>
										<li><a href="contactus">Contact Us</a></li>
									</ul>
								</nav>
							</div>
							<!-- End Header Main Menu Start -->

							<!-- Start Header Action Link -->
							<ul
								class="header-action-link action-color--white action-hover-color--pink">
								<li><a href="#offcanvas-wishlish" class="offcanvas-toggle">
										<i class="icon-heart"></i> <span class="item-count">3</span>
								</a></li>
								<li><a href="" class="offcanvas-toggle"><a href="cart">
										<i class="icon-bag"></i> <span class="item-count">3</span></a>
								</a></li>
								<li><a href="#search"> <i class="icon-magnifier"></i>
								</a></li>
								<li><a href="profile"
									> <i
										class="icon-menu"></i>
								</a></li>
							</ul>
							<!-- End Header Action Link -->
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>

	<%@ include file="./base.jsp"%>
</body>
</html>