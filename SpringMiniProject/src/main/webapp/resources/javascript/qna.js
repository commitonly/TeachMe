$(document).ready(function dos() {
    $('#main_menu > li > a').click(function () {
        $(this).next($('.snd_menu sub_menu')).slideToggle('fast');
        // $(this).show($('.snd_menu sub_menu')("slide",{direction:'left'},1000));
    })
    // e.stopPropagation();

})