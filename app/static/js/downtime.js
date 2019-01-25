var app = angular.module('downtime', []);

// avoid clashes with jinja2
app.config(['$interpolateProvider', function($interpolateProvider) {
  $interpolateProvider.startSymbol('{a');
    $interpolateProvider.endSymbol('a}');
}]);

app.controller("rootController", function($scope, $http) {

    $scope.cur_date = new Date();

}) // rootController


