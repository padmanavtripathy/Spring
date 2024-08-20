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
						<h3 class="breadcrumb-title">Cart</h3>
						<div
							class="breadcrumb-nav breadcrumb-nav-color--black breadcrumb-nav-hover-color--golden">
							<nav aria-label="breadcrumb">
								<ul>
									<li><a href="home">Home</a></li>
									<li><a href='plp?productType=all'>Shop</a></li>
									<li class="active" aria-current="page">Orders</li>
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
											<th class="product_remove">OrderId</th>
											<th class="product_thumb">Customer</th>
											<th class="product_name">ProductName</th>
											<th class="product_quantity">Quantity</th>
											<th class="product_total">Total</th>
											
										</tr>
									</thead>
									<!-- End Cart Table Head -->
									<tbody>

										<c:forEach items="${myOrders }" var="Products">

											<!-- Start Cart Single Item-->
											<tr>
												<td>${Products.oid }</td>
												<td class="product_thumb">${Products.user }</td>
												<td class="product_name"><a
													href="product-details-default.html">${Products.productName }</a></td>
												<td class="product_quantity">${Products.quantity }</td>
												<td class="product_total">${Products.total }</td>


		
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
</body>
</html>