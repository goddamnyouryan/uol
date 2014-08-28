(function() {
  var __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  Uol.Views.Header = (function(_super) {
    __extends(Header, _super);

    function Header() {
      return Header.__super__.constructor.apply(this, arguments);
    }

    Header.prototype.initialize = function(options) {
      if (!options.mobile) {
        return this.$el.css('top', "-" + (this.$el.outerHeight()) + "px");
      }
    };

    return Header;

  })(Backbone.View);

}).call(this);
