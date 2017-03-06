/**
 * Created by jrt on 08-Feb-17.
 */

$('#logout').click(function() {
    $.ajax({
        url: "../php/session_killer.php",
        type: "POST",
        dataType: "JSON",
        data: {action: 'logout'},

        success: function(data) {
            console.log('logged out');
            alert('Logged out successfully');
        },
        error: function() {

        }
    });
});
