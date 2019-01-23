var app = angular.module('akdmManager', ['ngAnimate']);

// avoid clashes with jinja2
app.config(['$interpolateProvider', function($interpolateProvider) {
  $interpolateProvider.startSymbol('{a');
    $interpolateProvider.endSymbol('a}');
}]);

app.controller("rootController", function($scope, $http) {


}) // rootController


