<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
	String uName = (String) request.getSession().getAttribute("uName");
%>
<c:set var="uName" scope="session" value="<%=uName%>" />
<div class="top-links">
	<div class="inner">
		<div class="toplinks">
			<div class="links">
				<div class="check">
					<a href="#" title="Learn"><span>Learn</span></a>
				</div>

				<div class="company">
					<div class="click-nav">
						<ul class="no-js">
							<li><a class="clicker" title="Company">Testimonials <span
									class="caret"></span></a>
								<ul class="link">
									<li><a title="Buyer" href="buyerTest.do">Buyer</a></li>
									<li><a title="Seller" href="sellerTest.do">Seller</a></li>
									<li><a title="Service Provider" href="serProvTest.do">Service
											Provider</a></li>
								</ul></li>
						</ul>
					</div>
				</div>
				<c:choose>
					<c:when test="${not empty uName}">
						<%--  --%>
						<div class="company">
							<div class="click-nav">
								<ul class="no-js">
									<li><a href="myaccount.do" class="clicker"><span
											class="caret">${uName}</span></a>
										<ul class="link">
											<li><a href="myaccount.do">Personal	Details</a></li>
											<li><a href="sellDetails.do">Sell Details</a></li>
											<li><a href="buyDetails.do">Buy Details</a></li>
											<li><a href="#">Payment History</a></li>
											<li><a href="#">Write Testimonials</a></li>
										</ul></li>
								</ul>

							</div>
						</div>
						<div class="login">
							<a href="logout.do"><span>Log Out</span></a>
						</div>
					</c:when>
					<c:otherwise>
						<div class="login">
							<a href="login.do"><span>Log In</span></a>
						</div>
					</c:otherwise>
				</c:choose>


			</div>
		</div>
	</div>
</div>
<div class="header">

	<div class="top-cart-contain">

		<p class="intro-btn">
			<a href="postad.html"><span>Post Your Ad </span></a>
		</p>
	</div>

	<div class="logo">
		<a href="home.do" title="J & A Business Hunter"><div>
				<img src="images/logo.png" alt="J & A Business Hunter Logo" />
			</div></a>
	</div>

</div>