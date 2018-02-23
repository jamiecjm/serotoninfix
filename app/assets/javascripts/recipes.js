
$( document ).on('turbolinks:load', function() {
	window.shuffleInstance = new window.Shuffle(document.getElementsByClassName('image-grid')[0], {
	  itemSelector: '.image-grid-cell',
	  sizer: '.my-sizer-element',
	});
});