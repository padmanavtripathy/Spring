<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	 <!-- ...:::: Start Breadcrumb Section:::... -->
     <div class="breadcrumb-section breadcrumb-bg-color--golden">
        <div class="breadcrumb-wrapper">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <h3 class="breadcrumb-title">Products</h3>
                        <div class="breadcrumb-nav breadcrumb-nav-color--black breadcrumb-nav-hover-color--golden">
                            <nav aria-label="breadcrumb">
                                <ul>
                                    <li><a href="home">Home</a></li>
                                    <li class="active" aria-current="page">${type}</li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- ...:::: End Breadcrumb Section:::... -->
	<div class="product-wrapper" data-aos="fade-up" data-aos-delay="200">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<div class="product-slider-default-2rows default-slider-nav-arrow">
							<!-- Slider main container -->
							<div class="swiper-container product-default-slider-4grid-2row">
								<!-- Additional required wrapper -->
								<div class="swiper-wrapper">
									<c:forEach items="${products }" var="product">
										<!-- Start Product Default Single Item -->
										<div
											class="product-default-single-item product-color--pink swiper-slide" >
											<div class="image-box" style="height: 290px;background-color: white">
												<a href='description?id=${product.id }' class="image-link">
													<img
													src="${product.image1 }"
													alt=""> <img
													src="${product.image2 }"
													alt="">
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
																type="hidden" name="userid" value=${username }>
															<button type="submit">Add to Cart</button>
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
</body>
</html>