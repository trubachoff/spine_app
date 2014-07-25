class App.Customer extends Spine.Model
  @configure 'Customer', 'name', 'lastname', 'email', 'phone', 'phone_code', 'status'
  @belongsTo 'user', 'App.User'
  @hasMany 'events', 'App.Event'
  @extend Spine.Model.Ajax

  @filter: (query) ->
    return @all() if query.length == 0
    @select (item) ->
      item.status in query

  fullName: -> [@name, @lastname].join(' ')
