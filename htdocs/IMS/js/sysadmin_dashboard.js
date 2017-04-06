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

    if(Cookies.get('role') != 'Network Engineer') {
        $('#username').text('error');
        alert("Unauthorized Access!");
        window.location.href = "../index.html";

    } else {
        $('.link').css({"color": "#929292"});

        $.ajax({
            url: "../php/sysadmin_dashboard.php",
            type: "POST",
            dataType: "JSON",
            data: {action: 'test'},

            success: function (data) {

                $('#username').text(data.name);

                var labs = data.lab_names.split(',');

                labs.forEach(function (item) {
                    $("#labs").append("<li><a class='lab' id='" + item + "' href='../pages/labx.html' data-target='#mainContent' data-bjax>" + item + "</a></li>");
                });

                $('.lab').click(function () {
                    var lab = $(this).attr('id');

                    $('#req').show();
                    $('#status').show();
                    $('#stock li').empty();
                    $('#selections').hide();

                    $('.lab').css({"color": "#929292"});
                    $('.link').css({"color": "#929292"});
                    $('#' + lab).css({"color": "#ea7819"});

                    Cookies.set("lab", lab);
                    localStorage.setItem('lab', lab);
                });


                $('#task_select').on('change', function() {
                    if(this.value == "requests") {

                        $("#labs").show();
                        $('#labs_movement').hide();
                        $("#mainContent").load(location.href + " #mainContent");
                        Cookies.set("task", 'requests');

                    } else {

                        $("#labs").hide();
                        $('#labs_movement').show();
                        $('#mainContent').empty();
                        Cookies.set("task", 'movement');
                    }
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
        var task = $('#task_select').val();

        var lab = Cookies.get('lab');
        switch (stat) {
            case 'pending':
                $('#mainContent').load('../pages/pending_' + task + '.html'); //
                break;
            case 'active' :
                $('#mainContent').load('../pages/active_' + task + '.html');
                break;
            case 'closed' :
                $('#mainContent').load('../pages/closed_' + task + '.html');
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
                    url: "../php/request_logs.php",
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

