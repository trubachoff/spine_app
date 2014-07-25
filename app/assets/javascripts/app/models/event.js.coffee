class App.Event extends Spine.Model
  @configure 'Event', 'date', 'comment', 'kind', 'status'
  @belongsTo 'user', 'App.User'
  @belongsTo 'customer', 'App.Customer'
  @extend Spine.Model.Ajax
