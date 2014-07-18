class App.User extends Spine.Model
  @configure 'User', 'name', 'lastname', 'phone', 'phone_code'
  @belongsTo 'company', 'App.Company'
  
  @extend Spine.Model.Ajax

  validate: ->
    unless @name
      "First name is required"
    unless @lastname
      "Last name is required"

  fullName: -> [@name, @lastname].join(' ')

  #addUser(user): ->
