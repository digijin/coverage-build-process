MyClass = require 'MyClass'
class App
  includedObject: require 'includedObject'
  myClass: new MyClass()

module.exports = App