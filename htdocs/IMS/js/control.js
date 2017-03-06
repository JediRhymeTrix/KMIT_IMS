
jQuery(document).ready(function() {
    function n() {
        return !1
    }

    function e(n) {
        var e = o ? n : event,
            t = o ? e.which : e.button;

        return 2 == t || 3 == t ? !1 :  void 0
    }
    var t = !1;
    document.onkeyup = function(n) {
        17 == n.which && (t = !1)
    }, document.onkeydown = function(n) {
        return 17 == n.which && (t = !0), t === !0 ? !1 : void 0
    };
    var o = "Netscape" == navigator.appName ? 1 : 0;
    "Netscape" == navigator.appName && document.captureEvents(Event.MOUSEDOWN || Event.MOUSEUP), document.oncontextmenu = n, document.onmousedown = e, document.onmouseup = e
});