(function() {
  var __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  Uol.Views.Twitter = (function(_super) {
    __extends(Twitter, _super);

    function Twitter() {
      return Twitter.__super__.constructor.apply(this, arguments);
    }

    Twitter.prototype.initialize = function(options) {
      var config;
      config = {
        'id': '496022391898644481',
        'domId': 'twitter',
        'enableLinks': true,
        'showUser': true,
        'showTime': true,
        'showInteraction': false,
        'maxTweets': 8
      };
      return twitterFetcher.fetch(config);
    };

    return Twitter;

  })(Backbone.View);

}).call(this);
