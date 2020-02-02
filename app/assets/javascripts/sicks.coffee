# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/




btnshowlifeanamnese = ->
  $('#btnshowlifeanamnese').on 'click', ->
    $('#lifeanamnese').toggle()


$(document).ready btnshowlifeanamnese # Включаем при обычном обновлении страницы
$(document).on 'turbolinks:load', btnshowlifeanamnese # Включаем при ajax обновлении страницы
