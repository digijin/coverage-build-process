describe 'buildProcess', ->
  it 'should bring in bower', ->
    expect require 'underscore'
    .toBeDefined()
  it 'should bring in node modules', ->
    expect require 'lodash'
    .toBeDefined()