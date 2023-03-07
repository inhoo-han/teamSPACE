$(function() {
    $('.tMenu>.menu').hover(function() {
        $(this).find('.subMenu').stop().slideDown(1000);
        $(this).find('a').css(color = '#fff');
    }, function() {
        $(this).find('.subMenu').stop().slideUp(1000);
    });
    $('.home').click(function() {
        window.location = 'index.html'
    });
});