export var loadCss = function (href) {
    var cb = function () {
        var l = document.createElement('link');
        l.rel = "stylesheet";
        l.href = href;
        var h = document.getElementsByTagName('head')[0];
        h.append(l);
    };

    var raf = requestAnimationFrame || mozRequestAnimationFrame || webkitRequestAnimationFrame || msRequestAnimationFrame;
    if (raf) {
        raf(cb);
    } else {
        window.addEventListener('load', cb);
    }
};
