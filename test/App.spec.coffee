App = require 'App'
div = document.createElement 'div'
app = new App div
describe 'App', ->
  it 'should have includedObject', ->
    expect app.includedObject
      .toBe require 'includedObject'
  it 'should have instance of myclass', ->
    expect app.myClass.name
      .toBe 'myClass'