class Messageboard.MessagesController extends Messageboard.ApplicationController
  routingKey: 'messages'

  index: (params) ->
   @set('messages', Messageboard.Message.get('all'))
   @messages = Messageboard.Message.get('all')
