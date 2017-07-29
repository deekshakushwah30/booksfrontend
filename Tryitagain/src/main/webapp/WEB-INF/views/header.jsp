<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width,initial-scale=1" >
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">


<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<!-- Angular Js -->
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js"></script>

<!-- JQuery -->
<script src="http://code.jquery.com/jquery-2.2.1.min.js"></script>


<link href="https://cdn.datatables.net/1.10.10/css/jquery.dataTables.min.css">

<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.15/css/dataTables.bootstrap.min.css"/>

<script type="text/javascript" src="https://cdn.datatables.net/1.10.15/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/1.10.15/js/dataTables.bootstrap.min.js"></script>


<title>Homepage</title>
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#collapse-exaple" aria-expanded="false">
  <span class="sr-only">Toggle navigation</span>
  <span class="icon-bar"></span>
  <span class="icon-bar"></span>
  <span class="icon-bar"></span>
  <span class="icon-bar"></span>
  <span class="icon-bar"></span>
  </button>
    <div class="navbar-header">
    
    <c:url value="images/logo.png" var="url5"></c:url>
    
    
      <a class="navbar-brand" href="login"><img src="${url5 }" alt="book" height="60px" width="60px">BOOKS LIBRARY</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="home"><span class="glyphicon glyphicon-home"></span>Home</a></li>
     <li><a href="aboutus"><span class="glyphicon glyphicon-education"></span>about us</a></li>
      <li class="dropdown">
       <a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-call"></span>contact
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="mailto:deekshakushwah@gmail.com">email</a></li>
          <li><c:url value="/call" var="url3"></c:url><a href="${url2 }">Phone</a></li>
        </ul>
      </li>
      <li>
      
      <c:url value="/getproductform" var="url3"></c:url><li><a href="${url3 }"><span class="glyphicon glyphicon-plus"></span>Add Product</a></li>
			<c:url value="/getallproducts" var="url4"></c:url><li><a href="${url4 }"><span class="glyphicon glyphicon-browse"></span>Browse All Products</a></li>
     <li class="dropdown">
     <a href="" class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-search"></span>
        select by category<b class="caret"></b> </a>
  <ul class="dropdown-menu">
  <li><c:forEach items="${categories }" var="c">
  <c:url value="/searchbycategory?searchCondition=${c.categoryName }" var="url"></</c:url>
  <a href="${url }">${c.categoryName }</a>
  </c:forEach>
  <c:url value="/searchbycategory?searchCondition=All" var="url1">
  </c:url><a href="${url1 }">All</a></li></ul></li>
  <ul class="nav navbar-nav navbar-right">
      <li><c:url value="/registrationform" var="url5"></c:url><a href="${url5 }"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="signin"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>
  </ul>
 
  
 
     
    
  </div>
  </div>
</nav>
 
</body>
</html>