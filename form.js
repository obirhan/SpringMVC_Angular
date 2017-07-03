var formApp = angular.module('FormApp', []);
formApp.controller('Report', ['$scope', '$window', '$http', 
		 function($scope, $window, $http) {
	$scope.messages = [];
	$scope.data = {};
	$http.defaults.headers.common['X-CSRF-TOKEN'] = csrfToken;
	$scope.submit = function() {
		$http({
			method: 'POST', url: './report.do',
		    data: $scope.data
		})
		.success(function(data, status, headers, config) {
                $window.location.replace('./welcome');
	    	})
	    	.error(function(data, status, headers, config) {
	    		if(status == 400) {
	    			$scope.messages = data;
	    		} else {
	    			alert(status);
	    			alert('Unexpected server error.');
	    		}
	    	});
	};
}]); 

