class Messageboard.Message extends Batman.Model
  @resourceName: 'messages'
  @storageKey: 'messages'

  @persist Batman.RailsStorage

  # Use @encode to tell batman.js which properties Rails will send back with its JSON.
  # @encode 'name'
  @encodeTimestamps()

