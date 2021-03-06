<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<nav class="navbar navbar-inverse navbar-static-top">
	<div class="container">
		<div class="navbar-header">
			<a href="<spring:url value="/"/>" class="navbar-brand">Kevin's
				Auto Service Center</a>
		</div>
		<ul class="nav navbar-nav">
			<li><a href="<spring:url value="/services/"/>">Services</a></li>
			<li><a href="<spring:url value="/appointments/"/>">Appointments</a></li>
			<sec:authorize access="authenticated" var="authenticated">
				<c:choose>
					<c:when test="${authenticated}">
						<li>
						<p class="navbar-text">
							<sec:authentication property="name" />
							<a href="<c:url value="/logout"/>">Logout</a>
						</p>
						</li>
					</c:when>
				<c:otherwise>
					<li><a href="<spring:url value="/login/"/>">Sign In</a></li>
				</c:otherwise>
		  	 </c:choose>
		    </sec:authorize>
		</ul>
	</div>
</nav>