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

      console.log bottom, $('h2').offset().top
      if bottom >= $('h2').offset().top
        percent = (bottom - $('h2').offset().top) / $(window).height() * 100
        $('h2 span').css 'width', "#{percent}%"
