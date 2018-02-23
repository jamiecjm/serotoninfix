

$(document).ready(function(){

		if ($('.image-grid').length > 0){
			window.shuffleInstance = new window.Shuffle(document.getElementsByClassName('image-grid')[0], {
			  itemSelector: '.image-grid-cell',
			  sizer: '.my-sizer-element',
			});		
		}		
	
});