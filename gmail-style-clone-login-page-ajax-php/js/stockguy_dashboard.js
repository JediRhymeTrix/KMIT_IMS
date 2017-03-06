/**
 * Created by Vedant on 06-Feb-17.
 */

$('[data-bjax]').bjax( {
    replace: false,
});

$('a').click(function(){
    $(this).addClass("visited");
    $(this).css({
        'color':'##E57B1C'
    })
});

$(document).ready(function() {

    if(Cookies.get('role') != 'Stock Room Staff') {
        $('#username').text('error');
        alert("Unauthorized Access!");
        window.location.href = "../index.html";
    } else {

        $.ajax({
            url: "../php/stockguy_dashboard.php",
            type: "POST",
            dataType: "JSON",
            data: {action: 'test'},

            success: function (data) {

                $('#username').text(data.name);

                $.each(data['stock'], function (part, qty) {
                    //console.log(data);
                    $("#stock").append("<li class='link' id='" + part + "' style='font-size: small'>" + part + " - " + qty + "<br></li>");
                });

                $('#mainContent').load('../pages/pending_requests.html');

                $('#pending').css({"color": "#ea7819"});
                $('#active').css({"color": "#929292"});
                $('#closed').css({"color": "#929292"});
                $('a:hover').css({"color": "#ea7819"});

                $('#restock_btn').click(function(e) {
                    e.preventDefault();

                    $('#stock').hide();
                    $('#restock').show();
                    $('#restock_gen').hide();
                    $('#restock_sub').show();

                    $.each(data['stock'], function (part, qty) {
                        //console.log(data);
                        $("#restock").append("<li class='link' id='" + part + "' style='font-size: smaller'><label id='" + part + "' style='width: 50%'>" + part + "</label><input class='restock_qty' type='number' id='"+ part +"' min='0' value='0' style='float: right; max-width: 3em; color: teal; background-color: white; border-radius: 5px; box-shadow: inset; margin: 2px; text-align: left;'><br></li>");
                    });

                    $('#restock_sub').click(function (e) {
                        e.preventDefault();

                        restock = {};

                        $.each(data['stock'], function (part, qty) {
                            console.log(document.forms["restock_form"][part].value);
                            restock[part] = document.forms["restock_form"][part].value;
                        });

                        console.log(restock);

                        $.ajax({
                         url: "../php/restock.php",
                         type: "POST",
                         data: { restock_form: restock },
                         dataType: "JSON",

                         success: function (data) {

                         alert('Stock added successfully');

                         $('body').load('../pages/stockguy_dashboard.html');

                         },
                         error: function () {
                         alert('No stock added. Going back...');
                         $('body').load('../pages/stockguy_dashboard.html');
                         }
                         });
                    })

                });

            },
            error: function () {
                $('#username').text('error');
                alert("You are not logged in!")
                window.location.href = "../index.html";
            }
        });
    }

    $('.link').click(function(e) {

        e.preventDefault();

        $('#mainContent').hide();
        $('#mainContent').show(1000).slideDown();

        var stat = this.id;

        switch (stat) {
            case 'pending': $('#mainContent').load('../pages/pending_requests.html'); //
                break;
            case 'active' : $('#mainContent').load('../pages/active_requests.html');
                break;
            case 'closed' : $('#mainContent').load('../pages/closed_requests.html');
                break;
        }
    });
});


