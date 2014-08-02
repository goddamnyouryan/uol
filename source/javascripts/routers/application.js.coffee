class Uol.Routers.Application extends Backbone.Router

  routes: ->
    '': 'home'

  home: ->
    new Uol.Views.Parallax el: 'body'
    new Uol.Views.Slider el: '#slider'
    new Uol.Views.Video el: 'video'
