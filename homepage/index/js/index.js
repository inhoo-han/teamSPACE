$(function() {
    /* scroll earth size 영역*/
    $(window).scroll(function() {
        let scroll_top = $(window).scrollTop();
        console.log(scroll_top);
        $('#earth').css({
            transform: 'scale(' + (scrollY + 200)/200 + ')'
        });

        /* earth size */
    });
});

// window.onload = function() {
//     const earth = document.getElementById('earth');
//     window.addEventListener('scroll', function() {
//         earth.style.transform = 'scale(' + 0.5 + window.pageYOffset/500 + ')';
//         // bg.style.width = 200 + window.pageYOffset/120 + '%';
//     });
// }