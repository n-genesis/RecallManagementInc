/**
 * @author andrewnite
 * Author: Andrew Nite <info@ngendesign.net>
 * "Building to simply build"
 */
$(function(){
	/**
	 * hide scrollbar for window to support
	 * overlay on pageload feature
	 */
	
	//Home Video banner
    var homeVideo = document.getElementById('video-bg');
    
	/* */
	 $('#preloader').delay(450).fadeOut(function(){
		//Empty for now
	 }); 
	 // will fade out the white DIV that covers the website. 
	 $('body').delay(350).css({'overflow':'visible'});
  
});

/*--------------------------------------------------------------------------
 Image modal effect
 --------------------------------------------------------------------------*/
//$('[data-sandbox="demo"]').on('click',sandboxModal.demoModal);
