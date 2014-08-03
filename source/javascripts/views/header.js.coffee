class Uol.Views.Header extends Backbone.View

  initialize: (options) ->
    @$el.css 'top', "-#{@$el.outerHeight()}px" unless options.mobile
