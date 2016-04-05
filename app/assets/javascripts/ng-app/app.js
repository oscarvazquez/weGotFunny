var oscar = angular.module('oscar', [
	'ngRoute', 
	'templates', 
  	'ui.bootstrap',
  	'ngAnimate'
]);

(function(){
        oscar.config(function ($routeProvider, $locationProvider) {
        $routeProvider
            .when('/', {
              templateUrl: 'index.html',
              controller: 'homeController'
            });

        $locationProvider.html5Mode(true);
    })
}());