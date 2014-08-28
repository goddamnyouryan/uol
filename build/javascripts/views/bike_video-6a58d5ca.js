(function() {
  var __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  Uol.Views.BikeVideo = (function(_super) {
    __extends(BikeVideo, _super);

    function BikeVideo() {
      return BikeVideo.__super__.constructor.apply(this, arguments);
    }

    BikeVideo.prototype.events = function() {
      return {
        'click li.video': 'playVideo',
        'click span': 'removeVideo',
        'click video': 'toggleVideo'
      };
    };

    BikeVideo.prototype.playVideo = function() {
      this.$('video').css({
        opacity: 1,
        height: 'auto'
      });
      this.$('span').show();
      this.$('video').on('ended', (function(_this) {
        return function(e) {
          return _this.removeVideo();
        };
      })(this));
      return this.$('video')[0].play();
    };

    BikeVideo.prototype.removeVideo = function() {
      this.$('video')[0].pause();
      this.$('video').css({
        opacity: 0,
        height: 0
      });
      return this.$('span').hide();
    };

    BikeVideo.prototype.toggleVideo = function() {
      if (this.$('video')[0].paused) {
        return this.$('video')[0].play();
      } else {
        return this.$('video')[0].pause();
      }
    };

    return BikeVideo;

  })(Backbone.View);

}).call(this);
