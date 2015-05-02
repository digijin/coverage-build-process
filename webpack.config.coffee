module.exports =
  context: __dirname + "/src"
  entry: "./main"
  devtool: 'inline-source-map'
  output:
    path: __dirname + "/dist"
    filename: "bundle.js"
  module:
    loaders: [
      { test: /\.coffee$/, loader: "coffee-loader" }
    ]
  resolve:
    alias: {}
    root: [
      'src'
      'bower_components'
      'node_modules'
    ]
    extensions: [
      ''
      '.coffee'
    ]
