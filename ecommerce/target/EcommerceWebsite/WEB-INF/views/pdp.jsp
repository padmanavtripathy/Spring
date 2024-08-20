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
	background-color: blue;
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
											<li class="active" aria-current="page">${name}</li>
										</ul>
									</nav>
								</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- ...:::: End Breadcrumb Section:::... -->

	<!-- Start Product Details Section -->
	<div class="product-details-section">
		<div class="container">
			<div class="row">
				<div class="col-xl-5 col-lg-6">
					<div class="product-details-gallery-area" data-aos="fade-up"
						data-aos-delay="0">
						<!-- Start Large Image -->
						<div
							class="product-large-image product-large-image-horaizontal swiper-container">
							<div class="swiper-wrapper">
								<div
									class="product-image-large-image swiper-slide zoom-image-hover img-responsive">
									<img src="${product.image1 }" alt="">
								</div>
								<div
									class="product-image-large-image swiper-slide zoom-image-hover img-responsive">
									<img src="${product.image2 }" alt="">
								</div>
								<div
									class="product-image-large-image swiper-slide zoom-image-hover img-responsive">
									<img src="${product.image3 }" alt="">
								</div>
							</div>
						</div>
						<!-- End Large Image -->
						<!-- Start Thumbnail Image -->
						<div
							class="product-image-thumb product-image-thumb-horizontal swiper-container pos-relative mt-5">
							<div class="swiper-wrapper">
								<div class="product-image-thumb-single swiper-slide">
									<img class="img-fluid" src="${product.image1 }" alt="">
								</div>
								<div class="product-image-thumb-single swiper-slide">
									<img class="img-fluid" src="${product.image2 }" alt="">
								</div>
								<div class="product-image-thumb-single swiper-slide">
									<img class="img-fluid" src="${product.image3 }" alt="">
								</div>
							</div>
							<!-- Add Arrows -->
							<div class="gallery-thumb-arrow swiper-button-next"></div>
							<div class="gallery-thumb-arrow swiper-button-prev"></div>
						</div>
						<!-- End Thumbnail Image -->
					</div>
				</div>
				<div class="col-xl-7 col-lg-6">
					<div class="product-details-content-area product-details--golden"
						data-aos="fade-up" data-aos-delay="200">
						<!-- Start  Product Details Text Area-->
						<div class="product-details-text">
							<h4 class="title">${product.name }</h4>
							<div class="d-flex align-items-center">
								<ul class="review-star">
									<li class="fill"><i class="ion-android-star"></i></li>
									<li class="fill"><i class="ion-android-star"></i></li>
									<li class="fill"><i class="ion-android-star"></i></li>
									<li class="fill"><i class="ion-android-star"></i></li>
									<li class="empty"><i class="ion-android-star"></i></li>
								</ul>
								<a href="#" class="customer-review ml-2">(customer review )</a>
							</div>
							<div class="price"></div>
							<p>${product.price }</p>
						</div>
						<!-- End  Product Details Text Area-->
						<!-- Start Product Variable Area -->
						<div class="product-details-variable">
							<h4 class="title">Available Options</h4>
							<!-- Product Variable Single Item -->
							<div class="variable-single-item">
								<div class="product-stock">
									<span class="product-stock-in"><i
										class="ion-checkmark-circled"></i></span> 200 IN STOCK
								</div>
							</div>
							<form action="addToCart">
									<input type="hidden" value=${product.id } name="id">
									<input type="hidden" value=${product.image1 } name="image">
									<input type="hidden" value=${product.price } name="price">
									<input type="hidden" value=${product.name } name="product">
									<input type="hidden"  name="userid" value="padmanav">
							<!-- Product Variable Single Item -->
							<div class="d-flex align-items-center ">
								<div class="variable-single-item ">
									<span>Quantity</span>
									<div class="product-variable-quantity">
										<input min="1" max="100" value="1" type="number" name="quantity">
									</div>
								</div>
								
									<div class="product-add-to-cart-btn">
									<button type="submit" class="btn btn-block btn-lg btn-black-default-hover">+
											Add To Cart</button>
									</div>
								</form>
							</div>
							<!-- Start  Product Details Meta Area-->
						</div>
						<!-- End Product Variable Area -->

						<!-- Start  Product Details Catagories Area-->
						<div class="product-details-catagory mb-2">
							<span class="title">CATEGORIES:</span>
							<ul>
								<li><a href='plp?productType=mobile'>Mobile</a></li>
								<li><a href='plp?productType=laptop'>Laptop</a></li>
								<li><a href='plp?productType=gadget'>Gadgets</a></li>
							</ul>
						</div>
						<!-- End  Product Details Catagories Area-->
						<!-- Start  Product Details Social Area-->
						<div class="product-details-social">
							<span class="title">SHARE THIS PRODUCT:</span>
							<ul>
								<li><a href="#"><i class="fa fa-facebook"></i></a></li>
								<li><a href="#"><i class="fa fa-twitter"></i></a></li>
								<li><a href="#"><i class="fa fa-pinterest"></i></a></li>
								<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
								<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
							</ul>
						</div>
						<!-- End  Product Details Social Area-->
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End Product Details Section -->

	<!-- Start Product Content Tab Section -->
	<div class="product-details-content-tab-section section-top-gap-100">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="product-details-content-tab-wrapper" data-aos="fade-up"
						data-aos-delay="0">

						<!-- Start Product Details Tab Button -->
						<ul
							class="nav tablist product-details-content-tab-btn d-flex justify-content-center">
							<li><a class="nav-link active" data-bs-toggle="tab"
								href="#description"> Description </a></li>
							<li><a class="nav-link" data-bs-toggle="tab"
								href="#specification"> Specification </a></li>
							<li><a class="nav-link" data-bs-toggle="tab" href="#review">
									Reviews (1) </a></li>
						</ul>
						<!-- End Product Details Tab Button -->

						<!-- Start Product Details Tab Content -->
						<div class="product-details-content-tab">
							<div class="tab-content">
								<!-- Start Product Details Tab Content Singel -->
								<div class="tab-pane active show" id="description">
									<div class="single-tab-content-item">
										<p>${product.description }</p>
									</div>
								</div>
								<!-- End Product Details Tab Content Singel -->
								<!-- Start Product Details Tab Content Singel -->
								<div class="tab-pane" id="specification">
									<div class="single-tab-content-item">
										<table class="table table-bordered mb-20">
											<tbody>
												<tr>
													<th scope="row">Compositions</th>
													<td>Polyester</td>
												</tr>
												<tr>
													<th scope="row">Styles</th>
													<td>Girly</td>
												<tr>
													<th scope="row">Properties</th>
													<td>Short Dress</td>
												</tr>
											</tbody>
										</table>
										<p>${product.description }</p>
									</div>
								</div>
								<!-- End Product Details Tab Content Singel -->
								<!-- Start Product Details Tab Content Singel -->
								<div class="tab-pane" id="review">
									<div class="single-tab-content-item">
										<!-- Start - Review Comment -->
										<ul class="comment">
											<!-- Start - Review Comment list-->
											<li class="comment-list">
												<div class="comment-wrapper">
													<div class="comment-img">
														<img src="assets/images/user/image-1.png" alt="">
													</div>
													<div class="comment-content">
														<div class="comment-content-top">
															<div class="comment-content-left">
																<h6 class="comment-name">Kaedyn Fraser</h6>
																<ul class="review-star">
																	<li class="fill"><i class="ion-android-star"></i>
																	</li>
																	<li class="fill"><i class="ion-android-star"></i>
																	</li>
																	<li class="fill"><i class="ion-android-star"></i>
																	</li>
																	<li class="fill"><i class="ion-android-star"></i>
																	</li>
																	<li class="empty"><i class="ion-android-star"></i>
																	</li>
																</ul>
															</div>
															<div class="comment-content-right">
																<a href="#"><i class="fa fa-reply"></i>Reply</a>
															</div>
														</div>

														<div class="para-content">
															<p>Lorem ipsum dolor sit amet, consectetur
																adipisicing elit. Tempora inventore dolorem a unde modi
																iste odio amet, fugit fuga aliquam, voluptatem maiores
																animi dolor nulla magnam ea! Dignissimos aspernatur
																cumque nam quod sint provident modi alias culpa,
																inventore deserunt accusantium amet earum soluta
																consequatur quasi eum eius laboriosam, maiores
																praesentium explicabo enim dolores quaerat! Voluptas ad
																ullam quia odio sint sunt. Ipsam officia, saepe
																repellat.</p>
														</div>
													</div>
												</div> <!-- Start - Review Comment Reply-->
												<ul class="comment-reply">
													<li class="comment-reply-list">
														<div class="comment-wrapper">
															<div class="comment-img">
																<img src="assets/images/user/image-2.png" alt="">
															</div>
															<div class="comment-content">
																<div class="comment-content-top">
																	<div class="comment-content-left">
																		<h6 class="comment-name">Oaklee Odom</h6>
																	</div>
																	<div class="comment-content-right">
																		<a href="#"><i class="fa fa-reply"></i>Reply</a>
																	</div>
																</div>

																<div class="para-content">
																	<p>Lorem ipsum dolor sit amet, consectetur
																		adipisicing elit. Tempora inventore dolorem a unde
																		modi iste odio amet, fugit fuga aliquam, voluptatem
																		maiores animi dolor nulla magnam ea! Dignissimos
																		aspernatur cumque nam quod sint provident modi alias
																		culpa, inventore deserunt accusantium amet earum
																		soluta consequatur quasi eum eius laboriosam, maiores
																		praesentium explicabo enim dolores quaerat! Voluptas
																		ad ullam quia odio sint sunt. Ipsam officia, saepe
																		repellat.</p>
																</div>
															</div>
														</div>
													</li>
												</ul> <!-- End - Review Comment Reply-->
											</li>
											<!-- End - Review Comment list-->
											<!-- Start - Review Comment list-->
											<li class="comment-list">
												<div class="comment-wrapper">
													<div class="comment-img">
														<img src="assets/images/user/image-3.png" alt="">
													</div>
													<div class="comment-content">
														<div class="comment-content-top">
															<div class="comment-content-left">
																<h6 class="comment-name">Jaydin Jones</h6>
																<ul class="review-star">
																	<li class="fill"><i class="ion-android-star"></i>
																	</li>
																	<li class="fill"><i class="ion-android-star"></i>
																	</li>
																	<li class="fill"><i class="ion-android-star"></i>
																	</li>
																	<li class="fill"><i class="ion-android-star"></i>
																	</li>
																	<li class="empty"><i class="ion-android-star"></i>
																	</li>
																</ul>
															</div>
															<div class="comment-content-right">
																<a href="#"><i class="fa fa-reply"></i>Reply</a>
															</div>
														</div>

														<div class="para-content">
															<p>Lorem ipsum dolor sit amet, consectetur
																adipisicing elit. Tempora inventore dolorem a unde modi
																iste odio amet, fugit fuga aliquam, voluptatem maiores
																animi dolor nulla magnam ea! Dignissimos aspernatur
																cumque nam quod sint provident modi alias culpa,
																inventore deserunt accusantium amet earum soluta
																consequatur quasi eum eius laboriosam, maiores
																praesentium explicabo enim dolores quaerat! Voluptas ad
																ullam quia odio sint sunt. Ipsam officia, saepe
																repellat.</p>
														</div>
													</div>
												</div>
											</li>
											<!-- End - Review Comment list-->
										</ul>
										<!-- End - Review Comment -->
										<div class="review-form">
											<div class="review-form-text-top">
												<h5>ADD A REVIEW</h5>
												<p>Your email address will not be published. Required
													fields are marked *</p>
											</div>

											<form action="#" method="post">
												<div class="row">
													<div class="col-md-6">
														<div class="default-form-box">
															<label for="comment-name">Your name <span>*</span></label>
															<input id="comment-name" type="text"
																placeholder="Enter your name" required>
														</div>
													</div>
													<div class="col-md-6">
														<div class="default-form-box">
															<label for="comment-email">Your Email <span>*</span></label>
															<input id="comment-email" type="email"
																placeholder="Enter your email" required>
														</div>
													</div>
													<div class="col-12">
														<div class="default-form-box">
															<label for="comment-review-text">Your review <span>*</span></label>
															<textarea id="comment-review-text"
																placeholder="Write a review" required></textarea>
														</div>
													</div>
													<div class="col-12">
														<button class="btn btn-md btn-black-default-hover"
															type="submit">Submit</button>
													</div>
												</div>
											</form>
										</div>
									</div>
								</div>
								<!-- End Product Details Tab Content Singel -->
							</div>
						</div>
						<!-- End Product Details Tab Content -->

					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>