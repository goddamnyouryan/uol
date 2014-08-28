(function() {
  var __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  Uol.Views.Video = (function(_super) {
    __extends(Video, _super);

    function Video() {
      return Video.__super__.constructor.apply(this, arguments);
    }

    Video.prototype.initialize = function(options) {
      this.$el.each((function(_this) {
        return function(i, video) {
          return video.canplay = $(video).parents('section').css('height', $(video).outerHeight());
        };
      })(this));
      return setInterval((function() {
        return $('video#bike-background')[0].play();
      }), 20000);
    };

    return Video;

  })(Backbone.View);

}).call(this);
