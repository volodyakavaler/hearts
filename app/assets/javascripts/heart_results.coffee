# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
render_sinus = ->
  ctx = document.getElementById('sinusResult').getContext('2d')
  x = new Chart(ctx,
    type: 'scatter'
    # data:
    data: datasets: [ {
      label: 'Test'
      data: sinusResult
      showLine: true
      lineTension: 0
      fill: false
      borderColor: 'rgb(75, 192, 192)'
    } ]
    options: responsive: true)

$(document).on 'turbolinks:load', render_sinus # Включаем при ajax обновлении страницы
$(document).ready render_sinus # Включаем при обычном обновлении страницы
