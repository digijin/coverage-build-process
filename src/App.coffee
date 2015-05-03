MyClass = require 'MyClass'
tick = require 'image/tick'
view = require 'view/test'
class App
  constructor: (container) ->
    container.innerHTML = "abc123"
    @addHtml container
    @addTick container
  includedObject: require 'includedObject'
  myClass: new MyClass()
  addTick: (container) ->
    container.appendChild tick
  addHtml: (container) ->
    container.innerHTML = view
      title: "Testing"
      text: 'seems to be working'

#throw new Error 'break'
module.exports = App