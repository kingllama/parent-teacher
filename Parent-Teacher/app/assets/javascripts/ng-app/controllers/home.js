parentTeacherApp.controller('HomeCtrl', function ($scope) {
    $scope.things = [];
});

parentTeacherApp.controller('StudentList', function($scope, $location, Student){
  console.log(Student)
  $scope.students = Student.index({}, function(){console.log(true)}, function(){console.log(false)});

});

