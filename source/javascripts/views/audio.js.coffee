class Uol.Views.Audio extends Backbone.View

  events: ->
    'click span': 'toggleAudio'


  toggleAudio: ->
    audio = @$('audio')[0]
    if audio.paused
      audio.play()
    else
      audio.pause()
