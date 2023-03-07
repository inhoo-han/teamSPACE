$(function() {
    $('.tMenu>.menu').hover(function() {
        $(this).find('.subMenu').stop().slideDown(1000);
    }, function() {
        $(this).find('.subMenu').stop().slideUp(1000);
    });
    $('.home').click(function() {
        window.location = 'index.html'
    });
});