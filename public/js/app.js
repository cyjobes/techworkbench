$(function() {
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });


    $("#new_task_bttn").on("click", function() {
        $( "#new_task_form_dialog" ).dialog( "open" );
    });

    $("#customers_bttn").on("click", function() {
        $( "#customer_form_dialog" ).dialog( "open" );
        $( "#tabs" ).tabs( "option", "active", 0 );
    });


    $( "#new_task_form_dialog" ).dialog({
        autoOpen: false,
        width: 800,
        maxHeight: 700,
        modal: true,
        draggable: false,
        close: function( event, ui ) {
            $("#job_form")[0].reset();
            $("#new_task_cust_id").val(0);
            $("#job_id").val(0);
            $("#job_delete").val(0);
            $("#created_at").html("");
            $(".date-entered").css("display", "none");
        },
        active: 0,
    });

    $( "#tabs" ).tabs({
        activate: function( event, ui ) {
            if ($( "#tabs" ).tabs( "option", "active" ) == 1) {
               /// console.log($( "#tabs" ).tabs( "option", "active" ))
                reset_customer_form();
            }
        }
    });

    $( "#customer_form_dialog" ).dialog({
        autoOpen: false,
        width: 800,
        maxHeight: 700,
        modal: true,
        draggable: false,
        close: function( event, ui ) {
            reset_customer_form();
        },
    });


    $( "#due_date" ).datepicker();

    $("#jobs_table tbody tr").on("click", open_saved_job);

    $(".cust_edit_bttn").on("click", get_customer);

    $(".cust_delete_bttn").on('click', function () {
        msg = "You are about to delete a customer.\n\n";
        msg += "Once deleted any jobes will be disassociated with this customer\n\n";
        msg += "This CANNOT be undone!";
        msg += "Do you wish to continue?";
        if (!confirm(msg)) {
            return false;
        }
        delete_customer($(this).data("cust_id"));
    });


    $("#customer_form_reset").on("mouseup", reset_customer_form);

    /*$(".jobs_list_header").on("click", sort_jobs_list);*/

    $('#jobs_table').DataTable({
        "order": [[ 4, "asc" ]],
        "columnDefs": [ {
            "targets": 3,
            "orderable": false
        } ,
            {
                "targets": 5,
                "orderable": false
            },
            {
                targets: [ 2 ],
                orderData: [ 2, 4 ]
            } ]
    });



    $( "#customer_text" ).on("keyup", auto_complete_customer);
});




/*
*
*
*
*
*
*
* */









var auto_complete_customer_names = new Array();
var auto_complete_customer_ids = new Array();

/*if ( document.URL.indexOf("jobs01.php") > -1) {
    $("#active_bttn").css("font-weight", "bold");
}*/

function ajax_error(jqXHR, textStatus, errorThrown) {
    console.log('jqXHR:');
    console.log(jqXHR);
    console.log('textStatus:');
    console.log(textStatus);
    console.log('errorThrown:');
    console.log(errorThrown);
    alert("AJAX error. See console.\n"+jqXHR)
}

function open_saved_job() {
    //console.log($(this).data("job_id"));
    post_data = {
        id: $(this).data('job_id'),
    };

    $.ajax({
        type: "POST",
        url: "/ajax/get_job",
        data: post_data,
        success: open_saved_job_result,
        error: ajax_error,
        dataType: "json",
    });
}


function open_saved_job_result(results) {
    //console.log(results);
    //console.log(results.data.priority_id)
    if (results.success) {
        if (results.data.business_name) {
            $( "#customer_text" ).val(results.data.business_name);
            $("#priority").val(results.data.priority_id);
            $("#title").val(results.data.title);
            $("#description").val(results.data.description);
            $("#due_date").val(results.data.due_date);
            $("#amount_due").val(results.data.amount_due);
            $("#amount_paid").val(results.data.amount_paid);
            $("#job_id").val(results.data.id);
            $("#new_task_cust_id").val(results.data.cust_id);

            if (results.data.signed) {
                $("#signed").prop("checked", true)
            }
            if (results.data.archive) {
                $("#archive").prop("checked", true)
            }

            $(".date-entered").css("display", "inline-block");

            $("#created_at").html(results.data.created_at);

            $( "#new_task_form_dialog" ).dialog( "open" );
        } else {
            alert("Customer record could not be found.");
        }
    } else {
        alert("There was a problem!\n\n" + results.error);
    }
}



function  get_customer() {
    post_data = {
        id: $(this).data('cust_id'),
    };

    $.ajax({
        type: "POST",
        url: "/ajax/get_customer",
        data: post_data,
        success: get_customer_result,
        error: ajax_error,
        dataType: "json",
    });
}

function get_customer_result(results) {
    if (results.success) {
        if (results.customer) {
            $( "#tabs" ).tabs({ active: 0 });
            $("#name").val(results.customer[0].name);
            $("#business_name").val(results.customer[0].business_name);
            $("#phone").val(results.customer[0].phone);
            $("#address").val(results.customer[0].address);
            $("#email").val(results.customer[0].email);
            $("#type").val(results.customer[0].type);
            $("#cust_id").val(results.customer[0].id);
            //console.log(results.customer);
        } else {
            alert("Customer record could not be found.");
        }
    } else {
        alert("There was a problem!\n\n" + results.error);
    }
}


function reset_customer_form() {
    $("#customer_form")[0].reset();
    $("#cust_id").val(0);
}



function auto_complete_customer() {
    //console.log('auto_complete_customer()');
    $("#new_task_cust_id").val(0);

   /* if ($(this).val().length < 2) {
        return false;
    }*/

        post_data = {
            term: $("#customer_text").val(),
        };

        $.ajax({
            type: "POST",
            url: "/ajax/auto_complete_customer",
            data: post_data,
            success: auto_complete_customer_result,
            error: ajax_error,
            dataType: "json",
        });
}


function auto_complete_customer_result(results) {
    auto_complete_customer_names = results.customer_names;
    auto_complete_customer_ids = results.customer_ids;
    auto_complete_customer_display();
}


function auto_complete_customer_display() {
    $( "#customer_text" ).autocomplete({
        source: auto_complete_customer_names,
        select: function( event, ui ) {
            setTimeout("assign_customer_id_to_new_task_cust_id()", 200);
        },
    });
}


function assign_customer_id_to_new_task_cust_id() {
    customer_text_value = $("#customer_text").val();

    for (var i=0; i < auto_complete_customer_names.length; i++) {
        if (auto_complete_customer_names[i] == customer_text_value) {
            $("#new_task_cust_id").val(auto_complete_customer_ids[i]);
            break;
        }
    }
    return;
}


function delete_customer(cust_id) {
    $("#cust_delete").val(cust_id);
    $("#customer_form").submit();
}


function delete_job(job_id) {
    $("#job_delete").val(job_id);
    $("#job_form").submit();
}


function sort_jobs_list() {
    post_data = {
        sort_by: $(this).data('sort_by'),
    };

    $.ajax({
        type: "POST",
        url: "/ajax/sort_jobs_list",
        data: post_data,
        success: sort_jobs_list_results,
        error: ajax_error,
        dataType: "json",
    });
}

function sort_jobs_list_results(results) {
    if (results.success) {
        if (results.data) {
            $( "#job_listing_table_container" ).html(results.data);
            $(".jobs_list_header").on("click", sort_jobs_list);
        } else {
            alert("Customer record could not be found.");
        }
    } else {
        alert("There was a problem!\n\n" + results.error);
    }
}