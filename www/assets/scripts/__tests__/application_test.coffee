jest.dontMock 'fluxxor'
jest.dontMock 'util'
jest.dontMock 'events'
jest.dontMock '../coffee/cr.coffee'
jest.dontMock '../coffee/cr_test.coffee'
jest.dontMock '../coffee/stores/snapshot_store.coffee'
jest.dontMock '../coffee/components/application.coffee'
SnapShotStore = require '../coffee/stores/snapshot_store.coffee'
CR = require('../coffee/cr_test.coffee')
Application = require '../coffee/components/application.coffee'


actions =
  addSnapShot: (payload)->
    @dispatch 'ADD_SNAPSHOT', payload

stores = {
  SnapShotStore: new SnapShotStore()
}
flux = new CR.Fluxxor.Flux(stores, actions)

describe 'Verify Env', ->
  beforeEach ->
    @test_app = Application {flux: flux}
    CR.TestUtils.renderIntoDocument @test_app
  it 'has an empty snapshot of the people at the beginning with default str', ->
    div = CR.TestUtils.findRenderedDOMComponentWithClass(@test_app, 'app')
    expect(div.getDOMNode().textContent).toContain 'My Title'
