class Uol.Views.BikeVideo extends Backbone.View

  events: ->
    'click video': 'playVideo'

  playVideo: ->
    @$('video').css 'opacity', 1
    @$('video')[0].play()
