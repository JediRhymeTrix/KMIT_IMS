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

    if(Cookies.get('role') != 'Management') {
        $('#username').text('error');
        alert("Unauthorized Access!");
        window.location.href = "../index.html";

    } else {
        $('.link').css({"color": "#929292"});

        var type;

        $('.link').click(function(e) {

            e.preventDefault();

            $('.link').css({"color": "#929292"});
            $(this).css({"color": "#ea7819"});

            $('#select').hide();
            $('#logs_form').show(100);

            type = this.id;
        });

        $('#task_select').on('change', function() {
            if(this.value == "other") {

                var now = new Date();

                var day = ("0" + now.getDate()).slice(-2);
                var month = ("0" + (now.getMonth() + 1)).slice(-2);

                var date = now.getFullYear()+"-"+(month)+"-"+(day) ;

                $("#custom_date").show();
                $("#custom_date").attr('required');

                $("#from_date").attr('max', date);
                $("#from_date").attr('value', date);
                $("#to_date").attr('max', date);
                $("#to_date").attr('value', date);

            } else {

                $("#custom_date").hide();
                $("#custom_date").removeAttr('required');

            }
        });

        $('#logs_dl').click(function (e) {
            e.preventDefault();

            var vis = $('#custom_date').is(":visible");
            if(vis) {
                var start_date = $("#from_date").val();
                var end_date = $("#to_date").val();

                var dates = [start_date, end_date];
            } else {

                var end_date = $("#task_select option:selected").val();

                var dates = [end_date];
            }

            $.ajax({
                url: "../php/mgmnt_logs.php",
                type: "POST",
                data: { type: type, time: dates },
                dataType: "JSON",

                success: function (data) {

                    $('<form></form>')
                        .attr('action', data.file)
                        .appendTo('body').submit().remove();

                },
                error: function () {
                    alert('Error generating logs. Please try again.');
                }
            });
        });
    }

});


$(function() {
    $(".sidebar").jScroll({speed : 0});
});