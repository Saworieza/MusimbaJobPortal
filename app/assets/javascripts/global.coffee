jQuery ->
    jQuery(document).on 'turbolinks:load', ->
      educations = $('#educations')
      count = educations.find('.count > span')
    
      recount = -> count.text educations.find('.nested-fields').size()
    
      educations.on 'cocoon:before-insert', (e, el_to_add) ->
        el_to_add.fadeIn(1000)
    
      educations.on 'cocoon:after-insert', (e, added_el) ->
        added_el.effect('highlight', {}, 500)
        recount()
    
      educations.on 'cocoon:before-remove', (e, el_to_remove) ->
        $(this).data('remove-timeout', 1000)
        el_to_remove.fadeOut(1000)
    
      educations.on 'cocoon:after-remove', (e, removed_el) ->
        recount()