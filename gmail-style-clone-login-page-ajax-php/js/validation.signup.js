/**
 * Created by jrt on 01-Mar-17.
 */

$(document).ready(function() {

    $('#role').on('change', function() {
        if(this.value == "sysadmin") {
            $('#signup .signup').css({'height': '430px'});

            $("#labs").show();
        } else {
            $('#signup .signup').css({'height': '400px'});

            $("#labs").removeAttr('required');
            $("#labs").hide();
        }
    });

    $("#signup").on('submit', (function(e) {
        e.preventDefault();

        var info = $('#signup').serializeArray().reduce(function(obj, item) {
            obj[item.name] = item.value;
            return obj;
        }, {});

        if(info['pwd'] != info['conf_pwd']) {
            $('#msg').css({
                'color': '#dd4b39',
                'text-align': 'left'
            });
            $('#msg').text('Passwords do not match');

            $('#pwd').css({
                'border-color': '#dd4b39'
            });
            $('#conf_pwd').css({
                'border-color': '#dd4b39'
            });


        } else {

            $.ajax({
                url: "../php/signup.php",
                type: "POST",
                data: new FormData(this),
                contentType: false,
                cache: false,
                dataType: "JSON",
                processData: false,
                success: function (data) {
                    if (data.action == "SHOW_ERROR") {
                        alert(data.message);
                    } else if (data.action == "SHOW_SUCCESS") {
                        window.location.href = "../index.html";
                    }
                },
                error: function (xhr, status, error) {
                    alert("response error");
                }
            });
        }

    }));

});





