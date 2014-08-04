
CR = require '../cr.coffee'
Dispatcher = CR.Flux.Dispatcher

# merge = require('react/lib/merge')
copyProperties = require("react/lib/copyProperties")
AppDispatcher = copyProperties(new Dispatcher(),

  ###
  @param {object} action The details of the action, including the action's
  type and additional data coming from the server.
  ###
  handleServerAction: (action) ->
    payload =
      source: "SERVER_ACTION"
      action: action

    @dispatch payload


  ###
  @param {object} action The details of the action, including the action's
  type and additional data coming from the view.
  ###
  handleViewAction: (action) ->
    payload =
      source: "VIEW_ACTION"
      action: action

    @dispatch payload
)
module.exports = AppDispatcher
