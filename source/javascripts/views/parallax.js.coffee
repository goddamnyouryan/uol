class Uol.Views.Parallax extends Backbone.View

  initialize: (options) ->
    skrollr.init()
    @time = 1

    $(window).scroll =>
      scroll = $(window).scrollTop()
      header = $('header').offset().top
      container = $('#container').offset().top - 100
      if scroll >= container
        $('header').addClass 'small'
      else
        $('header').removeClass 'small'
      if scroll >= header and @time > 0
        $('body').addClass 'no-scroll'
        @interval = setInterval @countdown, 1000

  countdown: =>
    $('header h3').text "Please hold for #{@time} seconds."
    @time--
    if 0 >= @time
      $('body').removeClass 'no-scroll'
      $('#container').css 'top', $('header').outerHeight()
      $('header').addClass 'fixed'
      clearInterval(@interval)
