App = require 'App'
app = new App()
describe 'App', ->

  it 'should have includedObject', ->
    expect app.includedObject
      .toBe require 'includedObject'
  it 'should have instance of myclass', ->
    expect app.myClass.name
      .toBe 'myClass'