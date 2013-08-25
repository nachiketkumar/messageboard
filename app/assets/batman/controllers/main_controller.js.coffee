class Messageboard.MainController extends Messageboard.ApplicationController
  routingKey: 'main'

  index: (params) ->
    @messages = Messageboard.Message.get('all')

  submitMessage: (params) ->
    @newMessage.save()
    @
