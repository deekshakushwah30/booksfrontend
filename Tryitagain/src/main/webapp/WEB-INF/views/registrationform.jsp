<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width,initial-scale=1" >
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<title>Insert title here</title>
</head>
<body>
<!-- include javascript, jQuery FIRST -->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>

<jsp:include page="header.jsp"></jsp:include>
<div class="container wrapper">
<div class="container">

<div class="panel panel-primary" style="height: 554px; width: 800px; margin:auto">

<div class="panel-heading" style="text-align:center; font-size:25px">Register Here</div>

<div class="panel-body" style="background:#e8f3f8">
<c:url value="/savecustomer" var="url">
</c:url>

<form:form action="${url}" modelAttribute="customer">

<div class="row">
<div class="col-lg-4">
<p class="text-primary" style="text-align:left ;font-size:25px">Personal Details</p>


<div class="form-group">
<form:label path="user.username">Enter User Name</form:label>
<p style="color:red">${duplicateUsername}</p>
<form:input path="user.username"/>
<form:errors path="user.username" cssStyle="color:red"></form:errors>
</div>

<div class="form-group">
<form:label path="user.password">Enter Password</form:label>
<form:input path="user.password"/>
<form:errors path="user.password" cssStyle="color:red"></form:errors>
</div>

<div class="form-group">
<form:label path="firstname">Enter First Name</form:label>
<form:input path="firstname"/>
<form:errors path="firstname" cssStyle="color:red"></form:errors>
</div>


<div class="form-group">
<form:label path="lastname">Enter Last Name</form:label>
<form:input path="lastname"/>
<form:errors path="lastname" cssStyle="color:red"></form:errors>
</div>

<div class="form-group">
<form:label path="email">Enter Email Id</form:label>
<form:input path="email"/>
<p style="color:red">${duplicateEmail}</p>
<form:errors path="email" cssStyle="color:red"></form:errors>
</div>

<div class="form-group">
<form:label path="phone">Enter Phone Number</form:label>
<form:input path="phone"/>
<form:errors path="phone" cssStyle="color:red"></form:errors>
</div>
</div>

<div class="col-lg-4">
<p class="text-primary" style="text-align:left ;font-size:25px">Billing Address</p>

<div class="form-group">
<form:label path="billingAddress.streetname">Enter Street Name</form:label>
<form:input path="billingAddress.streetname"/>
<form:errors path="billingAddress.streetname" cssStyle="color:red"></form:errors>
</div>

<div class="form-group">
<form:label path="billingAddress.apartmentnumber">Enter Apartment Number</form:label>
<form:input path="billingAddress.apartmentnumber"/>
<form:errors path="billingAddress.apartmentnumber" cssStyle="color:red"></form:errors>
</div>

<div class="form-group">
<form:label path="billingAddress.city">Enter City</form:label>
<form:input path="billingAddress.city"/>
<form:errors path="billingAddress.city" cssStyle="color:red"></form:errors>
</div>

<div class="form-group">
<form:label path="billingAddress.state">Enter State</form:label>
<form:input path="billingAddress.state"/>
<form:errors path="billingAddress.state" cssStyle="color:red"></form:errors>
</div>

<div class="form-group">
<form:label path="billingAddress.country">Enter Country</form:label>
<form:input path="billingAddress.country"/>
<form:errors path="billingAddress.country" cssStyle="color:red"></form:errors>
</div>

<div class="form-group">
<form:label path="billingAddress.zipcode">Enter Zipcode</form:label>
<form:input path="billingAddress.zipcode"/>
<form:errors path="billingAddress.zipcode" cssStyle="color:red"></form:errors>
</div>
</div>

<div class="col-lg-4">
<p class="text-primary" style="text-align:left ;font-size:25px">Shipping Address</p>


<div class="form-group">
<form:label path="shippingAddress.streetname">Enter Street Name</form:label>
<form:input path="shippingAddress.streetname"/>
<form:errors path="shippingAddress.streetname" cssStyle="color:red"></form:errors>
</div>

<div class="form-group">
<form:label path="shippingAddress.apartmentnumber">Enter Apartment Number</form:label>
<form:input path="shippingAddress.apartmentnumber"/>
<form:errors path="shippingAddress.apartmentnumber" cssStyle="color:red"></form:errors>
</div>

<div class="form-group">
<form:label path="shippingAddress.city">Enter City</form:label>
<form:input path="shippingAddress.city"/>
<form:errors path="shippingAddress.city" cssStyle="color:red"></form:errors>
</div>

<div class="form-group">
<form:label path="shippingAddress.state">Enter State</form:label>
<form:input path="shippingAddress.state"/>
<form:errors path="shippingAddress.state" cssStyle="color:red"></form:errors>
</div>

<div class="form-group">
<form:label path="shippingAddress.country">Enter Country</form:label>
<form:input path="shippingAddress.country"/>
<form:errors path="shippingAddress.country" cssStyle="color:red"></form:errors>
</div>

<div class="form-group">
<form:label path="shippingAddress.zipcode">Enter Zipcode</form:label>
<form:input path="shippingAddress.zipcode"/>
<form:errors path="shippingAddress.zipcode" cssStyle="color:red"></form:errors>
</div>
</div>
<input type="submit" class="btn btn-primary btn-block"  value="Register" >
</div>

</form:form>
</div>
</div>
</div>
</div>

</body>
</html>