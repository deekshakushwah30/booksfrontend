<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width,initial-scale=1" >
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

<title>Edit Form</title>
</head>
<body>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>

<jsp:include page="header.jsp"></jsp:include>
<c:url value="/editproduct" var="url"></c:url>
<form:form action="url" method="post" modelAttribute="productObj" enctype="multipart/form-data">
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
	
	</body>
</html>

