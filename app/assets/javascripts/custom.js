$(document).ready(function() {


		// Fade in on page load.
	
		$('.content_wrap').hide()
		$('.content_wrap').fadeIn(500);

		// Project carousel.

    //rotation speed and timer
    var speed = 10000;
    var run = setInterval('rotate()', speed);   
     
    //grab the width and calculate left value
    var item_width = $('#slides .list_items').outerWidth(); 
    var left_value = item_width * (-1); 
         
    //move the last item before first item, just in case user click prev button
    $('#slides .list_items:nth-child(1)').before($('#slides .list_items:last'));
     
    //set the default item to the correct position 
    $('#slides .list').css({'left' : left_value});
 
    //if user clicked on prev button
    $('#prev').click(function() {
 
        //get the right position            
        var left_indent = parseInt($('#slides .list').css('left')) + item_width;
 
        //slide the item            
        $('#slides .list').animate({'left' : left_indent}, 200,function(){    
 
            //move the last item and put it as first item               
            $('#slides .list_items:nth-child(1)').before($('#slides .list_items:last'));           
 
            //set the default item to correct position
            $('#slides .list').css({'left' : left_value});
         
        });
 
        //cancel the link behavior            
        return false;
             
    });
 
  
    //if user clicked on next button
    $('#next').click(function() {
         
        //get the right position
        var left_indent = parseInt($('#slides .list').css('left')) - item_width;
         
        //slide the item
        $('#slides .list').animate({'left' : left_indent}, 200, function () {
             
            //move the first item and put it as last item
            $('#slides .list_items:last').after($('#slides .list_items:nth-child(1)'));                  
             
            //set the default item to correct position
            $('#slides .list').css({'left' : left_value});
         
        });
                  
        //cancel the link behavior
        return false;
         
    });        
     
    //if mouse hover, pause the auto rotation, otherwise rotate it
    $('#slides').hover(
         
        function() {
            clearInterval(run);
        }, 
        function() {
            run = setInterval('rotate()', speed);   
        }
    ); 
         
});
 
//a simple function to click next link
//a timer will call this function, and the rotation will begin :)  
function rotate() {
    $('#next').click();
}

