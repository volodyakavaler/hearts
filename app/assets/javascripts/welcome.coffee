# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

fullHeight = ->
  $('#sidebarCollapse').on 'click', ->
    $('#sidebar').toggleClass 'active'
    return
  return

# fullHeight = ->
#   $('.js-fullheight').css 'height', $(window).height()
#   $(window).resize ->
#     $('.js-fullheight').css 'height', $(window).height()
#     return
#   return

$(document).on 'turbolinks:load', fullHeight # Включаем при ajax обновлении страницы
$(document).ready fullHeight # Включаем при обычном обновлении страницы
