min       = require 'minimist'
gentry    = require 'gentry'  

# runner can change 
runner    = require 'gentry-cli'

questions = require '../app/questions'
actions   = require '../app/actions'

# TODO: grab name out of package
name = "gentry-boiler"

usage = ->
  console.log "USAGE:"
  console.log "# question user and scaffold project"
  console.log "$ #{name} scaffold"

argv = min process.argv.slice(2)

if argv._.length is 0 then usage()

else if argv._[0] is 'scaffold'
  runner questions, (answers) ->
    gentry.scaffold questions, actions, answers, ->
      console.log 'scaffold complete.' 

# TODO: generators
#else if 

else usage()