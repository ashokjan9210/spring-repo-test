
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>

</head>
<body bgcolor="#FFF3E8">
  
	<div id="sidebar">
		<ul class="sidebar-menu">
			<c:forEach items="${menulist}" var="menu">
                 <form:form action="${pageContext.request.contextPath}${menu.actionPath}" method="POST">
                     <li> <input type="submit" value="${menu.menuDescription}" class="btn btn-link" ></input></li>
                 </form:form>
			</c:forEach>
		</ul>
	</div>

</body>

<script type="text/javascript">



</script>
</html>