class Uol.Views.Audio extends Backbone.View

  events: ->
    'click span': 'toggleAudio'


  toggleAudio: (event) ->
    audio = @$('audio')[0]
    if audio.paused
      audio.play()
      $(event.target).removeClass 'mute'
    else
      audio.pause()
      $(event.target).addClass 'mute'
