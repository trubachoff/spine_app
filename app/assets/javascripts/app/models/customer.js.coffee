class App.Customer extends Spine.Model
  @configure 'Customer', 'name', 'lastname', 'email', 'phone', 'phone_code', 'status'
  @belogsTo 'user', 'App.User'
  @extend Spine.Model.Ajax
