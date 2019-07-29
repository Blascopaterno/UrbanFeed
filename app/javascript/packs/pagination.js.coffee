if $('#with-button').size() > 0
    $('.pagination').hide()
    loading_complaints = false

    $('#load_more_complaints').show().click ->
      unless loading_complaints
        loading_complaints = true
        more_complaints_url = $('.pagination .next_page a').attr('href')
        $this = $(this)
        $this.html('<img src="/assets/ajax-loader.gif" alt="Loading..." title="Loading..." />').addClass('disabled')
        $.getScript more_complaints_url, ->
          $this.text('More posts').removeClass('disabled') if $this
          loading_complaints = false
      return
