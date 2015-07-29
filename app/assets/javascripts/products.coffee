$ ->
  $('.furnature').masonry
    itemSelector: '.product'
    columnWidth: '.grid-sizer'
    gutter: 13

  $('.quick_info').click ->
    if $(this).next().hasClass('hidden')
      $(this).next().toggleClass 'hidden'
      $('.plus', this).text '-'
      $('.product').matchHeight()
      $('.furnature').masonry()
    else
      $(this).next().toggleClass 'hidden'
      $('.plus', this).text '+'
      $('.product').matchHeight()
      $('.furnature').masonry()
    return

  fields = {}

  $('#form_button').click (event) ->
    event.preventDefault()
    $('#contact_form').find("input").each ->
      fields[this.name] = $(this).val()
    $.ajax(
      dataType: 'jsonp'
      url: 'http://getsimpleform.com/messages/ajax?form_api_token=bf30ac2719744ce3c1672631ca5899d4'
      data:
        name: fields.name
        email: fields.email).done ->
      $('.footer_alert').html 'Thanks, ' + fields.name + ', be on the lookout for an email from us!'
      $('.footer_alert').css('color', '#ffa409')
      $('#contact_form').find('input').each ->
        $(this).val('')
      return


