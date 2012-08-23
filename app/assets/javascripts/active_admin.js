//= require active_admin/base
//= require tinymce
$(function(){
  tinyMCE.init({
    mode: 'textareas',
    theme: 'advanced'
  });
	$('textarea').tinymce({
    theme: 'advanced',
    theme_advanced_buttons1 : "bold,italic,underline,|,forecolor,backcolor,|,bullist,numlist,|,undo,redo,|,link,unlink,anchor,image,code",
    theme_advanced_buttons2 : "justifyleft,justifycenter,justifyright,|,outdent,indent,blockquote,|,fontselect,fontsizeselect",
    theme_advanced_buttons3 : "",
    theme_advanced_toolbar_location : "top",
    theme_advanced_toolbar_align : "left"
	});
});