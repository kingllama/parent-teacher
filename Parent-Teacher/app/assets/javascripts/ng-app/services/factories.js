//Naming Scheme: SingularwordFactory.
//UserFactory,StudentFactory,TeacherFactory,ParentFactory,SchoolFactory,ClassroomFactory.

parentTeacherApp.factory("UserFactory", function ($resource) {
  return $resource("api/users", { id: "@id" }, //This is pretty much index kinda.
  {
    'query':   { method: 'GET', isArray: true }
    'create':  { method: 'POST' },
    'show':    { method: 'GET', url: "api/users/:id", isArray: false },
    'update':  { method: 'PUT', url: "api/users/:id" },
    'destroy': { method: 'DELETE', url: "api/users/:id" }
  })
});

parentTeacherApp.factory("StudentFactory", function ($resource) {
  return $resource("api/students", { id: "@id" }, 
    {
      'query':   { method: 'GET', isArray: true },
      'create':  { method: 'POST' },
      'show':    { method: 'GET', url: "api/students/:id", isArray: false },
      'update':  { method: 'PUT', url: "api/students/:id" },
      'destroy': { method: 'DELETE', url: "api/students/:id" }
    })
});

parentTeacherApp.factory("TeacherFactory", function ($resource) {
  return $resource("api/teachers", { id: "@id" },
  {
    'query':   { method: 'GET', isArray: true }
    'create':  { method: 'POST' },
    'show':    { method: 'GET', url: "api/teachers/:id", isArray: false },
    'update':  { method: 'PUT', url: "api/teachers/:id" },
    'destroy': { method: 'DELETE', url: "api/teachers/:id" }
  })
});

parentTeacherApp.factory("ParentFactory", function ($resource) {
  return $resource("api/parents", { id: "@id" },
  {
    'query':   { method: 'GET', isArray: true }
    'create':  { method: 'POST' },
    'show':    { method: 'GET', url: "api/parents/:id", isArray: false },
    'update':  { method: 'PUT', url: "api/parents/:id" },
    'destroy': { method: 'DELETE', url: "api/parents/:id" }
  })
});

parentTeacherApp.factory("SchoolFactory", function ($resource) {
  return $resource("api/schools", { id: "@id" },
  {
    'query':   { method: 'GET', isArray: true }
    'create':  { method: 'POST' },
    'show':    { method: 'GET', url: "api/schools/:id", isArray: false },
    'update':  { method: 'PUT', url: "api/schools/:id" },
    'destroy': { method: 'DELETE', url: "api/schools/:id" }
  })
});

parentTeacherApp.factory("ClassroomFactory", function ($resource) {
  return $resource("api/classrooms", { id: "@id" },
  {
    'query':   { method: 'GET', isArray: true }
    'create':  { method: 'POST' },
    'show':    { method: 'GET', url: "api/classrooms/:id", isArray: false },
    'update':  { method: 'PUT', url: "api/classrooms/:id" },
    'destroy': { method: 'DELETE', url: "api/classrooms/:id" }
  })
});