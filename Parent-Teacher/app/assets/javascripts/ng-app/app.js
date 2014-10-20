var parentTeacherApp = angular.module('parentTeacherApp', ['ngAnimate', 'ui.router','templates', 'ngResource']);

 parentTeacherApp.config(function ($stateProvider, $urlRouterProvider, $locationProvider) {

    /**
     * Routes and States
     */
      $stateProvider
        .state('home', {
            url: '/',
            templateUrl: 'home.html',
            controller: 'HomeCtrl'
        }) // make sure you remove the semicolon

        .state('studentlist', {
            url: '/studentlist',
            templateUrl: 'studentlist.html',
            controller: 'Student'
        });


        // THESE ARE THE ROUTS WE NEED!!!

        /*
        1. HOME OR MAIN which we already have above!
        .state('home', {
            url: '/',
            templateUrl: 'home.html',
            controller: 'HomeCtrl'
        });

        2. SCHOOL SIGN UP PAGE!
        .state('signup' {
            url:'/schoolsignup',
            templateUrl:'',
            controler:''
        });

        3.  ADMIN DASHBOARD!!!
        .state('admindashboard' {
            url:'/admindashboard',
            templateUrl:'',
            controler:''
        });

        4.  TEACHER DASHBOARD
        .state('teacherdashboard' {
            url:'/teacherdashboard'
            templateUrl:''
            controler:''
        });

        5. PARENT DASHBOARD!
        .state('parentdashboard' {
            url:'/parentdashboard',
            templateUrl:'',
            controler:''
        });


        6. CLASSROOM VIEWER FOR TEACHER
        .state('classroom' {
            url:'/classroom',
            templateUrl:'',
            controler:''
        });


        */



    // default fall back route
    $urlRouterProvider.otherwise('/');

    // enable HTML5 Mode for SEO
    $locationProvider.html5Mode(true).hashPrefix('!');
});