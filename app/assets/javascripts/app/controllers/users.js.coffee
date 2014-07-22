class App.Users extends Spine.Controller
  # elements:
  #   '.items': items
  #
  # events:
  #   'click .item': 'itemClick'

  constructor: ->
    super
    App.User.fetch()

# class UsersShow extends Spine.Controller
# class UsersEdit extends Spine.Controller
#
# class Users extends Spine.Stack
#
#   controllers:
#     show: UsersShow
#     edit: UsersEdit
#
#   routes:
#     '/users/:id/edit': 'edit'
#     '/users/:id': 'show'
