# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

points = []
App.pointset = App.cable.subscriptions.create "PointsetChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    alert("Срочно обратить внимание! " + document.getElementById("mycanvas").getAttribute("uid"))
    # Called when the subscription has been terminated by the server

  received: (data) ->
    # alert(data.data)
    if data.uid == document.getElementById("mycanvas").getAttribute("uid")
      points.push data.data

g = ->
  smoothie = new SmoothieChart(
    tooltip:true
    horizontalLines: [
        {
          color: '#FF0000'
          lineWidth: 1
          value: 0
        }
      ]

  );
  smoothie.streamTo(document.getElementById("mycanvas"), 3000);

  line1 = new TimeSeries
  # Add a random value to each line every second
  setInterval (->
    line1.append (new Date).getTime(), points[0]
    points.shift()
    return
  ), 100
  # Add to SmoothieChart
  smoothie.addTimeSeries(line1, lineWidth: 2.5, strokeStyle: '#00fa00')

$(document).on 'turbolinks:load', g # Включаем при ajax обновлении страницы
$(document).ready g # Включаем при обычном обновлении страницы
