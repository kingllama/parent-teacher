var chat = {
  dispatcher: null,
  channel: null,
  connect: function(){
    chat.dispatcher = new WebSocketRails('localhost:3000/websocket');
    chat.channel = chat.dispatcher.subscribe("studentchannel" + pageId);
  },

  sendMessage: function(text){
    chat.channel.trigger('message_event', text);
    //chat.dispatcher.trigger('new_message', text); // this would send to server.
  }
};

chat.connect();

var getInput = function(){
  return $('#input').val()
};

$('button').on('click', function(){
  chat.sendMessage(getInput());
  $('#input').val("")
});

chat.channel.bind('message_event', function(data){
  console.log("Recieved.")
  $('<p>').text(data).appendTo('body');
});

