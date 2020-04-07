
r = ->
  for i in [0..xs.length-1]
    ctx = document.getElementById('myChart'+i).getContext('2d')
    dataFirst =
      label: moment(xs[i][0]*1000).format("DD.MM.YYYY HH:mm:ss")
      data: ys[i]
      lineTension: 0.3
      pointRadius: 0
      fill: false
      borderColor: 'black'

    speedData =
      # labels: (Date(elem).toString().slice(16, 24) for elem in xs[i])
      labels: (moment(elem*1000).format("DD.MM HH:mm:ss") for elem in xs[i])
      datasets: [
        dataFirst
      ]
    lineChart = new Chart(ctx,
      type: 'line'
      data: speedData)

$(document).on 'turbolinks:render', r # Включаем при ajax обновлении страницы
$(document).ready r # Включаем при обычном обновлении страницы
