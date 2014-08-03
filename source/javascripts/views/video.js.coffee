class Uol.Views.Video extends Backbone.View

  initialize: (options) ->
    @$el.parents('section').css 'height', @$el.outerHeight()
    setInterval (->
      $('video#bike-background')[0].play()
    ), 20000
