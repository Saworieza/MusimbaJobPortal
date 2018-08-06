# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery(document).on 'turbolinks:load', ->
  branches = $('#branches')
  count = branches.find('.count > span')

  recount = -> count.text branches.find('.nested-fields').size()

  branches.on 'cocoon:before-insert', (e, el_to_add) ->
    el_to_add.fadeIn(900)

  branches.on 'cocoon:before-remove', (e, el_to_remove) ->
    $(this).data('remove-timeout', 800)
    el_to_remove.fadeOut(800)

  branches.on 'cocoon:after-remove', (e, removed_el) ->
    recount()
