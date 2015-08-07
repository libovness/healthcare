$(document).ready(function(){

  $("input#email").focus(function() {
    if($(this).attr("placeholder") == "email@example.com") {
      $(this).attr("placeholder","")
    };
    $(this).addClass("active-input-email");
  });

  $('input#subscribe').click(function() {
    $('h4#input-caption').text('Great! Please check your email for confirmation.');
    $('form').hide();
    $('h4#input-caption').addClass("active-input-caption");
  });

  $('select').change(function() {
    selected = $(this).val();
    if(selected == 1) {
      window.location.href = "/intro";
    } else if (selected == 2) {
      window.location.href = "/part-I";
    } else if (selected == 3) {
      window.location.href = "/part-II";
    } else if (selected == 4) {
      window.location.href = "/part-III";
    } else if (selected == 5) {
      window.location.href = "/part-VI";
    } else if (selected == 6) {
      window.location.href = "/outro";
    }    
  });

  var page = window.location.pathname.split('/').pop();
  selector = $('select');
  if(page == 'intro') {
      selector.val("1");
    } else if (page == 'part-I') {
      selector.val("2");
    } else if (page == 'part-II') {
      selector.val("3");
    } else if (page == 'part-III') {
      selector.val("4");
    } else if (page == 'part-IV') {
      selector.val("5");
    } else if (page == 'outro') {
      selector.val("6");
  };
 
});