class App.Customers extends Spine.Controller

  constructor: ->
    super
    @filter.query_arr = []

    App.Customer.bind 'refresh change', => @render()
    App.Customer.fetch()

  events:
    "change input[type=checkbox]": "filter"
    "click [data-type=edit]": "edit"
    "click [data-type=delete]": "delete"

  # change: (params) ->
  #   @render()

  customers: ->
    @customers = App.Customer.all()
    @log "App.Customers.all()", @customers

  render: ->
    @log('App.Customer render')
    @html @view('customer/index')(customers: @customers)

  filter: (e) ->
    target = $(e.target)

    toggle = (query_arr, item) ->
      n = query_arr.indexOf(item)
      if n isnt -1
        query_arr.splice(n, 1)
      else
        query_arr.push(item)

    switch target.attr("data-type").toLowerCase()
      when "pending"
        toggle @filter.query_arr, "pending"
      when "contract"
        toggle @filter.query_arr, "contract"
      when "sale"
        toggle @filter.query_arr, "sale"

    @customers = App.Customer.filter(@filter.query_arr)

  edit: (e) ->
    @log('App.Customers edit ')

  delete: ->
    @log('App.Customers delete')
