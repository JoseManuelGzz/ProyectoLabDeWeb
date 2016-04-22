$(document).ready(function(){
    var email;
    
    $.ajax({
        type: "POST",
        url: "data/applicationLayer.php",
        dataType: "json",
        data: {'action': 'GET_SESSION'},
        headers: {"Content-Type": "application/x-www-form-urlencoded"},
        success: function(jsonData) {
            $.ajax({
                type: "POST",
                url: "data/applicationLayer.php",
                dataType: "json",
                data: {'action': 'DISPLAY_FAVORITES', 'email': jsonData.email},
                headers: {"Content-Type": "application/x-www-form-urlencoded"},
                success: function(jsonData2) {
                    var tabla = "";
                    console.log(jsonData2);
                    
                    for(var key in jsonData2) {
                        if(jsonData2[key] !== "COMPLETE") {
                            tabla += '<tr>';
                            tabla += '<td class="cart_product"><img src="' + jsonData2[key].url + '" alt=""></td>';
                            tabla += '<td class="cart_description"><h4>' + jsonData2[key].name + '</h4><p>' + jsonData2[key].category + '</p></td>';
                            tabla += '<td class="cart_price"><p>$' + jsonData2[key].price + '</p></td>';
                            tabla += '<td class="cart_quantity"><div class="cart_quantity_button">';
                            tabla += '<a class="cart_quantity_up" href=""> + </a>';
                            tabla += '<input class="cart_quantity_input" type="text" name="quantity" value="1" autocomplete="off" size="2">';
						    tabla += '<a class="cart_quantity_down" href=""> - </a></div></td>';
                            tabla += '<td class="cart_total"><p class="cart_total_price">' + jsonData2[key].price + '</p></td>';
                            tabla += '<td class="cart_delete"><a class="cart_quantity_delete" href=""><i class="fa fa-times"></i></a></td>';
                            tabla += '</tr>';
                        }
                    }
                    
                    $("#tablaFavoritos > tbody").html(tabla);
                },
                error: function(errorMsg) {
                    console.log(errorMsg.statusText);
                }
            });
        },
        error: function(errorMsg) {
            window.location.href = "tienda.html";
        }
    });   
});