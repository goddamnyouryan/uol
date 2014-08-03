class Uol.Views.Parallax extends Backbone.View

  initialize: (options) ->
    @time = 5

    $(window).scroll =>
      scroll = $(window).scrollTop()
      header = $('section#ad').offset().top
      four = $('section#four').offset().top
      footer = $('footer').offset().top
      container = $('#container').offset().top - 100
      if scroll >= header and @time > 0
        $('body').addClass 'no-scroll'
        $('section#ad h3').show()
        @interval = setInterval @countdown, 1000
      if scroll >= four
        $('section#four video').addClass 'fixed'
      else
        $('section#four video').removeClass 'fixed'
      if scroll >= footer
        $('footer video')[0].play()

  countdown: =>
    @time--
    $('section#ad h3').text "00:0#{@time}"
    if 0 >= @time
      $('section#ad h3').hide()
      $('body').removeClass 'no-scroll'
      $('header').css 'top', 0
      offset = $('blockquote#top').offset().top - $('header').outerHeight()
      $('html,body').animate({ scrollTop: offset }, { easing: 'swing', duration: 500 })
      skrollr.init()
      clearInterval(@interval)
