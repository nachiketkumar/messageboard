class Messageboard.MainController extends Messageboard.ApplicationController
  routingKey: 'main'

  @beforeAction ->
    if !Messageboard.get('currentUser')
      Messageboard.set('currentUser', prompt("What's your name?"))

  index: (params) ->
    @messages = Messageboard.Message.get('all')
    @populateNewMessage()

  sendMessage: (params) ->
    @newMessage.save()
    @populateNewMessage()

  populateNewMessage: ->
    @newMessage = new Messageboard.Message(owner: Messageboard.get('currentUser'))
