window.Uol =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
    new Uol.Routers.Application
    Backbone.history.start pushState: Modernizr.history

$(document).ready ->
  Uol.initialize()
