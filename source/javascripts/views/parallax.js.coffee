class Uol.Views.Parallax extends Backbone.View

  initialize: (options) ->
    @time = 1

    $(window).scroll =>
      scroll = $(window).scrollTop()
      header = $('section#ad').offset().top
      container = $('#container').offset().top - 100
      if scroll >= header and @time > 0
        $('body').addClass 'no-scroll'
        @interval = setInterval @countdown, 1000

  countdown: =>
    $('section#ad h3').text "Please hold for #{@time} seconds."
    @time--
    if 0 >= @time
      $('section#ad h3').text 'Okay go!'
      $('body').removeClass 'no-scroll'
      skrollr.init()
      clearInterval(@interval)
