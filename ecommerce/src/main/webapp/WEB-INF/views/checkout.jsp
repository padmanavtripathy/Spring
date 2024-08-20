<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

</head>
<body>
	<div class="offcanvas-overlay"></div>

	<!-- ...:::: Start Breadcrumb Section:::... -->
	<div class="breadcrumb-section breadcrumb-bg-color--golden">
		<div class="breadcrumb-wrapper">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<h3 class="breadcrumb-title">Checkout</h3>
						<div
							class="breadcrumb-nav breadcrumb-nav-color--black breadcrumb-nav-hover-color--golden">
							<nav aria-label="breadcrumb">
								<ul>
									<li><a href="index.html">Home</a></li>
									<li><a href="shop-grid-sidebar-left.html">Shop</a></li>
									<li class="active" aria-current="page">Checkout</li>
								</ul>
							</nav>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- ...:::: End Breadcrumb Section:::... -->

	<!-- ...:::: Start Checkout Section:::... -->

	<!-- Start User Details Checkout Form -->
	<div class="checkout_form" data-aos="fade-up" data-aos-delay="400">
		<div class="row">
			<div class="col-lg-6 col-md-6">
				<form action="#">
					<h3>Billing Details</h3>
					<div class="row">
						<div class="col-lg-6">
							<div class="default-form-box">
								<label>First Name <span>*</span></label> <input type="text">
							</div>
						</div>
						<div class="col-lg-6">
							<div class="default-form-box">
								<label>Last Name <span>*</span></label> <input type="text">
							</div>
						</div>
						<div class="col-12">
							<div class="default-form-box">
								<label>Company Name</label> <input type="text">
							</div>
						</div>
						<div class="col-12">
							<div class="default-form-box">
								<label for="country">country <span>*</span></label> <select
									class="country_option nice-select wide" name="country"
									id="country">
									<option value="2">Bangladesh</option>
									<option value="3">Algeria</option>
									<option value="4">Afghanistan</option>
									<option value="5">Ghana</option>
									<option value="6">Albania</option>
									<option value="7">Bahrain</option>
									<option value="8">Colombia</option>
									<option value="9">Dominican Republic</option>
								</select>
							</div>
						</div>
						<div class="col-12">
							<div class="default-form-box">
								<label>Street address <span>*</span></label> <input
									placeholder="House number and street name" type="text">
							</div>
						</div>
						<div class="col-12">
							<div class="default-form-box">
								<input placeholder="Apartment, suite, unit etc. (optional)"
									type="text">
							</div>
						</div>
						<div class="col-12">
							<div class="default-form-box">
								<label>Town / City <span>*</span></label> <input type="text">
							</div>
						</div>
						<div class="col-12">
							<div class="default-form-box">
								<label>State / County <span>*</span></label> <input type="text">
							</div>
						</div>
						<div class="col-lg-6">
							<div class="default-form-box">
								<label>Phone<span>*</span></label> <input type="text">
							</div>
						</div>
						<div class="col-lg-6">
							<div class="default-form-box">
								<label> Email Address <span>*</span></label> <input type="text">
							</div>
						</div>
						<div class="col-12">
							<label class="checkbox-default" for="newShipping"
								data-bs-toggle="collapse" data-bs-target="#anotherShipping">
								<input type="checkbox" id="newShipping"> <span>Ship
									to a different address?</span>
							</label>

							<div id="anotherShipping" class="collapse mt-3"
								data-parent="#anotherShipping">
								<div class="row">
									<div class="col-lg-6">
										<div class="default-form-box">
											<label>First Name <span>*</span></label> <input type="text">
										</div>
									</div>
									<div class="col-lg-6">
										<div class="default-form-box">
											<label>Last Name <span>*</span></label> <input type="text">
										</div>
									</div>
									<div class="col-12">
										<div class="default-form-box">
											<label>Company Name</label> <input type="text">
										</div>
									</div>
									<div class="col-12">
										<div class="select_form_select default-form-box">
											<label for="countru_name">country <span>*</span></label> <select
												class="niceselect_option wide" name="cuntry"
												id="countru_name">
												<option value="2">Bangladesh</option>
												<option value="3">Algeria</option>
												<option value="4">Afghanistan</option>
												<option value="5">Ghana</option>
												<option value="6">Albania</option>
												<option value="7">Bahrain</option>
												<option value="8">Colombia</option>
												<option value="9">Dominican Republic</option>
											</select>
										</div>
									</div>

									<div class="col-12">
										<div class="default-form-box">
											<label>Street address <span>*</span></label> <input
												placeholder="House number and street name" type="text">
										</div>
									</div>
									<div class="col-12">
										<div class="default-form-box">
											<input placeholder="Apartment, suite, unit etc. (optional)"
												type="text">
										</div>
									</div>
									<div class="col-12">
										<div class="default-form-box">
											<label>Town / City <span>*</span></label> <input type="text">
										</div>
									</div>
									<div class="col-12">
										<div class="default-form-box">
											<label>State / County <span>*</span></label> <input
												type="text">
										</div>
									</div>
									<div class="col-lg-6">
										<div class="default-form-box">
											<label>Phone<span>*</span></label> <input type="text">
										</div>
									</div>
									<div class="col-lg-6">
										<div class="default-form-box">
											<label> Email Address <span>*</span></label> <input
												type="text">
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-12 mt-3">
							<div class="order-notes">
								<label for="order_note">Order Notes</label>
								<textarea id="order_note"
									placeholder="Notes about your order, e.g. special notes for delivery."></textarea>
							</div>
						</div>
					</div>
				</form>
			</div>
			<div class="col-lg-6 col-md-6">
					<h3>Your order</h3>
					<div class="order_table table-responsive">
						<table>
							<thead>
								<tr>
									<th>Product</th>
									<th>Total</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${cartProducts }" var="Products">
									<tr>
										<td>${Products.product }<strong> × ${Products.quantity }</strong></td>
										<td>${Products.price*Products.quantity }</td>
									</tr>
									</c:forEach>
							</tbody>
							<tfoot>
								<tr>
									<th>Cart Subtotal</th>
									<td>${total }</td>
								</tr>
								<tr>
									<th>Shipping</th>
									<td><strong>40</strong></td>
								</tr>
								<tr class="order_total">
									<th>Order Total</th>
									<td><strong>${total+40 }</strong></td>
								</tr>
							</tfoot>
						</table>
					</div>
					<div class="payment_method">
						<div class="order_button pt-3">
							<a href="deleteCart"><button class="btn btn-md btn-black-default-hover" type="submit">Place
								Order</button></a>
						</div>
					</div>
			</div>
		</div>
	</div>
	<!-- Start User Details Checkout Form -->
	</div>
</body>
</html>