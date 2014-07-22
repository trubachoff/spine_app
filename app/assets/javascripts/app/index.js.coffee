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

    @log("Initialize")

    @append(@companies = new App.Companies)
    @append(@users = new App.Users)
    @append(@customers = new App.Customers)


    Spine.Route.setup()


window.App = App
