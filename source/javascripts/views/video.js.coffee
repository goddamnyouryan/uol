class Uol.Views.Video extends Backbone.View

  initialize: (options) ->
    @$el.each (i, video) =>
      video.canplay = $(video).parents('section').css 'height', $(video).outerHeight()
    setInterval (->
      $('video#bike-background')[0].play()
    ), 20000
