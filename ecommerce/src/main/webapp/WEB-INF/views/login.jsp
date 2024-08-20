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
	<!-- ...:::: Start Breadcrumb Section:::... -->
	<div class="breadcrumb-section breadcrumb-bg-color--golden">
		<div class="breadcrumb-wrapper">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<h3 class="breadcrumb-title">Login</h3>
						<div
							class="breadcrumb-nav breadcrumb-nav-color--black breadcrumb-nav-hover-color--golden">
							<nav aria-label="breadcrumb">
								<ul>
									<li><a href="index.html">Home</a></li>
									<li><a href="shop-grid-sidebar-left.html">Shop</a></li>
									<li class="active" aria-current="page">Login</li>
								</ul>
							</nav>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- ...:::: End Breadcrumb Section:::... -->

	<!-- ...:::: Start Customer Login Section :::... -->
	<div class="customer-login">
		<div class="container">
			<div class="row">
				<!--login area start-->
				<div class="col-lg-6 col-md-6">
					<div class="account_form" data-aos="fade-up" data-aos-delay="0">
						<h3>login</h3>
						<c:catch var="Error">
							<!-- <div class="alert alert-danger" role="alert">Invalid
								Username or password or New User Try Register first!!!</div> -->
						</c:catch>
						<c:if test="${Error != null}">
							<div class="alert alert-danger" role="alert">Invalid
								Username or password or New User Try Register first!!!</div>
						</c:if>

						<form action="validate" method="POST">
							<div class="default-form-box">
								<label>Username or email <span>*</span></label> <input
									type="text" name="user">
							</div>
							<div class="default-form-box">
								<label>Passwords <span>*</span></label> <input type="password"
									name="password">
							</div>
							<div class="login_submit">
								<button class="btn btn-md btn-black-default-hover mb-4"
									type="submit">login</button>


							</div>
						</form>
					</div>
				</div>
				<!--login area start-->

				<!--register area start-->
				<div class="col-lg-6 col-md-6">
					<div class="account_form register" data-aos="fade-up"
						data-aos-delay="200">
						<h3>Register</h3>
						<c:catch var="Rerror">
							<!-- <div class="alert alert-danger" role="alert">Invalid
								Username or password or New User Try Register first!!!</div> -->
						</c:catch>
						<c:if test="${Rerror != null}">
							<div class="alert alert-danger" role="alert">Invalid
								User Already Exist Try To Login Or Create New User!!!</div>
						</c:if>
						
						<form action="register" method="post">
							<div class="default-form-box">
								<label>Name<span>*</span></label> <input type="text" name="name">
							</div>
							<div class="default-form-box">
								<label>Email<span>*</span></label> <input type="email"
									name="Email">
							</div>
							<div class="default-form-box">
								<label>UserName<span>*</span></label> <input type="text"
									name="user" >
							</div>
							<div class="default-form-box">
								<label>Passwords <span>*</span></label> <input type="password"
									name="password">
							</div>
							<div class="login_submit">
								<button class="btn btn-md btn-black-default-hover" type="submit">Register</button>
							</div>
						</form>
					</div>
				</div>
				<!--register area end-->
			</div>
		</div>
	</div>
	<!-- ...:::: End Customer Login Section :::... -->
	<%@ include file="./base.jsp"%>
</body>
</html>