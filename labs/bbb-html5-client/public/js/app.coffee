define [
  'jquery',
  'underscore',
  'backbone',
  'raphael',
  'globals',
  'cs!router',
  'cs!models/connection',
  'jquery.mousewheel',
  'jquery.autosize',
  'jquery.form',
  'jquery.ui'
], ($, _, Backbone, Raphael, globals, Router, ConnectionModel) ->

  globals.router = {}
  globals.connection = {}

  initialize = ->
    # Default application router
    globals.router = new Router()
    Backbone.history.start()

    # Default connection (websocket)
    globals.connection = new ConnectionModel()

    # Start at /login
    globals.router.navigate "/login", {trigger: true, replace: true}

  return {
    initialize: initialize
  }
