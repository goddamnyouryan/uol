class Uol.Views.Parallax extends Backbone.View

  initialize: (options) ->
    @time = 5

    $(window).scroll =>
      scroll = $(window).scrollTop()
      header = $('section#ad').offset().top
      four = $('section#four').offset().top
      container = $('#container').offset().top - 100
      if scroll >= header and @time > 0
        $('body').addClass 'no-scroll'
        @interval = setInterval @countdown, 1000
      if scroll >= four
        $('section#four video').addClass 'fixed'
      else
        $('section#four video').removeClass 'fixed'

  countdown: =>
    @time--
    $('section#ad h3').text "Please hold for #{@time} seconds."
    if 0 >= @time
      $('section#ad h3').text 'Okay go!'
      $('body').removeClass 'no-scroll'
      $('header').css 'top', 0
      skrollr.init()
      clearInterval(@interval)
