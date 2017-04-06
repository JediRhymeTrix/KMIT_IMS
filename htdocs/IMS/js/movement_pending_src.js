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
            url: "../php/sysadmin_movement.php",
            type: "POST",
            dataType: "JSON",
            data: {status: 'pending', status1: 'pending'},

            success: function (data) {

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
                    //console.log(data);
                    $("#requests").append("<li class='system' id='" + data[i].req_id + "'><a href='#' class='req_is'>request#" + data[i].req_id + "</a><div class='parts' id='parts_" + data[i].req_id + "'><br><span class='req_list'>Date: " + data[i].movement_date + "</span><span class='req_list'>Time: " + data[i].movement_time + "</span><span class='req_list'>Source Lab: " + data[i].source_lab + "</span><span class='req_list'>Destination Lab: " + data[i].dest_lab + "</span><span class='req_list'>Number of Systems: " + data[i].no_of_systems + "</span><span class='req_list'>Number of Monitors: " + data[i].no_of_monitors + "</span>Status: " + data[i].status + "</span></span>Remarks: " + data[i].remarks + "</span></div></li>");

                    c++;
                });

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


