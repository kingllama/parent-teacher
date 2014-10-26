var messageData = {
  userType: metaObject.userType,
  userName: metaObject.userName,
  message: ''
};

var chat = {
  dispatcher: null,
  channel: null,
  connect: function(){
    chat.dispatcher = new WebSocketRails('localhost:3000/websocket');
    chat.channel = chat.dispatcher.subscribe("studentchannel" + metaObject.pageId);
  },

  sendMessage: function(data){
    chat.channel.trigger('message_event', data);
    //chat.dispatcher.trigger('new_message', text); // this would send to server.
  }
};

chat.connect();

chat.channel.bind('message_event', function(incomingData){
  var div = $("<div>").addClass("speech-bubble");
  var parent_p = $("<p>");
  var teacher_p = $("<p>");
  if (incomingData.userType === "Teacher"){
    teacher_p.addClass('teacher-msg-name').text(incomingData.userName)
    teacher_p.addClass('teacher-msg').text(incomingData.message)
    div.append(teacher_p).appendTo('#chat-box');
  } else {
    parent_p.addClass('parent-msg-name').text(incomingData.userName)
    parent_p.addClass('parent-msg').text(incomingData.message)
    div.append(parent_p).appendTo('#chat-box');
  };
});

var getInput = function(){
  return $('#input').val();
};

$('button').on('click', function(){
  messageData.message = getInput();
  chat.sendMessage(messageData);
  $('#input').val("");
});



