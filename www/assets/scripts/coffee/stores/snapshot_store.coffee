CR = require '../cr.coffee'
SnapShotStore = CR.Fluxxor.createStore
  actions:
    "CALL_USER": "onCallUser"
  initialize: (options)->
    @snapshots = []
  getState: ->
    @snapshots
module.exports = SnapShotStore
