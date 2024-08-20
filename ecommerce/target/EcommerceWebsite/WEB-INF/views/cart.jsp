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
<body>
	<div class="offcanvas-overlay"></div>

	<!-- ...:::: Start Breadcrumb Section:::... -->
	<div class="breadcrumb-section breadcrumb-bg-color--golden">
		<div class="breadcrumb-wrapper">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<h3 class="breadcrumb-title">Cart</h3>
						<div
							class="breadcrumb-nav breadcrumb-nav-color--black breadcrumb-nav-hover-color--golden">
							<nav aria-label="breadcrumb">
								<ul>
									<li><a href="home">Home</a></li>
									<li><a href='plp?productType=all'>Shop</a></li>
									<li class="active" aria-current="page">Cart</li>
								</ul>
							</nav>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- ...:::: End Breadcrumb Section:::... -->

	<!-- ...:::: Start Cart Section:::... -->
	<div class="cart-section">
		<!-- Start Cart Table -->
		<div class="cart-table-wrapper" data-aos="fade-up" data-aos-delay="0">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<div class="table_desc">
							<div class="table_page table-responsive">
								<table>
									<!-- Start Cart Table Head -->
									<thead>
										<tr>
											<th class="product_remove">Delete</th>
											<th class="product_thumb">Image</th>
											<th class="product_name">Product</th>
											<th class="product-price">Price</th>
											<th class="product_quantity">Quantity</th>
											<th class="product_total">Total</th>
											<th class="product_total">Action</th>
										</tr>
									</thead>
									<!-- End Cart Table Head -->
									<tbody>

										<c:forEach items="${cartProducts }" var="Products">

											<!-- Start Cart Single Item-->
											<tr>
												<td class="product_remove"><a
													href='deleteCartSingle?id=${Products.id }'><i
														class="fa fa-trash-o"></i></a></td>
												<td class="product_thumb"><a
													href="product-details-default.html"><img
														src='${Products.image }' alt=""></a></td>
												<td class="product_name"><a
													href="product-details-default.html">${Products.product }</a></td>
												<td class="product-price">${Products.price }</td>
												<form action="changeFromCart">
												<td class="product_quantity"><input min="1" max="100"
													value="${Products.quantity }" type="number" name="quantity">
													<input type="hidden" value=${Products.id } name="id">
													<input type="hidden" value=${Products.image } name="image">
													<input type="hidden" value=${Products.price } name="price">
													<input type="hidden" value=${Products.product }
													name="product"> <input type="hidden"
													value="padmanav" name="user"></td>
												<td class="product_total">${Products.price*Products.quantity }</td>


												<td><button class="btn btn-md btn-golden" type="submit">update
													</button></td>
												</form>
											</tr>
											<!-- End Cart Single Item-->
										</c:forEach>
									</tbody>
								</table>
							</div>
							<div class="cart_submit"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- End Cart Table -->

		<!-- Start Coupon Start -->
		<div class="coupon_area">
			<div class="container">
				<div class="row">
					<div class="col-lg-6 col-md-6">
						<div class="coupon_code left" data-aos="fade-up"
							data-aos-delay="200">
							<h3>Coupon</h3>
							<div class="coupon_inner">
								<p>Enter your coupon code if you have one.</p>
								<input class="mb-2" placeholder="Coupon code" type="text">
								<button type="submit" class="btn btn-md btn-golden">Apply
									coupon</button>
							</div>
						</div>
					</div>
					<div class="col-lg-6 col-md-6">
						<div class="coupon_code right" data-aos="fade-up"
							data-aos-delay="400">
							<h3>Cart Totals</h3>
							<div class="coupon_inner">
								<div class="cart_subtotal">
									<p>Subtotal</p>
									<p class="cart_amount"></p>
								</div>
								<div class="cart_subtotal ">
									<p>Shipping</p>
									<p class="cart_amount">
										<span>Flat Rate:</span>${total }
									</p>
								</div>
								<a href="#">Calculate shipping</a>

								<div class="cart_subtotal">
									<p>Total</p>
									<p class="cart_amount">${total+40 }</p>
								</div>
								<div class="checkout_btn">
									<form action="checkoutFromCart">
									<input type="hidden" name="username" value="padmanav">
										<button type="submit">Proceed to Checkout</button>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- End Coupon Start -->
	</div>
</body>
</html>