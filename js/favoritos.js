$(document).ready(function(){
    $.ajax({
        type: "POST",
        url: "data/applicationLayer.php",
        dataType: "json",
        data: {'action': 'GET_SESSION'},
        headers: {"Content-Type": "application/x-www-form-urlencoded"},
        success: function(jsonData) {
        },
        error: function(errorMsg) {
            window.location.href = "tienda.html";
        }
    });
});