class App.Customers extends Spine.Controller
  # elements:
  #   '.items': items
  #
  # events:
  #   'click .item': 'itemClick'

  constructor: ->
    super
    App.Customer.fetch()
    @render()

  render: ->
    @html @view 'index'
