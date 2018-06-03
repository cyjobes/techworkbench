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
    });


    $( "#new_task_form_dialog" ).dialog({
        autoOpen: false,
        width: 800,
        maxHeight: 700,
        modal: true,
        draggable: false,
        close: function( event, ui ) {

        },
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

    $("#jobs_table tr").on("click", open_saved_job);

    $(".cust_edit_bttn").on("click", get_customer);

    $("#cust_delete_bttn").on('click', function () {
        msg = "You are about to delete a customer"
    });

    $("#customer_text").on('keyup', auto_complete_customer);

});

var auto_complete_customer_names = new Array();

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
    console.log($(this).data("job_id"));
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
            console.log(results.customer);
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
    if ($(this).val().length < 1) {
        return false;
    }

        post_data = {
            term: $(this).val(),
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
    auto_complete_customer_names = new Array();
    if (results.customers.length > 0) {
        for (var i=0; i < results.customers.length; i++) {
            auto_complete_customer_names[i] = results.customers[i].name;
        }
    }

    $( "#customer_text" ).autocomplete({
        source: auto_complete_customer_names
    });
    console.log(auto_complete_customer_names);
}