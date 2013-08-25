class Messageboard.MessagesController extends Messageboard.ApplicationController
  routingKey: 'messages'

  index: (params) ->
    @messages = Messageboard.Message.get('all')

  submitMessage: (params) ->
    @newMessage.save()

