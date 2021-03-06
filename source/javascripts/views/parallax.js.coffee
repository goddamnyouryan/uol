class Uol.Views.Parallax extends Backbone.View

  initialize: (options) ->
    @mobile = options.mobile
    @time = 5
    @pending = true

    $(window).scroll =>
      @scroll = $(window).scrollTop()
      @adLock() unless @mobile
      @sectionFourVideo()
      @footerAd()
      @bikesVideo()

  adLock: ->
    ad = $('section#ad').offset().top
    if @scroll >= ad and @time > 0
      $('body').addClass 'no-scroll'
      $('section#ad h3').show()
      @interval = setInterval @countdown, 1000

  sectionFourVideo: ->
    four = $('section#four').offset().top
    if @scroll >= four
      $('section#four video').addClass 'fixed'
    else
      $('section#four video').removeClass 'fixed'

  footerAd: ->
    footer = $('footer').offset().top
    if @scroll >= footer and @pending
      $('footer video')[0].play()
      @pending = false

  bikesVideo: ->
    marco = $('#bikes video').offset().top + $('#bikes video').outerHeight()
    if @scroll >= marco
      $('#bikes video')[0].pause()

  countdown: =>
    @time--
    $('section#ad h3').text "00:0#{@time}"
    if 0 >= @time
      clearInterval(@interval)
      $('section#ad h3').hide()
      $('body').removeClass 'no-scroll'
      $('header').css 'top', 0
      offset = $('blockquote#top').offset().top - $('header').outerHeight()
      $('html,body,document').animate({ scrollTop: offset }, { easing: 'swing', duration: 750 }) unless /^((?!chrome).)*safari|win/i.test(navigator.userAgent)
      skrollr.init()
