class App.User extends Spine.Model
  @configure 'User', 'name', 'lastname', 'phone', 'phone_code'
  @belongsTo 'company', 'App.Company'
  @hasMany 'customers', 'App.Customer'
  @hasMany 'events', 'App.Event'
  @extend Spine.Model.Ajax

  validate: ->
    unless @name
      "First name is required"
    unless @lastname
      "Last name is required"

  fullName: -> [@name, @lastname].join(' ')

  @addUser: (user) ->
    console.log 'addUser: ', user
    App.User.create user
