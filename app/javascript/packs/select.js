import 'select2/dist/css/select2.css'
import 'select2'
$(document).on("turbolinks:load",function(){
  $('.course-select-modal').select2(
    {dropdownParent: $('#newQuestionModal')}
  );
  $('.course-select').select2();
});