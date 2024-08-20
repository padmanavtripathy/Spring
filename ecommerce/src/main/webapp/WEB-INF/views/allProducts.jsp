<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@ include file="./base.jsp"%>
<title>Insert title here</title>
<style type="text/css">
	img{
	height: 80px;
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
                        <h3 class="breadcrumb-title">Contact Us</h3>
                        <div class="breadcrumb-nav breadcrumb-nav-color--black breadcrumb-nav-hover-color--golden">
                            <nav aria-label="breadcrumb">
                                <ul>
                                    <li><a href="home">Home</a></li>
                                    <li class="active" aria-current="page">All Products</li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div> 
	<div class="text-center">
		<h1>Products</h1>
	</div>
	<table class="table table-striped table-dark">
		<thead>
			<tr>
				<th scope="col">Product Id</th>
				<th scope="col">Image</th>
				<th scope="col">Product Name</th>
				<th scope="col">Product Description</th>
				<th scope="col">Product Type</th>
				<th scope="col">Price</th>
				<th scope="col">Action</th>

			</tr>
		</thead>
		<tbody>
			<c:forEach items="${products }" var="product">
				<tr>
					<th scope="row">${product.id }</th>
					<td class="image"><img src="${product.image1 }" alt="image"></td>
					<td>${product.name }</td>
					<td>${product.description }</td>
					<td>${product.type }</td>
					<td>${product.price }</td>
					<td><a href="delete/${product.id }"><button type="button" class="btn btn-danger">Delete</button></a>
					<a href="update/${product.id }"><button type="button" class="btn btn-info">Update</button></a></td>					
				</tr>
			</c:forEach>


		</tbody>
	</table>
	<div class="text-center">
		<a href="add-product"><button type="button"
				class="btn btn-outline-success">Add Product</button></a>
	</div>

</body>
</html>