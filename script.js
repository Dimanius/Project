$(document).ready(function(){
	$('.rate').click(function(){
		var _class = $(this).attr('class').split(' ');
		var _id = $(this).attr('id').split('_'); 
		_rating( _id[1], _class[1] );
		return false;
	});

});

function _rating(idpost, action) {
$.ajax({
		type: "POST",
		url: "rateaction.php",
		data: "idpost=" + idpost + "&action=" + action,
		success: function(html){
			$("#rateresult-" + idpost).html(html);
		}
	});
}