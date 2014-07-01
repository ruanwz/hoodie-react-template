jest.dontMock 'fluxxor'
jest.dontMock 'util'
jest.dontMock 'events'


Main = require '../coffee/main.coffee'
describe 'Verify Setup', ->
  it 'can expect', ->
    expect(1+1).toBe 2
    Main.start()

