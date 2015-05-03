MyClass = require 'MyClass'
#tick = require 'image/tick'
class App
  constructor: (container) ->
    container.innerHTML = "abc123"
    @addTick container
  includedObject: require 'includedObject'
  myClass: new MyClass()
  addTick: (container) ->
#    console.log container
#    img = document.createElement 'img'
#    img.src = tick
#    console.log tick
#    container.appendChild img
#throw new Error 'break'
module.exports = App