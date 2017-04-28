/**
 * Created by Vedant on 06-Feb-17.
 */

$('[data-bjax]').bjax( {
    replace: false,
});

$(document).ready(function() {

    $('#pending').css({"color":"#ea7819"});
    $('#active').css({"color":"#929292"});
    $('#closed').css({"color":"#929292"});

    var role = Cookies.get('role');

    if(role == 'Stock Room Staff') {

        $.ajax({
            url: "../php/stockguy_requests.php",
            type: "POST",
            dataType: "JSON",
            data: {status: 'pending', status1: 'incomplete'},

            success: function (data) {

                var last = data[0].req_id;


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

                if(data.length == 0)
                    $("#mainContent").append('<h2 id="nothing2see" align="center" style="vertical-align: 50%; color: darkgrey; padding-top: 50px;">Nothing to see here!</h2>');
                else
                    $("#nothing2see").hide();

                $.each(data, function (i, item) {
                    console.log(data[i].req_date);
                    //console.log(data);
                    $("#requests").append("<li class='system' id='" + data[i].req_id + "'><input type='button' class='req_button' name='" + data[i].req_id + "' value='accept request' title='dummy'/><a href='#' class='req_is'>request#" + data[i].req_id + "</a><div class='parts' id='parts_" + data[i].req_id + "'><br><span class='req_list'>Date: " + data[i].req_date + "</span><span class='req_list'>Time: " + data[i].req_time + "</span><span class='req_list'>Lab: " + data[i].lab_name + "</span><form id='allot_"+data[i].req_id+"'><table class='parts_table' id='parts_table"+data[i].req_id+"'><tr><th>Parts</th><th>Quantity (requested)</th><th>Quantity (pending)</th><th>Allot Parts</th></tr></table></form></span><span class='req_list'>Status: " + data[i].status + "</span></div></li>");

                    $.each(data[i].parts_inrepair, function (x, item) {
                        $('#parts_table'+data[i].req_id).append("<tr><td class='part_names'>"+item+"</td><td>"+data[i].quantity[item]+"</td><td>"+data[i].pending[item]+"</td><td><input type='number' min='0' max='"+data[i].maximums[item]+"' id='"+item+"' name='"+item+"' value='"+data[i].maximums[item]+"' style='color: teal; background-color: white; border-radius: 5px; box-shadow: inset; margin: 2px; text-align: center;' /></td></tr>")
                    });

                    c++;
                });

                $('#loader').hide();
                $('#mainContent').show(1000).slideDown();

                console.log(c);

                $('.req_button').click(function () {
                    var id = this.name;
                    console.log('id=' + id);

                    var values = {};
                    $.each($('#allot_'+id).serializeArray(), function(i, field) {
                        values[field.name] = field.value;
                    });

                    console.log(values);

                    $.ajax({
                        url: "../php/stockguy_requests.php",
                        type: "POST",
                        dataType: "JSON",
                        data: {active_id: id, allotted: values},

                        success: function (data) {

                            var stat;

                            if(data['status'] == 'k')
                                stat = 'active';
                            else
                                stat = 'incomplete'

                            console.log('sent to '+stat);

                            $('body').load('../pages/stockguy_dashboard.html')
                        },
                        error: function () {

                        }
                    });
                });

                (function worker() {
                    $.ajax({
                        url: '../php/stockguy_requests.php',
                        type: "POST",
                        dataType: "JSON",
                        data: {last: last},

                        success: function(data) {
                            location.reload();
                        },
                        complete: function() {
                            // Schedule the next request when the current one's complete
                            setTimeout(worker, 5000);
                        }
                    });
                })();

            },
            error: function () {
                console.log('error');
            }
        });
    }
});


