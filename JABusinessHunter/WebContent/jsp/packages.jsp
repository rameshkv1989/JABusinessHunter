<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<div>
									<!-- <img title="J & A Business Hunter Seller Ads Subscription"
										src="images/sellabusiness.png"
										alt="J & A Business Hunter Seller Ads Subscription" />
									<div class="cat-img-title cat-bg cat-box"></div> -->
									<c:choose>
										<c:when test="${not empty packageList}">
											<table border=""
												style="font-family: 'Bitter', serif; border-collapse: collapse; background: #0066cc !important; text-align: center">
												<tr style="font-size: 20px">
													<th width="150px" height="40px"></th>
													<th width="301px" height="40px">Standard Posting</th>
													<th width="301px" height="40px">Featured Posting</th>
												</tr>
											</table>
											<table border=""
												style="text-align: center; font-family: 'Bitter', serif; border-collapse: collapse; background: #e1e1e1 !important; color: black">
												<tr style="font-size: 15px">
													<th width="150px" height="40px"></th>
													<th width="150px" height="40px">Total (RM)</th>
													<th width="150px" height="40px">Cost/day (RM)</th>
													<th width="150px" height="40px">Total (RM)</th>
													<th width="150px" height="40px">Cost/day (RM)</th>
												</tr>
												<c:forEach items="${packageList}" var="packageList">
													<tr>
														<td width="150px" height="40px">${packageList.duration}</td>
														<td width="150px" height="40px">${packageList.standardTotalCost}</td>
														<td width="150px" height="40px">${packageList.standardCostofDay}</td>
														<td width="150px" height="40px">${packageList.featuredTotalCost}</td>
														<td width="150px" height="40px">${packageList.featuredCostofDay}</td>
													</tr>
												</c:forEach>
											</table>
										</c:when>
										<c:otherwise>
											<b>No Packages Available</b>
										</c:otherwise>

									</c:choose>

								</div>