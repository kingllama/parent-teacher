parentTeacherApp.controller('Student', function ($scope, $location, StudentFactory){
  $scope.student = StudentFactory.query({}, function(){}, function(){});
  $scope.students = StudentFactory.show({id: /*??*/}, function(){}, function(){});
})