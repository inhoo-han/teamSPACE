$(function() {
    /* scroll earth size 영역*/
    $(window).scroll(function() {
        let scroll_top = $(window).scrollTop();
        console.log(scroll_top);
        let documentHeight = $(document).height();
        console.log(documentHeight);

        /* earth size */
        $('#earth').css({
            transform: 'scale(' + (scrollY + 200)/200 + ')'
        });

        /* skip버튼 클릭 */
        $('.skip').click(function() {
            // $('html, body').animate({
            //     scrollTop : documentHeight
            // }, 1000);
            $('html,body').scrollTop(documentHeight);
        });
    });
});

// window.onload = function() {
//     const earth = document.getElementById('earth');
//     window.addEventListener('scroll', function() {
//         earth.style.transform = 'scale(' + 0.5 + window.pageYOffset/500 + ')';
//         // bg.style.width = 200 + window.pageYOffset/120 + '%';
//     });
// }