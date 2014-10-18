parentTeacherApp.factory("Student", function($resource) {
  return $resource("api/students", { id: "@id" },
    {
      'create':  { method: 'POST' },
      'index':   { method: 'GET', isArray: true },
      'show':    { method: 'GET', isArray: false },
      'update':  { method: 'PUT' },
      'destroy': { method: 'DELETE' }
    })
});

// parentTeacherApp.factory("Student", function() {
//   return {
//     sayHello: function() {
//       return "Hello World"
//     }
//   };
// });