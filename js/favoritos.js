$(document).ready(function(){
    $.ajax({
        type: "POST",
        url: "data/applicationLayer.php",
        dataType: "json",
        data: {'action': 'GET_SESSION'},
        headers: {"Content-Type": "application/x-www-form-urlencoded"},
        success: function(jsonData) {
            $("#tablaFavoritos > tbody").html("");

            $.ajax({
                type: "POST",
                url: "data/applicationLayer.php",
                dataType: "json",
                data: {'action': 'DISPLAY_FAVORITES', 'email': jsonData.email},
                headers: {"Content-Type": "application/x-www-form-urlencoded"},
                success: function(jsonData2) {
                    var tabla = "";

                    for(var key in jsonData2) {
                        if(jsonData2[key] !== "COMPLETE") {
                            tabla += '<tr id="' + jsonData2[key].name + '">';
                            tabla += '<td class="cart_product"><img src="' + jsonData2[key].url + '" alt=""></td>';
                            tabla += '<td class="cart_description"><h4>' + jsonData2[key].name + '</h4><p>' + jsonData2[key].category + '</p></td>';
                            tabla += '<td class="cart_price"><p>$' + jsonData2[key].price + '</p></td>';
                            tabla += '<td class="cart_quantity"><div class="cart_quantity_button">';
                            tabla += '<a class="cart_quantity_up"> + </a>';
                            tabla += '<input class="cart_quantity_input" type="text" name="quantity" value="1" autocomplete="off" size="2">';
						    tabla += '<a class="cart_quantity_down"> - </a></div></td>';
                            tabla += '<td class="cart_total"><p class="cart_total_price">' + jsonData2[key].price + '</p></td>';
                            tabla += '<td class="cart_delete"><a class="cart_quantity_delete"><i class="fa fa-times"></i></a></td>';
                            tabla += '</tr>';
                        }
                    }

                    $("#tablaFavoritos > tbody").html(tabla);
                    $(".cart_quantity_up").on("click", function() {
                         var algo = $(this).parent().children()[1].value;
                         var precio = $(this).parent().parent().parent().children()[2].childNodes[0].innerHTML;
                         precio = precio.substring(1, precio.length);
                         precio = parseFloat(precio);
                         algo = parseInt(algo);
                         algo = algo + 1;
                         $(this).parent().children()[1].value = algo;
                         $(this).parent().parent().parent().children()[4].childNodes[0].innerHTML = precio * algo;
                    });

                    $(".cart_quantity_down").on("click", function() {
                         var algo = $(this).parent().children()[1].value;
                         var precio = $(this).parent().parent().parent().children()[2].childNodes[0].innerHTML;
                         precio = precio.substring(1, precio.length);
                         precio = parseFloat(precio);
                         algo = parseInt(algo);
                         if(algo > 1){
                            algo = algo - 1;
                         }
                         $(this).parent().children()[1].value = algo;
                         $(this).parent().parent().parent().children()[4].childNodes[0].innerHTML = precio * algo;
                    });

                    $(".cart_quantity_delete").on("click", function() {
                        var productName = $(this).parent().parent().children().first().next().children().first().html();

                        $.ajax({
                            type: "POST",
                            url: "data/applicationLayer.php",
                            dataType: "json",
                            data: {'action': 'REMOVE_FAVORITE', 'email': jsonData.email, 'product': productName},
                            headers: {"Content-Type": "application/x-www-form-urlencoded"},
                            success: function(jsonData3) {
                                swal({
                                  title: "Deleted!",
                                  text: jsonData3.success,
                                  type: "success"
                                },
                                function(){window.location.reload();});
                            },
                            error: function(errorMsg) {
                                swal("Oops...", errorMsg.statusText, "error");
                            }
                        });
                    });
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
