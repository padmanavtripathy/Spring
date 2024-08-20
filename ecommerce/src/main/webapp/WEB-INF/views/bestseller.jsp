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
	<!-- Start Product Default Slider Section -->
	<div
		class="product-default-slider-section section-fluid section-inner-bg">
		<!-- Start Section Content Text Area -->
		<div class="section-title-wrapper" data-aos="fade-up"
			data-aos-delay="0">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<div class="section-content-gap">
							<div class="secton-content">
								<h3 class="section-title">BEST SELLERS</h3>
								<p>Add our best sellers to your weekly lineup.</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Start Section Content Text Area -->
		<div class="product-wrapper" data-aos="fade-up" data-aos-delay="0">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<div class="product-slider-default-1row default-slider-nav-arrow">
							<!-- Slider main container -->
							<div class="swiper-container product-default-slider-4grid-1row">
								<!-- Additional required wrapper -->
								<div class="swiper-wrapper">
									<!-- End Product Default Single Item -->
									<%
									int i = 1;
									%>
									<c:forEach items="${products }" var="product">

										<%
										if (i % 4 == 0) {
										%>
										<!-- Start Product Default Single Item -->
										<div
											class="product-default-single-item product-color--pink swiper-slide">
											<div class="image-box"
												style="height: 290px; background-color: white">
												<a href='description?id=${product.id }' class="image-link">
													<img src="${product.image1 }" alt=""> <img
													src="${product.image2 }" alt="">
												</a>
												<div class="action-link">
													<div class="action-link-left">
														<form action="addToCart">
															<input type="hidden" value=${product.id } name="id">
															<input type="hidden" value=${product.image1 }
																name="image"> <input type="hidden"
																value=${product.price } name="price"> <input
																type="hidden" value=${product.name } name="product">
															<input type="hidden" value="1" name="quantity"> <input
																type="hidden" value="padmanav" name="userid">
															<button type="submit" style="color: white; display: flex; justify-content: center;">Add to Cart</button>
														</form>
													</div>
												</div>
											</div>
											<div class="content">
												<div class="content-left">
													<h6 class="title">
														<a href='description?id=${product.id }'>${product.name }
														</a>
													</h6>
													<ul class="review-star">
														<li class="fill"><i class="ion-android-star"></i></li>
														<li class="fill"><i class="ion-android-star"></i></li>
														<li class="fill"><i class="ion-android-star"></i></li>
														<li class="fill"><i class="ion-android-star"></i></li>
														<li class="empty"><i class="ion-android-star"></i></li>
													</ul>
												</div>
												<div class="content-right">
													<span class="price">${product.price }</span>
												</div>

											</div>
										</div>
										<!-- End Product Default Single Item -->
										<%
										}
										i++;
										%>
									</c:forEach>
								</div>
							</div>
							<!-- If we need navigation buttons -->
							<div class="swiper-button-prev"></div>
							<div class="swiper-button-next"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End Product Default Slider Section -->
	<%@ include file="./base.jsp"%>
</body>
</html>