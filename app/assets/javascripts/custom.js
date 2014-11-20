$(document).ready(function($) {
	$('div.groceries, a.back-home').fadeIn(1500);
  $('li:even').css({'background-color': '#ccc', 'border-radius': '8px', 'display': 'block', 'margin-top': '1em', 'padding': '.5em 0 .5em 2em'});

  $('li:even').on('mouseenter', function() {
    $(this).css('background-color', '#f7941d');
  })
  .on('mouseleave', function() {
      var styles = { backgroundColor: '#ccc' };
      $(this).css(styles);
  });
  $('.new-item').hover(function() {
      $(this).attr('src', 'add-icon.png').css('opacity', '.5');
  }, function() {
      $(this).attr('src', 'add-icon.png').css('opacity', '1');
  });
  $('input :text').blur().css('background-color', '#f7941d');
});
