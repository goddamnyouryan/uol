class Uol.Routers.Application extends Backbone.Router

  routes: ->
    '': 'home'

  initialize: ->
    @mobile = /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent)

  home: ->
    new Uol.Views.Parallax el: 'body', mobile: @mobile
    new Uol.Views.Slider el: '#slider'
    new Uol.Views.Video el: 'video' unless @mobile
    new Uol.Views.BikeVideo el: '#bikes'
    new Uol.Views.Header el: 'header', mobile: @mobile
    new Uol.Views.Audio el: '#audio'
    new Uol.Views.Twitter el: '#twitter'
