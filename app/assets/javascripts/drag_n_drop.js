$(document).ready(function() {

	var updateIds = function (ids) {
		//aja


		$.ajax({
			url: '/portfolios/sort?',
			beforeSend: function(){
				console.log('beforeSend')
			},
			success: function(){
				console.log('success')
			},
			complete: function(jqXHR, textStatus){
				console.log('complete')
				debugger
			}
		})
	}

  $("#sortables").sortable({
  	stop: function( event, ui ) {
  		var ids = $('.card').map(function(){
  			return $(this).data('id')
  		})
  		updateIds(ids);
  	}
  }); 
});