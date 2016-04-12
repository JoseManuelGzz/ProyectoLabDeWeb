$(document).ready(function(){
    $.ajax({
        type: "POST",
        url: "data/applicationLayer.php",
        dataType: "json",
        data: {'action': 'PRODUCTFILTER', 'category': 'Todas'},
        headers: {"Content-Type": "application/x-www-form-urlencoded"},
        success: function(jsonData) {
            var productos = "<h3>Todas las categorías</h3>";
            console.log(jsonData);
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
                    productos += "<h4><a href=\"\"> Add to Favorites </a></h4>";
                    productos += "</div>";
                    productos += "<div class=\"clear\"></div></div></div>";
                }
            }
            productos += "</div>";
            $("#divProductos").html(productos);
        },
        error: function(errorMsg) {
            alert(errorMsg.statusText);
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
                        productos += "<h4>" + jsonData[key].name + "</h4>";
                        productos += "<a href=\"preview.html\"><img src=\"" + jsonData[key].image_url + "\" alt=\"\" /></a>";
                        productos += "<div class=\"price-details\">";
                        productos += "<div class=\"price-number\">";
                        productos += "<p><span class=\"rupees\">$" + jsonData[key].price + "</span></p>";
                        productos += "</div>";
                        productos += "<div class=\"add-fav\">";
                        productos += "<h4><a href=\"\"> Add to Favorites </a></h4>";
                        productos += "</div>";
                        productos += "<div class=\"clear\"></div></div></div>";
                    }
                }
                productos += "</div>";
                $("#divProductos").html(productos);
            },
            error: function(errorMsg) {
                alert(errorMsg.statusText);
            }
        });
    });
})