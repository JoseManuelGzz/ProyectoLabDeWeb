$(document).ready(function(){
	$("#Backbutton").on("click", function() {
		window.location.replace('tienda.html');
	});

	  $.ajax({
                    type: "POST",
                    url: "data/applicationLayer.php",
                    dataType: "json",
                    data: {'action': 'PREVIEW'},
                    headers: {"Content-Type": "application/x-www-form-urlencoded"},
                    success: function(jsonData) {
                    	var nombre =  "<h2>" + jsonData.name + "</h2>";
                    	var precio = "<h1>" + jsonData.price  + "</h2>";
                    	var imagen = "<img src= \"" + jsonData.image + "\" href=\"#prev\" class=\"thumbnail\">";
                    	var info = nombre + precio
                    	$("#theImage").html (imagen);
                    	$("#theInfo").html (info);
                    	alert ("deed is done");

                    }, 
                    failure: function(){

                    }
                });

});