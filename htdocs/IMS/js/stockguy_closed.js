/**
 * Created by jrt on 08-Feb-17.
 */
/**
 * Created by Vedant on 06-Feb-17.
 */

$('[data-bjax]').bjax( {
    replace: false,
});

$(document).ready(function() {

    $('#pending').css({"color":"#929292"});
    $('#active').css({"color":"#929292"});
    $('#closed').css({"color":"#ea7819"});

    var role = Cookies.get('role');

    if(role == 'Stock Room Staff') {

        $.ajax({
            url: "../php/stockguy_requests.php",
            type: "POST",
            dataType: "JSON",
            data: {status: 'closed', status1: 'closed'},

            success: function (data) {

                if(data.length == 0)
                    $("#mainContent").append('<h2 id="nothing2see" align="center" style="vertical-align: 50%; color: darkgrey; padding-top: 50px;">Nothing to see here!</h2>');
                else
                    $("#nothing2see").hide();

                $("#requests").empty();
                console.log(data.length);

                /*var unq ={};

                 $.each(data, function(i, item) {
                 if ($.inArray(item, unq) === -1) {
                 unq.push(item);
                 }
                 });*/

                //var data2 = data;

                var c = 0;

                $.each(data, function (i, item) {
                    console.log(data[i].req_date);
                    //console.log(data);
                    $("#requests").append("<li class='system' id='" + data[i].req_id + "'><a href='#' class='req_is'>request#" + data[i].req_id + "</a><div class='parts' id='parts_" + data[i].req_id + "'><br><span class='req_list'>Date: " + data[i].req_date + "</span><span class='req_list'>Time: " + data[i].req_time + "</span><span class='req_list'>Lab: " + data[i].lab_name + "</span><table class='parts_table' id='parts_table"+data[i].req_id+"'><tr><th>Parts</th><th>Quantity</th></tr></table><span class='req_list'>Status: " + data[i].status + "</span></div></li>");

                    $.each(data[i].parts_inrepair, function (x, item) {
                        $('#parts_table'+data[i].req_id).append("<tr><td class='part_names'>"+item+"</td><td>"+data[i].quantity[item]+"</td></tr>")
                    });

                    c++;
                });

                console.log(c);


            },
            error: function () {
                console.log('error');
            }
        });
    }
});


