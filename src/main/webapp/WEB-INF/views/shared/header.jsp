
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<html>
<head>
<!-- <meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1"> -->


<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style2.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/datepicker.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/fontawesome-all.css" media="all">

<script src="${pageContext.request.contextPath}/resources/js/jquery3.4.1.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.mask.min.js"></script>
  
<script src="${pageContext.request.contextPath}/resources/js/popper.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/datepicker.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/download64.js"></script>


  
<style>
.error {
	color: #ff0000;
	
}
.errorck {
	color: #000;
	background-color: #ffEEEE;
	border: 3px solid #ff0000;
	padding: 8px;
	margin: 16px;
}
</style>

</head>
<body>

<div class="wrapper">
  <!-------------------header-------------------->
  <div class="container">
    <header>
      <div class="row">
        <div class="col-sm-6">
          <h3><span>FORM</span><br/>
            FORM</h3>
          </div>
        <div class="col-sm-6 text-right">
        	<!--<img src="images/logo.png" height="80"/>-->
          <h2>FORM <span></span></h2>
        </div>
      </div>
      
      <div class="row">
        <%-- <div class="col-sm-4">
        <a href="${pageContext.request.contextPath}/admin/fmr-login" class="nav-link">Login</a>
        </div> --%>
        
        <div class="col-sm-4">
        <a href="${pageContext.request.contextPath}/public/fmr-frm/home" class="nav-link">Home</a>  
        </div>
        
        <%-- <div class="col-sm-4">
        <a href="${pageContext.request.contextPath}/public/fmr-partially-fillform" class="nav-link">Revisit form</a>  
        </div> --%>
        </div>
      
    </header>
  </div>
  </div>
  
  
	<script type="text/javascript">


	</script>
</body>
</html>