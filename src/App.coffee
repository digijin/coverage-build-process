MyClass = require 'MyClass'
class App
  constructor: (container) ->
    container.innerHTML = "abc123"
  includedObject: require 'includedObject'
  myClass: new MyClass()
#throw new Error 'break'
module.exports = App