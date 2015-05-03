module.exports = (config) ->
  config.set
    basePath: ''
    frameworks: [
      'jasmine'
    ]
    files: [
      'test/**/*.spec.coffee'
    ]
    exclude: []
    preprocessors:
      'test/**/*.spec.coffee': ['webpack']
    webpack: require './webpack.config'
    coverageReporter:
#      instrumenters: { ibrik : require('ibrik') }
#      instrumenter: {
#        '**/*.coffee': 'ibrik'
#      }
      reporters: [
        {"type": "html", dir: 'coverage/'}
        {"type": "text"}
      ]

    reporters: [
      'progress'
#      'dots'
      'growl'
      'nyan'
      'coverage'
    ]
    port: 9876
    colors: true
    logLevel: 'LOG_DISABLE'
    autoWatch: true
    browsers: [
      'Chrome'
#      'Firefox'
#      'PhantomJS'
    ]
    singleRun: false