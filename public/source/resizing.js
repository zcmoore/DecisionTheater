var vp;

(function($, document, window, viewport){
	vp = viewport;
	
	if( viewport.is('<=sm') ) {
		$('.menuClass').addClass('isSmall');
	}
    // Executes only in XS breakpoint
   /*if( viewport.is('xs') ) {
        console.log('is xs');
    }

    // Executes in SM, MD and LG breakpoints
    if( viewport.is('>=sm') ) {
        console.log('is sm md lg');
    }

    // Executes in XS and SM breakpoints
    if( viewport.is('<md') ) {
       console.log('is xs sm');
    }*/
	
	var changeClassBasedOnSize = function (){
		$('.menuClass').removeClass('isSmall');
		$('.menuClass').removeClass('isXS');
		if( viewport.is('<=sm') ) {
			$('.menuClass').addClass('isSmall');
		}
		
		if( viewport.is('xs') ) {
			$('.menuClass').addClass('isXS');
		}
	};

    // Execute code each time window size changes
	window.addEventListener('resize', 
	function(){
		viewport.changed(function(){
			changeClassBasedOnSize();
        });;
	}, false);


})(jQuery, document, window, ResponsiveBootstrapToolkit);

//style="overflow-y: scroll; height:400px