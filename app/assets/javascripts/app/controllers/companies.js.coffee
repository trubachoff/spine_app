class App.Companies extends Spine.Controller
  # elements:
  #   '.items': items
  #
  # events:
  #   'click .item': 'itemClick'

  constructor: ->
    super
    App.Company.fetch()
    @render()

  render: ->
    @html @view 'index'
