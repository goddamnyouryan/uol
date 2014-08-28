(function() {
  var __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  Uol.Views.Slider = (function(_super) {
    __extends(Slider, _super);

    function Slider() {
      return Slider.__super__.constructor.apply(this, arguments);
    }

    Slider.prototype.initialize = function(options) {
      return this.$el.twentytwenty();
    };

    return Slider;

  })(Backbone.View);

}).call(this);
