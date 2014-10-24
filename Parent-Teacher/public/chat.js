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
  if (incomingData.userType === "Teacher"){
    $('<p>').addClass('teacher-msg-name').text(incomingData.userName).appendTo('#chat-box');
    $('<p>').addClass('teacher-msg').text(incomingData.message).appendTo('#chat-box');
  } else {
    $('<p>').addClass('parent-msg-name').text(incomingData.userName).appendTo('#chat-box');
    $('<p>').addClass('parent-msg').text(incomingData.message).appendTo('#chat-box');
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

