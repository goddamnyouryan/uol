class Uol.Views.Twitter extends Backbone.View

  initialize: (options) ->
    config = {
      'id': '496022391898644481'
      'domId': 'twitter'
      'enableLinks': true
      'showUser': true
      'showTime': true
      'showInteraction': false
      'maxTweets': 8
    }
    twitterFetcher.fetch(config)
