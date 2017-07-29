<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
	<script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>

	<jsp:include page="header.jsp"></jsp:include>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" charset="ISO-8859-1">
<meta name="viewport" content="width=device-width,initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">

<!-- Latest compiled and minified JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<title>Insert title here</title>
</head>
<body>	

<div class="container">
	<div class="panel panel-primary"  style="height: 555px; width: 555px; margin:auto">
		<div class="panel-heading" style="text-align:center;font-size:25px">Product Form</div>
		<div class="panel-body" style="background:RED">

<form:form action="saveproduct" method="post" modelAttribute="product" enctype="multipart/form-data">
<div class="container">
			<div class="form-group">
				<form:hidden path="id" class="form-control" />
			</div>

<br>
			<div class="form-group">
				ENTER THE BOOK NAME:
				<form:input path="productName" class="form-control" />
				<form:errors path="productName" cssStyle="color:red;"></form:errors>
			</div>
			<br>
			<div class="form-group">
				ENTER THE PRICE:
				<form:input path="price" class="form-control" />
				<form:errors path="price" cssStyle="color:red;"></form:errors>
			</div>
			<br>
			<div class="form-group">
				ENTER THE QUANTITY:
				<form:input path="quantity" class="form-control" />
				<form:errors path="quantity" cssStyle="color:red;"></form:errors>
			</div>
			<br>
			<div class="form-group">
				ENTER THE DESCRIPTION:
				<form:textarea path="description" class="form-control" />
				<form:errors path="description" cssStyle="color:red;"></form:errors>
			</div>
			<br>
			<div class="form-group">
				SELECT CATEGORY
				<c:forEach items="${categories }" var="c">
					<form:radiobutton path="category.id" value=" ${c.id }" /> ${c.categoryName }
					
		</c:forEach>
			</div>
			<div class="form-group">
				UPLOAD AN IMAGE:
				<input type="file" name="image"/>
				
			</div>
			<div class="form-group">
				<input type="submit" value="add product">
			</div>
	</div>
	</form:form>
			
		
		</div>
		</div>
	
</div>
</body>
</html>

