(function() {
  window.Uol = {
    Models: {},
    Collections: {},
    Views: {},
    Routers: {},
    initialize: function() {
      new Uol.Routers.Application;
      return Backbone.history.start({
        pushState: Modernizr.history
      });
    }
  };

  $(document).ready(function() {
    return Uol.initialize();
  });

}).call(this);
