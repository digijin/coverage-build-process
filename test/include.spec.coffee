describe 'include', ->
  it 'should be defined', ->
    include = require 'include'
    expect include
      .toBeDefined()