path = require 'path'
webpack = require 'webpack'



conf =
  karma: ->
    @entry = null
    @module
  context: __dirname + "/src"
  entry:
    app: "./main"
  devtool: 'inline-source-map'
  debug: true
  output:
    path: __dirname + "/dist"
#    publicPath: '/'
    filename: "bundle.js"
    sourceMapFilename: '[file].map'
  module:
  # todo: put ibrik as the instrumenter for coffee source
    loaders: [
      { test: /\.coffee$/, loader: "coffee-loader" }
      {
        test: /\.(jpe?g|png|gif|svg)$/i,
        loaders: [
          'file?hash=sha512&digest=hex&name=[hash].[ext]'
          'image?bypassOnDebug&optimizationLevel=7&interlaced=false'
        ]
      }
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
      path.join process.cwd(), 'src'
      path.join process.cwd(), 'bower_components'
      path.join process.cwd(), 'node_modules'
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
    # new webpack.optimize.CommonsChunkPlugin("vendor", "vendor.bundle.js")
  ]



module.exports = conf