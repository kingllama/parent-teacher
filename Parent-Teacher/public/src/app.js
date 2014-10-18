angular.module('parentTeacherApp', ['ui.router'])
  .config(function ($stateProvider, $urlRouterProvider){
    $urlRouterProvider.otherwise("/")

    $stateProvider.state("home", {
              url: "/home"
      templateUrl: "views/signin.html"
     //controller:
    });

  });