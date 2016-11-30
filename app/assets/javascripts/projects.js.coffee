init = () ->
  $('.qrcode').each () ->
    $(this).qrcode($(this).attr('data-qrcode'));

$(document).on 'ready page:load', init