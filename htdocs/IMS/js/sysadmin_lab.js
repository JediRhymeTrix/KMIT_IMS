/**
 * Created by jrt on 06-Feb-17.
 */
/**
 * Created by Vedant on 06-Feb-17.
 */

$('[data-bjax]').bjax( {
    replace: false,
});

$(document).ready(function() {

    $('#logs_btn').hide();

    localStorage.setItem('alerted','no');

    $.ajax({
        url: "../php/sysadmin_lab.php",
        type: "POST",
        dataType: "JSON",
        data: {action: 'test'},

        success: function(data) {

            $("#systems").empty();

            var sys = data.systems.split(',');

            sys.forEach(function(item) {
               $("#systems").append("<li class='system' id='"+item+"'><a href='#' id='"+item+"' class='not_active'>CPU#"+item+"</a><div class='parts' id='parts_"+item+"'></div></li>");
            });

            $('a').css({'color': '##E57B1C'});

            $('.not_active').click(function(e) {
                e.preventDefault();

                var cpu_no = this.id;

                $.ajax({
                    url: "../php/sysadmin_parts.php",
                    type: "POST",
                    dataType: "JSON",
                    data: 'cpu_no=' + cpu_no,

                    success: function (data) {

                        var div_id = '#parts_' + cpu_no;
                        //$(div_id).css('height','200px');

                        $('.not_active').click(function (e) {
                            e.preventDefault();

                            $('.parts').find(':last-child').remove();
                        });

                        var parts_html = "<form id='parts_list'><fieldset id='parts_fs'><input type='text' name='cpu_no' value='"+cpu_no+"' hidden></fieldset></form> ";

                        $(div_id).append(parts_html);

                        for (var part in data) {
                            $('#parts_fs').append("<label><input type='checkbox' name='"+part+"' value='" + part + "' id='damaged_parts'><span id='partnames'> " + part.toUpperCase() + "</span> - " + data[part] + "</label>");
                        }

                        $('#parts_fs').append("<input type='submit' name='request' id='submit' class='submit' value='add'/>");

                        $('#parts_list').on('submit',function(e) {
                            e.preventDefault();

                            $('#selections').show();

                            $.ajax({
                                url: "../php/submit_request.php",
                                type: "POST",
                                data: new FormData(this),
                                contentType: false,
                                cache: false,
                                dataType: "JSON",
                                processData: false,
                                success: function (data) {

                                    if(data.size == 1)
                                        $("#stock").append("<li class='link' id='" + cpu_no + "' style='font-size: small'>CPU#" + cpu_no + " - " + data.size + " part</li>");
                                    else if(data.size > 1)
                                        $("#stock").append("<li class='link' id='" + cpu_no + "' style='font-size: small'>CPU#" + cpu_no + " - " + data.size + " parts</li>");
                                    else {}

                                    $('#button').click(function() {
                                        var alerted = localStorage.getItem('alerted') || '';
                                        if (alerted != 'yes') {
                                            alert("Request Submitted");
                                            localStorage.setItem('alerted','yes');
                                        }

                                        $('#stock li').empty();
                                        $('#selections').hide();

                                            $.ajax({
                                                url: "../php/submit_request.php",
                                                type: "POST",
                                                data: 'submit',
                                                dataType: "JSON",
                                                success: function(data) {

                                                    console.log("request submitted");

                                                },
                                                error: function() {

                                                   console.log('request failed');

                                                }
                                            });
                                    });
                                },
                                error: function (xhr, status, error) {
                                    alert(xhr.responseText);
                                }
                            });

                        });


                    },
                    error: function () {
                        alert('response error');
                    }

                });
            });

        },
        error: function() {
            alert('response error');
        }
    });
});

