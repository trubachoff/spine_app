class App.Company extends Spine.Model
  @configure 'Company', 'title', 'phone', 'phone_code'
  @hasMany 'users', 'App.User'
  @extend Spine.Model.Ajax
  @url: "/companies"

  addUserToCompany: (user_id) ->
    @log('addUserToCompany', app.Company.title)
    App.User.find(user_id)
    u.company_id = @.id
    u.save  
