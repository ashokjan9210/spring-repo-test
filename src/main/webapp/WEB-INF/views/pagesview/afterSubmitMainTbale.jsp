<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>FMR</title>
</head>
<body>

	<%-- <form:form action="${pageContext.request.contextPath}/public/fmr-print-application" id="ApplicationGenerateId1" method="get" class="success_form">
			
			<div id="dounloadId">
					<font>Your registration has been completed successfully. Your registration No. is:</font>
					<font color="red"><c:out value="${fileno}" /></font>		
					<font>.<br/>
					Please take the print out of PDF file. <a onclick="return callReport('${fileno}')" class="nav-link">
					Click Here To Print Registration Form '${fileno}'</a>
					</font>
			</div>					
					<div id="dounloadSuccessId" style="display: none;">Your Application Successfully Download.</div>
			
			
</form:form> 
				
				<form:form action="generateReportFinal" id="ApplicationGenerateId" method="get" class="success_form">
				
				<input type="hidden" id="fileno" name="fileno"	value="<c:out value="${fileno}"/>" />

				</form:form> --%>	



<div id="dounloadId">
					<font>Your registration has been completed successfully. Your registration No. is:</font>
					<font color="red"><c:out value="${fileno}" /></font>		
					<font>.<br/>
					Please take the print out of PDF file. <a onclick="return callReport('${fileno}')" class="nav-link">
					Click Here To Print Registration Form '${fileno}'</a>
					</font>
			</div>					
				
</body>


<script type="text/javascript">
	function callReport(fileno) {		
		alert(fileno);
		$("#fileno").val(fileno);
		$("#ApplicationGenerateId").submit();
		$("#dounloadId").hide();
		$("#dounloadSuccessId").show(1000);
	}
</script>
</html>