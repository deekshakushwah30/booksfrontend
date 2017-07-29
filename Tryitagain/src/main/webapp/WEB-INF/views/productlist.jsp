<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<jsp:include page="header.jsp"></jsp:include>
    
    
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<meta name="viewport" content="width=device-width,initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">


<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<!-- Angular Js -->
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js"></script>

<!-- JQuery -->
<script src="http://code.jquery.com/jquery-2.2.1.min.js"></script>
<script src="https://cdn.datatables.net/1.10.10/js/jquery.dataTables.min.js"></script>

<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<script src="//netdna.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


<link href="https://cdn.datatables.net/1.10.10/css/jquery.dataTables.min.css">


<script>
	$(document).ready(function() {
		var searchCondition = '${searchCondition}';
		$('.table').DataTable({
			"lengthMenu" : [ [ 3, 5, 7, -1 ], [ 3, 5, 7, "All" ] ],
			"oSearch" : {
				"sSearch" : searchCondition
			}
		})
	});
</script>


<title>Insert title here</title>
</head>
<body>

<b>ALL PRODUCTS</b>
<div class "container">
<table class="table table-striped" border="50px" cell padding="30" cell spacing="30">
<thead>
<tr><th>images</th><th> booksname</th>
<th> price</th>
<th>action</th>
</tr>
</thead>
<tbody>
<c:forEach items="${products}" var="p">
<tr>
<td>${p.productName}</td>

<td>${p.price}</td>


<c:url value="/images/${p.id} .jpg" var="imgUrl"></c:url>
<c:url value="/viewproduct/${p.id} }" var="viewUrl"></c:url>
<c:url value="/deleteproduct/${p.id} }" var="deleteUrl"></c:url>
<c:url value="/geteditform/${p.id} }" var="editUrl"></c:url>




<td>
<img src="${imgUrl }" height="50" width="50"></td>
<td>
<a href="${viewUrl }"><span class="glyphicon glyphicon-info-sign"></span>
</a><td>
<a href="${deleteUrl }"><span class="glyphicon glyphicon-trash"></span>
</a></td>
<td>

<a href="${editUrl }"><span class="glyphicon glyphicon-pencil"></span>
</a></td>


</tr>
</c:forEach></tbody>
</table></div>


	
</body>
</html>