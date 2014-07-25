class App.Events extends Spine.Controller
  # elements:
  #   '.items': items
  #
  # events:
  #   'click .item': 'itemClick'

  constructor: ->
    super
    @log 'Events constructor'
    App.Event.bind 'refresh change', => @render()
    App.Event.fetch()

  render: =>
    @events = App.Event.all()
    @html(@view('events/index')(events: @events))
