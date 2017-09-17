App.comments = App.cable.subscriptions.create "CommentsChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    # Called when there's incoming data on the websocket for this channel
    $("#messages").prepend(data)
    body = document.getElementsByName('comment[body]')[0];
    body.value ='';
    body.placeholder='Still wanna comment?';

    # $('#comment_input').attr('placeholder','Add new comment...');