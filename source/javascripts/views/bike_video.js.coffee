class Uol.Views.BikeVideo extends Backbone.View

  events: ->
    'click li.video': 'playVideo'
    'click span': 'removeVideo'
    'click video': 'toggleVideo'

  playVideo: ->
    @$('video').css(opacity: 1, height: 'auto')
    @$('span').show()
    @$('video').on 'ended', (e) =>
      @removeVideo()
    @$('video')[0].play()

  removeVideo: ->
    @$('video')[0].pause()
    @$('video').css(opacity: 0, height: 0)
    @$('span').hide()

  toggleVideo: ->
    if @$('video')[0].paused
      @$('video')[0].play()
    else
      @$('video')[0].pause()
