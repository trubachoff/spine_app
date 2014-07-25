$.fn.item = ->
  elementID   = $(@).data('id')
  elementID or= $(@).parents('[data-id]').data('id')
  App.Customer.find(elementID)

class App.Customers extends Spine.Controller

  elements:
    '#table': 'table'

  constructor: ->
    super
    @log "Customers constructor"
    @filter.query_arr = []

    App.Customer.bind 'refresh', => @render()
    App.Customer.fetch()

    @table.bind "change input[type=checkbox]", => @filter()
    @table.bind "change update destroy", => @render()

  events:
    "change input[type=checkbox]": "filter"
    "click [data-type=show]": "show"
    "click [data-type=edit]": "edit"
    "click [data-type=destroy]": "destroy"

  render: =>
    @customers = App.Customer.all() if !@customers
    @log('Customer render:', @customers)
    @table.html(@view('customer/index')(customers: @customers))

  filter: (e) =>
    target = $(e.target)

    toggle = (query_arr, item, checked) ->
      n = query_arr.indexOf(item)
      if n isnt -1 && !checked
        query_arr.splice(n, 1)
      else if checked
        query_arr.push(item)

    switch target.attr("data-type").toLowerCase()
      when "pending"
        toggle @filter.query_arr, "pending", target.prop("checked")
      when "contract"
        toggle @filter.query_arr, "contract", target.prop("checked")
      when "sale"
        toggle @filter.query_arr, "sale", target.prop("checked")

    @customers = App.Customer.filter(@filter.query_arr)
    @render()

  show: (e) =>
    # item = $(e.target).item()
    # @navigate "/customers", item.id

  edit: (e) =>
    alert "Coming soon"

  destroy: (e) =>
    item = $(e.target).item()
    item.destroy() if confirm('Are you sure?')

class App.ShowCustomers extends Spine.Controller
  constructor: ->
    super
    @log 'ShowCustomer constructor'
    App.Event.bind 'refresh', => @render()
    App.Customer.fetch()
    App.Event.fetch()

  render: =>
    @customer = App.Customer.first() #TODO Fix %^%$#^$^%!!!
    @events = App.Event.all()
    @log 'ShowCustomer render', @customer, @events
    @html(@view('customer/show')(customer: @customer, events: @events))
