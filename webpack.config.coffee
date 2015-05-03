path = require 'path'

module.exports =
  context: __dirname + "/src"
  entry:
    app: "./main"
  devtool: 'inline-source-map'
  debug: true
  output:
    path: __dirname + "/dist"
    publicPath: '/'
    filename: "bundle.js"
    sourceMapFilename: '[file].map'
  module:
  # todo: put ibrik as the instrumenter for coffee source
    loaders: [
      { test: /\.coffee$/, loader: "coffee-loader" }
    ]
    postLoaders: [
      {
        test: /\.coffee$/
        exclude: /(test|node_modules|bower_components)\\/
        loader: 'istanbul-instrumenter'
      }
    ]

  resolveLoader:
    root: path.join process.cwd(), 'node_modules'
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
  plugins: [
    new webpack.ResolverPlugin(
      new webpack.ResolverPlugin.DirectoryDescriptionFilePlugin('bower.json', ['main'])
    )
# new webpack.optimize.CommonsChunkPlugin("vendor", "vendor.bundle.js") #todo: re-add for chunks
  ]