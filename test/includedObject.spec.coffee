
include = require 'includedObject'

describe 'includedObject', ->
  it 'should be defined', ->
    expect include
      .toBeDefined()
  it 'should have name', ->
    expect include.name
      .toBe 'include'