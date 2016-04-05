angular.module('oscar')
	.controller('homeController', function($scope, $location, photoFactory){
		photoFactory.getPhotos(function(data){
			$scope.images = data.images.data
		})
		$scope.getImage = function(imgId){
			console.log(imgId);
		}
})