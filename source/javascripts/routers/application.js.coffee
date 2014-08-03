class Uol.Routers.Application extends Backbone.Router

  routes: ->
    '': 'home'

  home: ->
    new Uol.Views.Parallax el: 'body'
    new Uol.Views.Slider el: '#slider'
    new Uol.Views.Video el: 'video'
    new Uol.Views.BikeVideo el: '#bikes'
    new Uol.Views.Header el: 'header'
    new Uol.Views.Audio el: '#audio'
    new Uol.Views.Twitter el: '#twitter'
