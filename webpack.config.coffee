module.exports =
  context: __dirname + "/src"
  entry: "./main"
  output:
    path: __dirname + "/dist"
    filename: "bundle.js"
  module:
    loaders: [
      { test: /\.coffee$/, loader: "coffee-loader" }
    ]
  resolve:
    extensions: [
      ''
      '.coffee'
    ]