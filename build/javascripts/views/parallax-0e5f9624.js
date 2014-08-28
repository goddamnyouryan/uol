(function() {
  var __bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; },
    __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  Uol.Views.Parallax = (function(_super) {
    __extends(Parallax, _super);

    function Parallax() {
      this.countdown = __bind(this.countdown, this);
      return Parallax.__super__.constructor.apply(this, arguments);
    }

    Parallax.prototype.initialize = function(options) {
      this.mobile = options.mobile;
      this.time = 5;
      this.pending = true;
      return $(window).scroll((function(_this) {
        return function() {
          _this.scroll = $(window).scrollTop();
          if (!_this.mobile) {
            _this.adLock();
          }
          _this.sectionFourVideo();
          _this.footerAd();
          return _this.bikesVideo();
        };
      })(this));
    };

    Parallax.prototype.adLock = function() {
      var ad;
      ad = $('section#ad').offset().top;
      if (this.scroll >= ad && this.time > 0) {
        $('body').addClass('no-scroll');
        $('section#ad h3').show();
        return this.interval = setInterval(this.countdown, 1000);
      }
    };

    Parallax.prototype.sectionFourVideo = function() {
      var four;
      four = $('section#four').offset().top;
      if (this.scroll >= four) {
        return $('section#four video').addClass('fixed');
      } else {
        return $('section#four video').removeClass('fixed');
      }
    };

    Parallax.prototype.footerAd = function() {
      var footer;
      footer = $('footer').offset().top;
      if (this.scroll >= footer && this.pending) {
        $('footer video')[0].play();
        return this.pending = false;
      }
    };

    Parallax.prototype.bikesVideo = function() {
      var marco;
      marco = $('#bikes video').offset().top + $('#bikes video').outerHeight();
      if (this.scroll >= marco) {
        return $('#bikes video')[0].pause();
      }
    };

    Parallax.prototype.countdown = function() {
      var offset;
      this.time--;
      $('section#ad h3').text("00:0" + this.time);
      if (0 >= this.time) {
        clearInterval(this.interval);
        $('section#ad h3').hide();
        $('body').removeClass('no-scroll');
        $('header').css('top', 0);
        offset = $('blockquote#top').offset().top - $('header').outerHeight();
        if (!/^((?!chrome).)*safari|win/i.test(navigator.userAgent)) {
          $('html,body,document').animate({
            scrollTop: offset
          }, {
            easing: 'swing',
            duration: 750
          });
        }
        return skrollr.init();
      }
    };

    return Parallax;

  })(Backbone.View);

}).call(this);
