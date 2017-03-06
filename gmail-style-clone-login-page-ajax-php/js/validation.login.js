//jQuery time
var current_fs, next_fs, previous_fs; //fieldsets
var left, opacity, scale; //fieldset properties which we will animate
var animating; //flag to prevent quick multi-click glitches


$("#email").keyup(function(event){  //  binds 'enter' key to button click
    if(event.keyCode == 13){
        $(".next").click();
    }
});

$("input").on("keydown", function (e) { //  prevents spaces from being typed into input fields
    return e.which !== 32;
});

$(".next").click(function() {
    current_fs = $(this).parent();

    var fieldsetValue = $("fieldset").index(current_fs);
    if (fieldsetValue == 0) {
        $('#password').val('');
        $('#msg').text('');
        var email = $('#email').val();
        checkEmail(email, function(result) {
            if (result == 1) {
                next_fs = current_fs.next();
                animate(next_fs);
            }
        });
    }
    if (fieldsetValue == 1) {

        next_fs = current_fs.next();
        animate(next_fs);


    }

});

function animate(next_fs) {
    console.log(animating);
    if (animating) return false;
    animating = true;
    $("#progressbar li").eq($("fieldset").index(next_fs)).addClass("active");
    //show the next fieldset

    next_fs.show();
    $(".login").animate({
        height: "350px"
    });
    //hide the current fieldset with style
    current_fs.animate({
        opacity: 0
    }, {
        step: function(now, mx) {

            left = (now * 10) + "%";

            opacity = 1 - now;

            current_fs.css({
                'transform': 'scale(' + scale + ')'
            });
            next_fs.css({
                'left': left,
                'opacity': opacity
            });
            next_fs.css({
                'margin-left': '95px'
            });
        },
        duration: 200,
        complete: function() {
            current_fs.hide();
            animating = false;
        },

        easing: 'easeInOutBack'
    });


}


$(".previous").click(function() {
    if (animating) return false;
    animating = true;

    current_fs = $(this).parent();
    previous_fs = $(this).parent().prev();

    $("#progressbar li").eq($("fieldset").index(current_fs)).removeClass("active");

    //show the previous fieldset
    previous_fs.show();
    $(".login").animate({
        height: "300px"
    });
    $('#error_msg').text('');
    //hide the current fieldset with style
    current_fs.animate({
        opacity: 0
    }, {
        step: function(now, mx) {
            //as the opacity of current_fs reduces to 0 - stored in "now"
            //1. scale previous_fs from 80% to 100%
            scale = 0.8 + (1 - now) * 0.2;
            //2. take current_fs to the right(50%) - from 0%
            left = ((1 - now) * 20) + "%";
            //3. increase opacity of previous_fs to 1 as it moves in
            opacity = 1 - now;
            current_fs.css({
                'left': left
            });

            previous_fs.css({
                'transform': 'scale(' + scale + ')',
                'opacity': opacity
            });

        },
        duration: 200,
        complete: function() {
            current_fs.hide();
            animating = false;
        },
        //this comes from the custom easing plugin
        easing: 'easeInOutBack'
    });
});

checkAuthentication();


function checkAuthentication() {

    $("#msform").on('submit', (function(e) {
        e.preventDefault();
        $.ajax({
            url: "php/checkAuthentication.php",
            type: "POST",
            data: new FormData(this),
            contentType: false,
            cache: false,
            dataType: "JSON",
            processData: false,
            success: function(data) {
                if (data.action == "SHOW_ERROR") {
                    $(".login").animate({
                        height: "370px"
                    });
                    $('#password').css({
                        'border-color': '#dd4b39'
                    });
                    $('#password').focus();
                    $('#msg').css({
                        'color': '#dd4b39',
                        'text-align': 'left'
                    });
                    $('#msg').text(data.msg);
                } else if (data.action == "SHOW_SUCCESS") {
                    //window.location.href = "php/parse_login.php";

                    document.cookie = 'logged';

                    $("#hidden_link").attr("href", data.loc);
                    $("#hidden_link").trigger("click");
                }
            },
            error: function(xhr, status, error) {
                alert(xhr.responseText);
            }
        });

    }));

}



function checkEmail(email, callback) {

    /*$substr = "@kmit.in";

    if( email.indexOf( $substr ) == -1 ) {
        email = email + $substr;
    }*/

    $.ajax({
        url: "php/checkEmail.php",
        type: "POST",
        dataType: "JSON",
        data: 'email=' + email,
        success: function(data) {
            if (data.action == "SHOW_ERROR") {
                $(".login").animate({
                    height: "320px"
                });
                $('#email').css({
                    'border-color': '#dd4b39'
                });
                $('#email').focus();

                $('#error_msg').text(data.error_msg);

                var dataFlg = 0;
            } else if (data.action == "SHOW_SUCCESS") {

                $set_role = data.role_name;

                Cookies.set('role', $set_role);

                $('#img').html(data.image);
                $('#userEmail').text(data.email);
                $('#userName').text(data.userName);
                $('#info2-1').text('Signing in as: ');
                $('#info2-2').text($set_role);

                var dataFlg = 1;
            }
            callback(dataFlg);

        },
        error: function() {}
    });

}

