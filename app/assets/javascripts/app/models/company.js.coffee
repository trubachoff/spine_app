class App.Company extends Spine.Model
  @configure 'Company', 'title', 'phone', 'phone_code'
  @hasMany 'users', 'App.User'

  @extend Spine.Model.Ajax
  @url: "/companies"

  # @addToCompany ->

