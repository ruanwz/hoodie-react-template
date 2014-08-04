CR = require './cr.coffee'
Dispatcher = require './dispatcher/app_dispatcher.coffee'
App = require './components/application.coffee'
Main = start: ->
  Dispatcher.handleViewAction {}
  #console.log CR.React
  #console.log CR.Jquery
  #console.log CR.FluxMixin

CR.React.renderComponent App({}), document.getElementById('react')

module.exports = Main
