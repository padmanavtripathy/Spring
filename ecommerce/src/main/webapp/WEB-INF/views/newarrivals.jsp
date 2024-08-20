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
	<div
		class="product-default-slider-section section-top-gap-100 section-fluid">
		<!-- Start Section Content Text Area -->
		<div class="section-title-wrapper" data-aos="fade-up"
			data-aos-delay="0">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<div class="section-content-gap">
							<div class="secton-content">
								<h3 class="section-title">the New arrivals</h3>
								<p>Preorder now to receive exclusive deals & gifts</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Start Section Content Text Area -->
		<div class="product-wrapper" data-aos="fade-up" data-aos-delay="200">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<div class="product-slider-default-2rows default-slider-nav-arrow">
							<!-- Slider main container -->
							<div class="swiper-container product-default-slider-4grid-2row">
								<!-- Additional required wrapper -->
								<div class="swiper-wrapper">
									<%
									int i = 0;
									%>
									<c:forEach items="${products }" var="product">
										<!-- Start Product Default Single Item -->
										<%
										if (i % 2 == 0) {
										%>
										<div
											class="product-default-single-item product-color--pink swiper-slide">
											<div class="image-box"
												style="height: 290px; background-color: white">
												<a href='description?id=${product.id }' class="image-link">
													<img src="${product.image1 }" alt=""> <img
													src="${product.image2 }" alt="">
												</a>
												<div class="tag">
													<span>sale</span>
												</div>
												<div class="action-link">
													<div class="action-link-left">
														<form action="addToCart">
															<input type="hidden" value=${product.id } name="id">
															<input type="hidden" value=${product.image1 }
																name="image"> <input type="hidden"
																value=${product.price } name="price"> <input
																type="hidden" value=${product.name } name="product">
															<input type="hidden" value="1" name="quantity"> <input
																type="hidden" name="userid" value=${username }>
															<button type="submit"
																style="color: white; display: flex; justify-content: center;">Add
																to Cart</button>
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
