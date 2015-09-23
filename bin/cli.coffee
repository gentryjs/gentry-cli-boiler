min       = require 'minimist'
path      = require 'path'
gentry    = require 'gentry'

# runner can change
runner    = require 'gentry-cli'

questions = require '../app/questions'
actions   = require '../app/actions'

templateDir = path.resolve './app/templates/'

# TODO: grab name out of package
name = "gentry-cli-boiler"
autoScaffold = true

# usage message
usage = ->
  console.log "USAGE:"
  console.log "# question user and scaffold project"
  console.log "$ #{name} scaffold"

argv = min process.argv.slice(2)

# no args = print usage
if argv._.length is 0 then usage()

# scaffold
else if argv._[0] is 'scaffold'

  runner questions, (answers) ->

    # if autoScaffold
    if autoScaffold
      gentry.autoScaffold
        questions: questions
        actions: actions
        answers: answers
        templateDir: templateDir
        done: ->
          console.log 'scaffold complete.'

# TODO: generators
#else if

# unrecognized command = usage
else usage()
