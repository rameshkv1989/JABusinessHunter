<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript">
function redirectToSeller(){
	alert(document.getElementById('message').value);
	document.forms[0].submit();
}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>J & A Business Hunter</title>
</head>
<body onload="redirectToSeller();">
<form:form id="sellSubmitError" method="get" commandName="sellerModel" action="seller.do">
<input type="hidden" id="message" name="message" value="${sellerModel.message}"/>
</form:form>
</body>
</html>