$(function() {
    $("#new_task_bttn").on("click", function() {
        $( "#new_task_form_dialog" ).dialog( "open" );
    });

    $("#customers_bttn").on("click", function() {
        $( "#customer_form_dialog" ).dialog( "open" );
    });


    $( "#new_task_form_dialog" ).dialog({
        autoOpen: false,
        width: 800,
        maxHeight: 700,
        modal: true,
        draggable: false,
    });

    $( "#tabs" ).tabs();

    $( "#customer_form_dialog" ).dialog({
        autoOpen: false,
        width: 800,
        maxHeight: 700,
        modal: true,
        draggable: false,
    });


    $( "#due_date" ).datepicker();

    $("#jobs_table tr").on("click", open_saved_job);

});

var blind_flag = 0;

/*if ( document.URL.indexOf("jobs01.php") > -1) {
    $("#active_bttn").css("font-weight", "bold");
}*/

function open_saved_job() {
    console.log($(this).data("job_id"));
}

