class Uol.Views.Parallax extends Backbone.View

  initialize: (options) ->
    $(window).scroll ->
      scroll = $(window).scrollTop()
      if scroll >= 213
        $('header').addClass 'fixed'
      else
        $('header').removeClass 'fixed'
