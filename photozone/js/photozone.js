$(function() {
    $('#choice_zone').find('img').click(function() {
        let sampleSRC = $(this).attr('src');
        // alert(sampleSRC);
        $('#photo_onload').find('img').attr('src', sampleSRC);
    });
    $('.user_photo_div').resizable();        
    $('.user_photo_div').draggable();   



});