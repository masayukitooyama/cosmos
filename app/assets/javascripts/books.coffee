class @BooksController

  index: ->
    swiper = new Swiper('.swiper-container', {
      pagination: '.swiper-pagination',
      nextButton: '.swiper-button-next',
      prevButton: '.swiper-button-prev',
      paginationClickable: true,
      spaceBetween: 30,
      centeredSlides: true,
      autoplay: 2000,
      autoplayDisableOnInteraction: false
    });

  search: ->
    that = this
    $('input').iCheck
      checkboxClass: 'icheckbox_flat-green',
      radioClass: 'iradio_flat-green'
    $('#search_from_exist_data').iCheck('check')


    $('#search_from_aws_data').on('ifChecked', ->
      $('.key').attr('disabled', '')
      $('.keyword').focus()
    )

    $('#search_from_exist_data').on('ifChecked', ->
      $('.key').removeAttr('disabled')
      $('.key').focus()
    )
