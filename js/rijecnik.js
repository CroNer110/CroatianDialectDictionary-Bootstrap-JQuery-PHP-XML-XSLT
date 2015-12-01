/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(document).ready(function () {

    function transfUrl() {
        var rijec = $('#autocomplete').val().toLowerCase();
        var url = 'transformation.php?rijec=' + encodeURIComponent(rijec);
        return url;
    }

    $("#search").click(function () {
        //document.getElementById("k").appendChild($xml);
        //$('#k').append(url);

        $("#table").load(transfUrl());
    });

    $("#autocomplete").autocomplete({
        source: "../util/search.php",
        minLength: 1
    });

    $("#autocomplete").keypress(function (e) {
        if (e.which === 13) {
            //document.getElementById("k").appendChild($xml);
            //$('#k').append(url);

            $("#table").load(transfUrl());
        }
    });

    $("#wordcount").load('util/countW.php');
});