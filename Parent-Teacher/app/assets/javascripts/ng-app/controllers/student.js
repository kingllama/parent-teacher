parentTeacherApp.controller('Student', function ($scope, $location, StudentFactory){
  $scope.student = StudentFactory.query({}, function(){}, function(){})
})