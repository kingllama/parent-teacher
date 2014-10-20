parentTeacherApp.controller('StudentList', function ($scope, $location, StudentFactory){
  $scope.students = StudentFactory.index({}, function(){}, function(){
    $scope.students = "Something went wrong or there are no Students in the Data Base"
  });
});