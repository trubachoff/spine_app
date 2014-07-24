class App.Customer extends Spine.Model
  @configure 'Customer', 'name', 'lastname', 'email', 'phone', 'phone_code', 'status'
  @belongsTo 'user', 'App.User'
  @extend Spine.Model.Ajax

  @filter: (query) ->
    console.log "App.Customer query:", query

    return @all() unless query || query != []

    @select (item) ->
      res = false
      for e in query
        if e is item.status
          res = true
          break
      res

  fullName: -> [@name, @lastname].join(' ')
