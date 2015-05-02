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
    postLoaders: [
      {
        test: /\.js$/
        exclude: /(test|node_modules|bower_components)\//
        loader: 'istanbul-instrumenter'
      }
      {
        test: /\.coffee$/
        exclude: /(test|node_modules|bower_components)\//
        loader: 'istanbul-instrumenter'
      }
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
      '.js'
      '.coffee'
      '.html'
      '.png'
    ]
