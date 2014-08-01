class Uol.Routers.Application extends Backbone.Router

  routes: ->
    '': 'home'

  home: ->
    new Uol.Views.Chart el: '#chart'
