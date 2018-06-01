$(function() {
    $("#new_task_bttn").on("click", function() {
        $( "#new_task_form_dialog" ).dialog( "open" );
    });


    $( "#new_task_form_dialog" ).dialog({
        autoOpen: false,
        width: 800,
        modal: true,
        draggable: false,
    });


    $( "#due_date" ).datepicker();

});

function open_new_task_form() {

}