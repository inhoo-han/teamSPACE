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
    });
 
    /* skip버튼 클릭 */
    $('.skip').click(function() {
        $('html, body').animate({
            scrollTop : $(document).height()
        }, 1000);
        // $('html,body').scrollTop( $(document).height());
    });

    // $('.cele').imgExpand(); 
});
