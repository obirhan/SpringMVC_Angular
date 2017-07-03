<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true"%>
<html data-ng-app="FormApp">
<head>
	<title>Webforms demo - AngularJS</title>
	<script src="//ajax.googleapis.com/ajax/libs/angularjs/1.2.12/angular.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/form.js"></script>
	<script type="text/javascript">
	    var csrfParameter = '${_csrf.parameterName}';
	    var csrfToken = '${_csrf.token}';
	</script>
</head>
<body data-ng-controller="Report">

	<h1>Title : ${title}</h1>
	<h1>Message : ${message}</h1>

	<h1>Please enter your personal information:</h1>
	<ul>
		<li data-ng-repeat="message in messages">{{message}}</li>
	</ul>
	<div>
		<label>First name:</label> <input data-ng-model="data.firstName" type="text">
	</div>
	<div>
		<label>Age:</label> <input data-ng-model="data.age" id="age" type="text">
	</div>
	<div>
		<input type="button" data-ng-click="submit()" value="Submit the form">
	</div>
	
	<input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" />
</body>
</html>
