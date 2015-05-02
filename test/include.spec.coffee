describe 'include', ->
  it 'should be defined', ->
    include = require '../src/include'
    expect include
      .toBeDefined()