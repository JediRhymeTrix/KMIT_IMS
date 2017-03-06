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

    var role = Cookies.get('role');

    if(role == 'Network Engineer') {

        $('#logs_btn').show();

        $.ajax({
            url: "../php/sysadmin_requests.php",
            type: "POST",
            dataType: "JSON",
            data: {status: 'closed', status1: 'closed'},

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

                $.each(data, function (i, item) {
                    console.log(data[i].req_date);
                    //console.log(data);
                    $("#requests").append("<li class='system' id='" + data[i].req_id + "'><a href='#' class='req_is'>request#" + data[i].req_id + "</a><div class='parts' id='parts_" + data[i].req_id + "'><div class='maintenance'><a class='maintenance_link' href='#' id='"+ data[i].req_id +"'>Maintenance View</a></div><br><span class='req_list'>Date: " + data[i].req_date + "</span><span class='req_list'>Time: " + data[i].req_time + "</span><span class='req_list'>Lab: " + data[i].lab_name + "</span><table class='parts_table' id='parts_table"+data[i].req_id+"'><tr><th>Parts</th><th>Quantity (received)</th></tr></table><span class='req_list'>Status: " + data[i].status + "</span></div></li>");

                    $.each(data[i].parts_inrepair, function (x, item) {
                        $('#parts_table'+data[i].req_id).append("<tr><td class='part_names'>"+item+"</td><td>"+data[i].allotted[item]+"</td></tr>")
                    });

                    c++;
                });

                console.log(c);

                $('.maintenance_link').click(function(e) {
                    e.preventDefault();

                    var req_id = $(this).attr('id');
                    Cookies.set('req_id', req_id);

                    $('#mainContent').load('../pages/maintenance.html');

                });


            },
            error: function () {
                console.log('error');

                alert('Please select a LAB first');
            }
        });

    }
});


