#= require json2
#= require jquery
#= require spine
#= require spine/manager
#= require spine/ajax
#= require spine/route
#= require spine/relation

#= require_tree ./lib
#= require_self
#= require_tree ./models
#= require_tree ./controllers
#= require_tree ./views

class App extends Spine.Controller
  constructor: ->
    super
    @log("Start")

    App.User.fetch()
    App.Company.fetch()

    # Initialize controllers:
    #  @append(@items = new App.Items)
    #  ...
    
    Spine.Route.setup()


window.App = App