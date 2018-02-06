(function (window, $) {
	'use strict';

	// Cache document for fast access.
	var document = window.document;


	$('a.toggle-menu').click(function(){
        $('ul.menu').fadeToggle("slow");
    });


    var owl = $("#owl-demo");
 
		owl.owlCarousel({
	    	items : 6
		});
	 
		// Custom Navigation Events
		$(".next").click(function(){
	    	owl.trigger('owl.next');
		})
		$(".prev").click(function(){
	    	owl.trigger('owl.prev');
		})





})(window, jQuery);

/*
$(document).on
 -> "page:change", ->
  $("#progress_yes").click ->
    alert "Bravo!" 
id = $(".comments yes").val();
	a = $(this).find("span").attr("id");$.ajax({
                type: "POST",
                url: "/post/vote/"+id,
                dataType: "html",
                success:function(data){
                $('#proizvodi').html(data);

                type: 'POST',
        'url': '/post/vote/',
        data: {id:id},
        success:function(data){
        	$('#proizvodi').html(data);
    	}
            }
        });
*/
$(document).ready(function(){
	id = $("#progress_yes").attr("value");
	$('#progress_yes').on('click', function(){	
		//alert('Bravo ' + id + '!');
		$.ajax({	
        type: 'POST',
        url: '/posts/vote/' + id,
        data: {id:id},
        success:function(data){
        	$('#proizvodi').html(data);
    	}
    	});
	});
});