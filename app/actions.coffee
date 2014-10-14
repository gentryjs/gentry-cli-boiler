doppel = require 'doppel'
path = require 'path'
templates = __dirname + '/templates/'

#gentry = require 'gentry'
#gentry.set 'templateDir', __dirname + '/templates'

module.exports = 

  language:
    coffee: (done) ->
    
      doppel
        blacklist: ['.DS_Store', /^\^\w+/i, /^@\w+/i]
        from: templates + '^language/@coffee'
        to: './tmp'
        sandbox:
          answers: @answers
        done: ->
          console.log 'done'
          done()

      #gentry.clone 'coffee/base', '/', done

    js: (done) -> #gentry.clone 'js/base', '/', done

  backend:
    yes: (done) ->

      #gentry.clone "#{@answers}/server", '/'

  persistence:
    REST: (done) ->
      console.log "REST"
      done()

