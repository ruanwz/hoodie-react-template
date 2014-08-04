jest.dontMock 'flux'
jest.dontMock 'util'
jest.dontMock 'events'
jest.dontMock '../coffee/cr.coffee'
jest.dontMock '../coffee/components/application.coffee'

describe 'Verify Setup', ->
  it 'can expect', ->
    expect(1+1).toBe 2

