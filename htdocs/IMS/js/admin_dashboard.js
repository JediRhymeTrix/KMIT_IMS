/**
 * Created by Vedant on 06-Feb-17.
 */

$('[data-bjax]').bjax( {
    replace: false,
});

$('a').click(function(){
    $(this).addClass("visited");
    $(this).css({
        'color':'#E57B1C'
    })
});

$(document).ready(function() {

    $('#init_movement').css({"color": "#E57B1C"});

    if(Cookies.get('role') != 'Administrator') {
        $('#username').text('error');
        alert("Unauthorized Access!");
        window.location.href = "../index.html";

    } else {
        $('.link').css({"color": "#929292"});

        $.ajax({
            url: "../php/admin_dashboard.php",
            type: "POST",
            dataType: "JSON",
            data: {action: 'test'},

            success: function (data) {

                $('#username').text(data.name);

                var labs = data.lab_names;

                labs.forEach(function (item) {
                    $("#from_lab").append("<option value='"+item+"'>"+item+"</option>");
                    $("#to_lab").append("<option value='"+item+"'>"+item+"</option>");
                });

                var now = new Date();

                var day = ("0" + now.getDate()).slice(-2);
                var month = ("0" + (now.getMonth() + 1)).slice(-2);

                var date = now.getFullYear()+"-"+(month)+"-"+(day) ;
                var time = now.getHours() + ":" + now.getMinutes() + ":" + now.getSeconds();

                $('#due_date').attr('min', date);
                $('#due_date').attr('value', date);
                $('#due_time').attr('min', time);
                $('#due_time').attr('value', time);
                $('#due_date').change(function () {
                    if($('#due_date').val() == date)
                        $('#due_time').attr('min', time);
                    else
                        $('#due_time').attr('min', '');
                });

                $('#movement_form').submit(function(e) {

                    if($('#from_lab').val() == $('#to_lab').val())
                        alert('Please select different labs');
                    else if($('#qty').val() == 0 && $('#qty_m').val() == 0)
                        alert('Please select at least 1 system/monitor');
                    else
                    {
                        var formData = $("#movement_form").serialize();

                        $.ajax({
                            url: "../php/admin_movement.php",
                            type: "POST",
                            data: formData,
                            dataType: "JSON",

                            success: function (data) {

                                alert('Movement initiated');

                                location.reload();

                            },
                            error: function () {

                            }
                        });
                    }

                    e.preventDefault();
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
            case 'pending': $('#mainContent').load('../pages/pending_movement.html');
                break;
            case 'active' : $('#mainContent').load('../pages/active_movement.html');
                break;
            case 'closed' : $('#mainContent').load('../pages/closed_movement.html');
                break;
        }
    });

    $('#logs_gen').click(function(e) {
        e.preventDefault();

        $('#status').hide();
        $('#status_logs').show();
        $('#logs_gen').hide();
        $('#logs_sub').show();

        $('#logs_dl').click(function (e) {
            e.preventDefault();

            var stats = [];

            if ($('#chk_pending').is(":checked"))
            {
                stats.push($('#chk_pending').val());
            }
            if ($('#chk_active').is(":checked"))
            {
                stats.push($('#chk_active').val());
            }
            if ($('#chk_closed').is(":checked"))
            {
                stats.push($('#chk_closed').val());
            }

            //$('#logs_form').submit();

            $.ajax({
                url: "../php/movement_logs.php",
                type: "POST",
                data: { logs_form: stats },
                dataType: "JSON",

                success: function (data) {

                    $('<form></form>')
                        .attr('action', data.file)
                        .appendTo('body').submit().remove();

                    $('#status').show();
                    $('#status_logs').hide();
                    $('#logs_gen').show();
                    $('#logs_sub').hide();

                },
                error: function () {
                    alert('Please select the required items.');
                }
            });
        })

    });
});


$(function() {
    $(".sidebar").jScroll({speed : 0});
});