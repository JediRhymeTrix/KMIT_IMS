/**
 * Created by Vedant on 06-Feb-17.
 */

$('[data-bjax]').bjax( {
    replace: false,
});

$(document).ready(function() {

    var role = Cookies.get('role');

    if(role == 'Network Engineer') {

        $.ajax({
            url: "../php/sysadmin_requests.php",
            type: "POST",
            dataType: "JSON",
            data: {status: 'pending', status1: 'pending'},

            success: function (data) {

                $('#logs_btn').show();

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
                    $("#requests").append("<li class='system' id='" + data[i].req_id + "'><a href='#' class='req_is'>request#" + data[i].req_id + "</a><div class='parts' id='parts_" + data[i].req_id + "'><br><span class='req_list'>Date: " + data[i].req_date + "</span><span class='req_list'>Time: " + data[i].req_time + "</span><span class='req_list'>Lab: " + data[i].lab_name + "</span><table class='parts_table' id='parts_table"+data[i].req_id+"'><tr><th>Parts</th><th>Quantity (requested)</th></tr></table><span class='req_list'>Status: " + data[i].status + "</span></table></div></li>");

                    $.each(data[i].parts_inrepair, function (x, item) {
                        $('#parts_table'+data[i].req_id).append("<tr><td class='part_names'>"+item+"</td><td>"+data[i].quantity[item]+"</td></tr>")
                    });

                    c++;
                });

                $('#loader').hide();
                $('#mainContent').show(1000).slideDown();

                console.log(c);

                $('.req_button').click(function () {
                    var id = this.name;
                    console.log('id=' + id);

                    $.ajax({
                        url: "../php/stockguy_requests.php",
                        type: "POST",
                        dataType: "JSON",
                        data: {active_id: id},

                        success: function (data) {
                            console.log('sent to active');
                        },
                        error: function () {

                        }
                    });
                });

            },
            error: function () {
                console.log('error');

                alert('Please select a LAB first');
            }
        });
    }
});


