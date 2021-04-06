$(document).on("turbolinks:load",function(){
    $(".course-select.questions").on("select2:select", function (e) {
        let questionsPath = window.location.href.substring(0, window.location.href.indexOf('?'))
        window.location = questionsPath + '?course_id=' + e.params.data.id;
    });
});