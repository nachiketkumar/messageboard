class Messageboard.Message extends Batman.Model
  @resourceName: 'messages'
  @storageKey: 'messages'

  @persist Batman.RailsStorage

  @encode 'owner', 'content'
  @encodeTimestamps()