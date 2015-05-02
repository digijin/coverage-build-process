#module.exports = (config) ->
#  config.set
#  basePath: ''
#  frameworks: [ 'jasmine' ]
#  files: [
#    'src/**/*.coffee'
#    'test/**/*.coffee'
#  ]
#  exclude: []
#  preprocessors: '**/*.coffee': [ 'coffee' ]
#  reporters: [ 'progress' ]
#  port: 9876
#  colors: true
#  logLevel: config.LOG_INFO
#  autoWatch: true
#  browsers: [
#    'Chrome'
#    'Firefox'
#    'PhantomJS'
#  ]
#  singleRun: false



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

      '**/*.coffee': ['coffee']

#    coverageReporter:
#      instrumenters: { ibrik : require('ibrik') }
#      instrumenter: {
#        '**/*.coffee': 'ibrik'
#      }
#      reporters: [
##        {"type": "html", dir: 'coverage/'}
##        {"type": "text"}
#      ]

# the default configuration
    htmlReporter:
      outputDir: 'karma_html' # where to put the reports
      templatePath: null # set if you moved jasmine_template.html
      focusOnFailures: true # reports show failures on start
      namedFiles: false # name files instead of creating sub-directories
      pageTitle: null # page title for reports; browser info by default
      urlFriendlyName: false # simply replaces spaces with _ for files/dirs
# experimental
      preserveDescribeNesting: false, # folded suites stay folded
      foldAll: false, # reports start folded (only with preserveDescribeNesting)

    reporters: [
      'progress'
#      'dots'
#      'growl'
#      'nyan'
#      'html'
#      'coverage'
    ]
    port: 9876
    colors: true
# possible values: config.LOG_DISABLE || config.LOG_ERROR || config.LOG_WARN || config.LOG_INFO || config.LOG_DEBUG
    logLevel: 'LOG_DISABLE'
    autoWatch: true
# available browser launchers: https://npmjs.org/browse/keyword/karma-launcher
# 'Firefox', 'FirefoxDeveloper', 'FirefoxAurora', 'FirefoxNightly'
    browsers: [
      'Chrome'
#      'Firefox'
#      'PhantomJS'
    ]
# if true, Karma captures browsers, runs the tests and exits
    singleRun: false