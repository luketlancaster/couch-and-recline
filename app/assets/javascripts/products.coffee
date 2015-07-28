$ ->
  $('.furnature').masonry
    itemSelector: '.product'
    columnWidth: '.grid-sizer'
    gutter: 13

  #$('.quick_info').click ->
    #$(this).next().toggleClass("hidden")
    #$('.plus', this).text("-")


  $('.quick_info').click ->
    if $(this).next().hasClass('hidden')
      $(this).next().toggleClass 'hidden'
      $('.plus', this).text '-'
      $('.furnature').masonry()
    else
      $(this).next().toggleClass 'hidden'
      $('.plus', this).text '+'
      $('.furnature').masonry()
    return

