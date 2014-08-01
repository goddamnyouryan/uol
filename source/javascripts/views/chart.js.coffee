class Uol.Views.Chart extends Backbone.View

  initialize: (options) ->
    @getFieldValues()
    @setupSlider '#bike', @bike, 100, 1000
    @setupSlider '#car', @car, 5000, 50000
    @draw()

  events: ->
    'change input[type=text]': 'reDraw'


  events: ->
    'change input[type=text]': 'reDraw'

  setupSlider: (selector, value, min, max) ->
    @$(selector).slider
      orientation: 'vertical'
      value: value
      min: min
      max: max
      change: (event, ui) =>
        value = ui.value
        target = $(event.target)
        target.find('aside').text value
        @reDraw target, value

  getFieldValues: ->
    @bike = parseInt @$('#bike aside').text()
    @car = parseInt @$('#car aside').text()

  reDraw: (element, value) ->
    if element.attr('id') == 'car'
      @series(0).setData @dataArray(value)
    else
      @series(1).setData @dataArray(value)

  dataArray: (modifier) ->
    _.map(_.range(10), (num) => num * modifier)

  series: (index) ->
    Highcharts.charts[0].series[index]

  draw: ->
    @$('#draw').highcharts
      chart:
        type: 'area'

      title:
        text: 'Cost of Having a Bike vs. Car'

      xAxis:
        allowDecimals: false
        labels:
          formatter: ->
            @value

      yAxis:
        title:
          text: 'Cost in Reis'

        labels:
          formatter: ->
            'R$' + @value

      tooltip:
        pointFormat: '{series.name} produced <b>{point.y:,.0f}</b><br/>warheads in {point.x}'

      plotOptions:
        area:
          pointStart: 2014
          marker:
            enabled: false
            symbol: 'circle'
            radius: 2
            states:
              hover:
                enabled: true

      series: [
        {
          name: 'Car'
          data: @dataArray(@car)
        }
        {
          name: 'Bike'
          data: @dataArray(@bike)
        }
      ]
