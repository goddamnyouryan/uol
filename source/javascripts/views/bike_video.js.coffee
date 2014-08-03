class Uol.Views.BikeVideo extends Backbone.View

  events: ->
    'click img.video': 'playVideo'
    'click video': 'playVideo'

  playVideo: ->
    @$('video').css(opacity: 1, height: 'auto')
    @$('video').on 'ended', (e) =>
      @$('video').css(opacity: 0)
    @$('video')[0].play()
