class Uol.Views.BikeVideo extends Backbone.View

  events: ->
    'click img.video': 'playVideo'
    'click span': 'removeVideo'

  playVideo: ->
    @$('video').css(opacity: 1, height: 'auto')
    @$('span').show()
    @$('video').on 'ended', (e) =>
      @removeVideo()
    @$('video')[0].play()

  removeVideo: ->
    @$('video').css(opacity: 0, height: 0)
    @$('span').hide()
