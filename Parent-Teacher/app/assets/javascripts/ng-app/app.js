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

        // an abstract state that just serves as a
        // parent for the below child states
        .state('dashboard', {
            abstract: true,
            url: '/dashboard',
            templateUrl: 'dashboard/layout.html',
        })
        // the default route when someone hits dashboard
        .state('dashboard.one', {
            url: '',
            templateUrl: 'dashboard/one.html'
        })
        // this is /dashboard/two
        .state('dashboard.two', {
            url: '/two',
            templateUrl: 'dashboard/two.html'
        })
        // this is /dashboard/three
        .state('dashboard.three', {
            url: '/three',
            templateUrl: 'dashboard/three.html'
        })

        .state('studentlist', {
            url: '/studentlist',
            templateUrl: 'studentlist.html',
            controller: 'StudentList'
        });

    // default fall back route
    $urlRouterProvider.otherwise('/');

    // enable HTML5 Mode for SEO
    $locationProvider.html5Mode(true).hashPrefix('!');
});