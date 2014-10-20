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
            controller: 'StudentList'
        })
   
        .state('signup', {
            url: '/schoolsignup',
            templateUrl: 'schoolsignup/schoolsignup.html',
            controller: 'Student'
        })

        // THESE ARE THE ROUTS WE NEED!!!

        .state('teacherdashboard', {
            url:'/teacherdashboard',
            templateUrl:'teacher/teacherdashboard.html',
            controler:''
        })

        //Parent DASHBOARD 

        .state('parentdashboard', {
            url:'/parentdashboard',
            templateUrl:'parent/parentdashboard.html',
            controler:''
        })

        // Classroom DASHBOARD
        .state('classroom', {
            url:'/classroom',
            templateUrl:'classroom/classroom.html',
            controler:''
        })

        // ADMIN DASHBOARD
        .state('admindashboard', {
            url: '/admindashboard',
            templateUrl: 'admin/admindashboard.html'
        })
        // the default route when someone hits admin dashboard and the admin teachers
        .state('admin/teachers', {
              url: '/admin_teachers',
              templateUrl: 'admin/teachers.html',
              controler:''
        })
        // this is admin classrooms
        .state('admin/classrooms', {
              url: '/admin/classrooms',
              templateUrl: 'admin/classrooms.html',
              controler:''
        })
        // this is admin messages
        .state('admin/messages', {
              url: '/admin/messages',
              templateUrl: 'admin/messages.html',
              controler:''
        })
        // this is Admin Students
        .state('admin/students', {
              url: '/admin/students',
              templateUrl: 'admin/students.html',
              controler:''
        });



    // default fall back route
    $urlRouterProvider.otherwise('/');

    // enable HTML5 Mode for SEO
    $locationProvider.html5Mode(true).hashPrefix('!');
});