module.exports =
  
  language:
    prompt: 'Coffee or JS?'
    input:
      type: String
      enum: ['coffee', 'js']
      default: 'js'

      # TODO: support metadata 
      #enum:
      #  coffee: 
      #    img: 'coffeesript.png'

  backend:
    prompt: 'node server?'
    input:
      type: String
      enum: ['yes', 'no']
      default: 'no'

  persistence:
    prompt: 'persistence?'
    input:
      type: String
      enum: ->
        if @backend
          ['REST', 'firebase', 'localstorage']
        else
          ['firebase', 'localstorage']
      default: 'REST'

  auth:
    prompt: 'type of auth?'
    input:
      type: String
      enum: ['none', 'facebook', 'twitter', 'email']
      default: 'none'

  build:
    prompt: 'build system?'
    input: 
      type: String
      enum: ['gulp', 'grunt']
      default: 'gulp'