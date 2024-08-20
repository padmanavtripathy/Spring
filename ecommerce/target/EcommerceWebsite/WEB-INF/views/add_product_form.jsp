<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@ include file="./base.jsp"%>
</head>
<body>
	<!-- Section: Design Block -->
	<section class="text-center">
		<!-- Background image -->
		<div class="p-5 bg-image"
			style="background-image: url('https://mdbootstrap.com/img/new/textures/full/171.jpg'); height: 300px;"></div>
		<!-- Background image -->

		<div class="card mx-4 mx-md-5 shadow-5-strong"
			style="margin-top: -100px; background: hsla(0, 0%, 100%, 0.8); backdrop-filter: blur(30px);">
			<div class="card-body py-5 px-md-5">

				<div class="row d-flex justify-content-center">
					<div class="col-lg-8">
						<h2 class="fw-bold mb-5">Add Product</h2>
						<form action="handle-form" meyhod="POST">
							<!-- 2 column grid layout with text inputs for the first and last names -->
							<div class="row">
								<div class="col-md-6 mb-4">
									<div class="form-outline">
										<input type="text" id="form3Example1" class="form-control" name="name"/>
										<label class="form-label" for="form3Example1">Product
											Name<sup style="color:red;">*</sup></label>
									</div>
								</div>
								<div class="col-md-6 mb-4">
									<div class="form-outline">
										<input type="text" id="form3Example2" class="form-control" name="price"/>
										<label class="form-label" for="form3Example2">Price<sup style="color:red;">*</sup></label>
									</div>
								</div>
							</div>

							<div class="form-group">
								<label for="exampleFormControlTextarea1">Description
									</label>
								<textarea class="form-control" id="exampleFormControlTextarea1"
									rows="3" name="description" >${product.description }</textarea>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox" name="type"
									id="inlineCheckbox1" value="mobile"> <label
									class="form-check-label" for="inlineCheckbox1">Mobile</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox" name="type"
									id="inlineCheckbox2" value="laptop"> <label
									class="form-check-label" for="inlineCheckbox2">Laptop</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox" name="type"
									id="inlineCheckbox3" value="gadget"> <label
									class="form-check-label" for="inlineCheckbox3">Gadget</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox" name="type"
									id="inlineCheckbox3" value="tv"> <label
									class="form-check-label" for="inlineCheckbox3">Tv</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox" name="type"
									id="inlineCheckbox3" value="refrigerator"> <label
									class="form-check-label" for="inlineCheckbox3">Refrigerator</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox" name="type"
									id="inlineCheckbox3" value="ac"> <label
									class="form-check-label" for="inlineCheckbox3">AC</label>
							</div>
							<!-- Password input -->
							<div class="form-outline mb-4">
								<input type="text" id="form3Example4" class="form-control" name="sid"/> <label
									class="form-label" for="form3Example4">Seller id<sup style="color:red;">*</sup></label>
							</div>
							<div class="form-outline mb-4">
								<input type="text" id="form3Example4" class="form-control" name="image1"/> <label
									class="form-label" for="form3Example4">First image link<sup style="color:red;">*</sup></label>
							</div>
							<div class="form-outline mb-4">
								<input type="text" id="form3Example4" class="form-control" name="image2"/> <label
									class="form-label" for="form3Example4">Second image
									link</label>
							</div>
							<div class="form-outline mb-4">
								<input type="text" id="form3Example4" class="form-control" name="image3"/> <label
									class="form-label" for="form3Example4">Third image link</label>
							</div>


							<!-- Submit button --><a href="${pageContext.request.contextPath }/view-product"><button type="button" class="btn btn-primary btn-block mb-4">
								Back</button></a>

							<button type="submit" class="btn btn-primary btn-block mb-4">
								Add Product</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Section: Design Block -->
</body>
</html>