class Uol.Views.Parallax extends Backbone.View

  initialize: (options) ->
    skrollr.init()

    $(window).scroll ->
      scroll = $(window).scrollTop()
      bottom = scroll + $(window).height()

      if scroll >= 213
        $('header').addClass 'fixed'
      else
        $('header').removeClass 'fixed'
