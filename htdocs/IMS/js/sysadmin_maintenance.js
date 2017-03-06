/**
 * Created by jrt on 02-Mar-17.
 */

$('[data-bjax]').bjax( {
    replace: false,
});

$(document).ready(function() {

    var req_id = Cookies.get('req_id');

        $.ajax({
            url: "../php/maintenance.php",
            type: "POST",
            dataType: "JSON",
            data: {req_id: req_id},

            success: function (data) {


                $("#systems").empty();
                console.log(data.length);

                //var data2 = data;

                var c = 0;

                $.each(data, function (i, item) {
                    console.log(data[i]);
                    $("#systems").append("<li class='system' id='" + data[i].cpu_no + "'><a href='#' id='parts_" + data[i].cpu_no + "' class='req_is'>CPU#"+data[i].cpu_no+"</a><div class='parts'><form class='parts_form'><table class = 'parts_table' id='parts_"+data[i].cpu_no+"'><tr id='parts_header_"+data[i].cpu_no+"'><th class='le'><h4>Parts</h4></th><th class='ri'><h4>Installation</h4></th></tr></form><br></div></li>");

                    $.each(data[i].parts, function (x, item2) {

                        if(item2 == 0) {
                            $("<tr><td class='part_names'><label>" + x + "</label></td><td class='but'><input type='button' class='maint_but' name='"+data[i].cpu_no+"' id='"+x+"' value='done'></td></tr>").insertAfter('#parts_header_'+data[i].cpu_no);
                        }
                    });

                    c++;
                });

                console.log(c);

                $('.maint_but').click(function () {
                    var part = this.id;
                    var cpu_no = this.name;

                    $(this).css({'color': '#EA7819'});

                    console.log('cpu=' + cpu_no);

                    $.ajax({
                        url: "../php/maintenance.php",
                        type: "POST",
                        dataType: "JSON",
                        data: {part: part, cpu_no: cpu_no, req_id: req_id},

                        success: function (data) {
                            console.log(part+' selected');

                            $('#mainContent').load('../pages/maintenance.html');
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

});