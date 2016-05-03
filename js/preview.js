$(document).ready(function(){
$("#Backbutton").on("click", function() {
	window.location.replace('tienda.html');
	});
              
                    
                    $.ajax({
                        type: "POST",
                        url: "data/applicationLayer.php",
                        dataType: "json",
                        data: { 'action': 'PREVIEW'},
                        headers: {"Content-Type": "application/x-www-form-urlencoded"},
                        success: function(jsonData) {
                        	for(var key in jsonData) {
                    			if(jsonData[key] !== "OK") {
                            		$("#nameProd").html (jsonData[key].name);
                            		$("#categoryProd").html (jsonData[key].category);
                            		$("#priceProd").html( "$ "+jsonData[key].price)
                            		$("#imageProd").attr('src', jsonData[key].image_url);
                        		}
                        	}

                        }, 
                        error: function (errorMsg) {
                            alert("Oops..." +  "error");
                        }

                    });
                

});