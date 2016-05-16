$(document).ready(function(){
    var email = "";

    $.ajax({
        type: "POST",
        url: "data/applicationLayer.php",
        dataType: "json",
        data: {'action': 'GET_SESSION'},
        headers: {"Content-Type": "application/x-www-form-urlencoded"},
        success: function(jsonData) {
            email = jsonData.email;

            var navContent = '<li class="hidden"><a href="#page-top"></a></li>';
            navContent += '<li class="dropdown">';
            navContent += '<a class="page-scroll" href="#clases" data-toggle="dropdown">Clases</a>';
            navContent += '<ul class="dropdown-menu">';
            navContent += '<li><a href="escuelaDeEscalada.html">Escalada</a></li>';
            navContent += '<li><a href="escuelaDeYoga.html">Yoga</a></li>';
            navContent += '<li><a href="escuelaDeIdiomas.html">Idiomas</a></li>';
            navContent += '<li><a href="escuelaDeMusica.html">Musica</a></li></ul></li>';
            navContent += '<li><a class="" href="favoritos.html">Favoritos</a></li>';
            navContent += '<li><a id="logoutButton" class="">Logout</a></li>'

            $("#navBar").html(navContent);

            $("#logoutButton").on("click", function() {
                $.ajax({
                    type: "POST",
                    url: "data/applicationLayer.php",
                    dataType: "json",
                    data: {'action': 'LOGOUT'},
                    headers: {"Content-Type": "application/x-www-form-urlencoded"},
                    success: function(jsonData) {
                        location.reload();
                    },
                    error: function(errorMsg) {
                        console.log(errorMsg.statusText);
                    }
                });
            });
        },
        error: function(errorMsg) {
            console.log(errorMsg.statusText);
        }
    });

    $.ajax({
        type: "POST",
        url: "data/applicationLayer.php",
        dataType: "json",
        data: {'action': 'PRODUCTFILTER', 'category': 'Todas'},
        headers: {"Content-Type": "application/x-www-form-urlencoded"},
        success: function(jsonData) {
            var productos = "<h3>Todas las categorías</h3>";
            for(var key in jsonData) {
                if(jsonData[key] !== "OK") {
                    productos += "<div class=\"col-sm-3 producto\">";
                    productos += "<h4>" + jsonData[key].name + "</h4>";
                    productos += "<a href=\"preview.html\"><img src=\"" + jsonData[key].image_url + "\" alt=\"\" /></a>";
                    productos += "<div class=\"price-details\">";
                    productos += "<div class=\"price-number\">";
     				productos += "<p><span class=\"rupees\">$" + jsonData[key].price + "</span></p>";
     				productos += "</div>";
                    productos += "<div class=\"add-fav\">";
                    productos += "<h4><a class=\"addFavorites\"> Add to Favorites </a></h4>";
                    productos += "</div>";
                    productos += "<div class=\"clear\"></div></div></div>";
                }
            }
            productos += "</div>";
            $("#divProductos").html(productos);

            $(".addFavorites").on('click', function() {
                var productName = $(this).parent().parent().parent().parent().children().first().html();

                if(email === "") {
                    swal("Oops...", "You have to login first to add a favorite.", "error");
                }
                else {
                    $.ajax({
                        type: "POST",
                        url: "data/applicationLayer.php",
                        dataType: "json",
                        data: {'action': 'ADD_FAVORITE', 'product': productName, 'email': email},
                        headers: {"Content-Type": "application/x-www-form-urlencoded"},
                        success: function(jsonData) {
                            swal({
                              title: "",
                              text: jsonData.success,
                              type: "success"
                            });
                        },
                        error: function(errorMsg) {
                            swal("Oops...", errorMsg.statusText, "error");
                        }
                    });
                }
            });
        },
        error: function(errorMsg) {
            console.log(errorMsg.statusText);
        }
    });

    $(".filtro").on("click", function() {
        var categoria = $(this).attr("id");
        var categoriaInterna = $(this).html();

        $.ajax({
            type: "POST",
            url: "data/applicationLayer.php",
            dataType: "json",
            data: {'action': 'PRODUCTFILTER', 'category': categoria},
            headers: {"Content-Type": "application/x-www-form-urlencoded"},
            success: function(jsonData) {
                var productos = "<h3>" + categoriaInterna + "</h3>";
                console.log(jsonData);
                for(var key in jsonData) {
                    if(jsonData[key] !== "OK") {
                        productos += "<div class=\"col-sm-3 producto\">";
                        productos += "<h4 class=\"nameHandler\">" + jsonData[key].name + "</h4>";
                        productos += "<a class=\"preview-details\"><img src=\"" + jsonData[key].image_url + "\" alt=\"\" /></a>";
                        productos += "<div class=\"price-details\">";
                        productos += "<div class=\"price-number\">";
                        productos += "<p><span class=\"rupees\">$" + jsonData[key].price + "</span></p>";
                        productos += "</div>";
                        productos += "<div class=\"add-fav\">";
                        productos += "<h4><a class=\"addFavorites\"> Add to Favorites </a></h4>";
                        productos += "</div>";
                        productos += "<div class=\"clear\"></div></div></div>";
                    }
                }
                productos += "</div>";
                $("#divProductos").html(productos);

                $(".preview-details").on('click', function() {
                    var name = $(".nameHandler").html();
                    $.ajax({
                        type: "POST",
                        url: "data/applicationLayer.php",
                        dataType: "json",
                        data: { 'nameP': name , 'action' :'SETPREVIEW'},
                        headers: {"Content-Type": "application/x-www-form-urlencoded"},
                        success: function() {
                            window.location.replace('preview.html');
                        },
                        error: function (errorMsg) {
                            swal("Oops...", errorMsg.statusText, "error");
                        }

                    });
                });


                $(".addFavorites").on('click', function() {
                    var productName = $(this).parent().parent().parent().parent().children().first().html();

                    if(email === "") {
                        swal("Oops...", "You have to login first to add a favorite.", "error");
                    }
                    else {
                        $.ajax({
                            type: "POST",
                            url: "data/applicationLayer.php",
                            dataType: "json",
                            data: {'action': 'ADD_FAVORITE', 'product': productName, 'email': email},
                            headers: {"Content-Type": "application/x-www-form-urlencoded"},
                            success: function(jsonData) {
                                swal({
                                title: "",
                                text: jsonData.success,
                                type: "success"
                                });
                            },
                            error: function(errorMsg) {
                                swal("Oops...", errorMsg.statusText, "error");
                            }
                        });
                    }
                });
            },
            error: function(errorMsg) {
                console.log(errorMsg.statusText);
            }
        });
    });
})
