MyClass = require 'MyClass'
class App
  includedObject: require 'includedObject'
  myClass: new MyClass()

#throw new Error 'break'

module.exports = App