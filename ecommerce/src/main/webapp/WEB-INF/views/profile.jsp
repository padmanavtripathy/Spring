<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
body {
	background-color: #000000
}

.padding {
	padding: 3rem !important;
	display: flex;
	justify-content: center;
}

.card-img-top {
	height: 300px;
}

.card-no-border .card {
	border-color: #d7dfe3;
	border-radius: 4px;
	margin-bottom: 30px;
	-webkit-box-shadow: 0px 5px 20px rgba(0, 0, 0, 0.05);
	box-shadow: 0px 5px 20px rgba(0, 0, 0, 0.05)
}

.card-body {
	-ms-flex: 1 1 auto;
	flex: 1 1 auto;
	padding: 1.25rem
}

.pro-img {
	margin-top: -80px;
	margin-bottom: 20px
}

.little-profile .pro-img img {
	width: 128px;
	height: 128px;
	-webkit-box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
	box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
	border-radius: 100%
}

html body .m-b-0 {
	margin-bottom: 0px
}

h3 {
	line-height: 30px;
	font-size: 21px
}

.btn-rounded.btn-md {
	padding: 12px 35px;
	font-size: 16px
}

html body .m-t-10 {
	margin-top: 10px
}

.btn-primary, .btn-primary.disabled {
	background: #7460ee;
	border: 1px solid #7460ee;
	-webkit-box-shadow: 0 2px 2px 0 rgba(116, 96, 238, 0.14), 0 3px 1px -2px
		rgba(116, 96, 238, 0.2), 0 1px 5px 0 rgba(116, 96, 238, 0.12);
	box-shadow: 0 2px 2px 0 rgba(116, 96, 238, 0.14), 0 3px 1px -2px
		rgba(116, 96, 238, 0.2), 0 1px 5px 0 rgba(116, 96, 238, 0.12);
	-webkit-transition: 0.2s ease-in;
	-o-transition: 0.2s ease-in;
	transition: 0.2s ease-in
}

.btn-rounded {
	border-radius: 60px;
	padding: 7px 18px
}

.m-t-20 {
	margin-top: 20px
}

.text-center {
	text-align: center !important
}

h1, h2, h3, h4, h5, h6 {
	color: #455a64;
	font-family: "Poppins", sans-serif;
	font-weight: 400
}

p {
	margin-top: 0;
	margin-bottom: 1rem
}
.col-lg-4 col-md-4 m-t-20
{
	display: flex;
    justify-content: center;
}
</style>
</head>
<body>
	<!-- ...:::: Start Breadcrumb Section:::... -->
	<div class="breadcrumb-section breadcrumb-bg-color--golden">
		<div class="breadcrumb-wrapper">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<h3 class="breadcrumb-title">
							Product Details
							<h3>
								<div
									class="breadcrumb-nav breadcrumb-nav-color--black breadcrumb-nav-hover-color--golden">
									<nav aria-label="breadcrumb">
										<ul>
											<li><a href="home">Home</a></li>
											<li><a href='plp?productType=all'>Shop</a></li>
											<li class="active" aria-current="page">Profile</li>
										</ul>
									</nav>
								</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="padding">
		<div class="col-md-8">
			<!-- Column -->
			<div class="card">
				<img class="card-img-top" src="https://i.imgur.com/K7A78We.jpg"
					alt="Card image cap">
				<div class="card-body little-profile text-center">
					<div class="pro-img">
						<img src="https://i.imgur.com/8RKXAIV.jpg" alt="user">
					</div>
					<h3 class="m-b-0">${user }</h3>
					<p>email goes hear</p>
					<a href="logout"
						class="m-t-10 waves-effect waves-dark btn btn-primary btn-md btn-rounded"
						data-abc="true">Logout</a>
					<div class="row text-center m-t-20">
						<div class="col-lg-4 col-md-4 m-t-20">
							<a href="cart"><h3 class="m-b-0 font-light">Cart</h3></a>
						</div>
						<div class="col-lg-4 col-md-4 m-t-20">
							<a href='plp?productType=all'><h3 class="m-b-0 font-light">Shop</h3></a>
						</div>
						<div class="col-lg-4 col-md-4 m-t-20">
							<a href="printOrders"><h3 class="m-b-0 font-light">Orders</h3></a>
						</div>
						<c:choose>
							<c:when test="${user.equals('padmanav')}">
							<div class="col-lg-4 col-md-4 m-t-20">
								<a href="view-product"><h3 class="m-b-0 font-light">Add Products</h3></a>
							</div>
    						</c:when>
						</c:choose>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>