(function() {
  var __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  Uol.Routers.Application = (function(_super) {
    __extends(Application, _super);

    function Application() {
      return Application.__super__.constructor.apply(this, arguments);
    }

    Application.prototype.routes = function() {
      return {
        '': 'home'
      };
    };

    Application.prototype.initialize = function() {
      return this.mobile = /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent);
    };

    Application.prototype.home = function() {
      new Uol.Views.Parallax({
        el: 'body',
        mobile: this.mobile
      });
      new Uol.Views.Slider({
        el: '#slider'
      });
      if (!this.mobile) {
        new Uol.Views.Video({
          el: 'video'
        });
      }
      new Uol.Views.BikeVideo({
        el: '#bikes'
      });
      new Uol.Views.Header({
        el: 'header',
        mobile: this.mobile
      });
      return new Uol.Views.Twitter({
        el: '#twitter'
      });
    };

    return Application;

  })(Backbone.Router);

}).call(this);
