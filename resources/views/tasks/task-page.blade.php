@extends("tech-workbench-layout")

<?php
        if (isset($data)) {
    //dd($data);
        }
?>

@section('content')
<header>
    <h1>Tech Workbench Task Board</h1>
</header>


@switch($data['data_type'])
    @case('active')
        @php
            $active_class = 'active';
            $archived_class = '';
        @endphp
    @break

    @case('archived')
        @php
            $archived_class = 'active';
            $active_class = '';
        @endphp
    @break
@endswitch


<ul class="nav nav-tabs">
    <li id="new_task_bttn" class="nav-item">
        <a class="nav-link" href="javascript: void(0)">New Job</a>
    </li>

    <li id="active_bttn" class="nav-item active">
        <a class="nav-link {{ $active_class }}" href="/"> Active</a>
    </li>

    <li id="archive_bttn" class="nav-item active">
        <a class="nav-link {{ $archived_class }}" href="/archived">Archived</a>
    </li>

    <li id="customers_bttn" class="nav-item">
        <a class="nav-link" href="javascript: void(0)">Customers</a>
    </li>

{{--    <li id="logout_bttn" class="nav-item">
        <a class="nav-link" href="#">Logout</a>
    </li>--}}
</ul>










<div id="job_listing_table_container" class="border border-white rounded">

        @include('tasks.jobs-table-data')
</div>


<div id="new_task_form_dialog" title="New Task Form">
    <div class="ui-widget">
        <form action="/tasks" method="post" enctype="application/x-www-form-urlencoded" id="job_form">
            {{ csrf_field() }}
            <input type="hidden" name="task_form_type" id="job" value="job">
            <input type="hidden" id="new_task_cust_id" name="cust_id" value="0" />
            <input type="hidden" name="job_id" id="job_id" value="0">
            <input type="hidden" name="delete" id="job_delete" value="0">
            <div class="date-entered">Date entered: <span id="created_at"></span></div>
            <!--<div class="form-group">
                <select class="form-control form-control-sm" id="cust_id" id="customer_select">
                    <option value="0">Select Customer</option>
                </select>
            </div>-->

            <div class="form-group"><span class="required-field">* required</span>
                <input type="text" class="form-control form-control-sm" name="customer_text" id="customer_text" placeholder="Customer" required />
                <small>Auto-complete. New customer created when none exists in auto-complete</small>
            </div>



            <div class="form-group"><span class="required-field">* required</span>
                <select class="form-control form-control-sm" name="priority_id" id="priority" required>
                    <option value="">Select priority</option>
                    @foreach ($data['priorities'] as $p)
                        <option value="{{ $p->id }}">{{ $p->name }}</option>
                    @endforeach
                </select>
            </div>

            <div class="form-group">
                <label for="title">Job title <span class="required-field">* required</span></label>
                <input type="text" class="form-control form-control-sm" name="title" id="title" required/>
            </div>

            <div class="form-group">
                <label for="description">Job description</label>
                <textarea type="text" class="form-control form-control-sm" id="description" name="description"></textarea>
            </div>

            <div class="form-group">
                <label for="due_date">Due date <span class="required-field">* required</span></label>
                <input type="text" class="form-control form-control-sm" id="due_date" name="due_date" required />
            </div>

            <div class="form-group form-check-inline">
                <input class="form-check-input" type="checkbox" name="signed" id="signed" value="1">
                <label class="form-check-label" for="signed"> Signed off</label>
            </div>

            <br>

            <div class="form-group">
                <label for="amount_due">Amount due</label>
                <input type="text" class="form-control form-control-sm" name="amount_due" id="amount_due">
            </div>

            <div class="form-group">
                <label for="amount_paid">Amount paid</label>
                <input type="text" class="form-control form-control-sm" name="amount_paid" id="amount_paid">
            </div>

            <div class="form-group form-check-inline">
                <input class="form-check-input" type="checkbox" name="archive" id="archive" value="1">
                <label class="form-check-label" for="archive"> Archived</label>
            </div>

            <br>

            <button type="submit" id="new_job_bttn" class="btn btn-primary">Submit</button>
            &nbsp;
            &nbsp;
            <button type="button" id="new_job_bttn" class="btn btn-primary">Delete</button>
        </form>
    </div>
</div>




<div id="customer_form_dialog" title="Customer Form / List">


    <div id="tabs">
        <ul>
            <li><a href="#tabs-1">Customer Form</a></li>
            <li><a href="#tabs-2">Customer List</a></li>
        </ul>
        <div id="tabs-1">
            <p><form action="/tasks" method="post" enctype="application/x-www-form-urlencoded" id="customer_form">
                {{ csrf_field() }}
                <input type="hidden" name="task_form_type" id="customer" value="customer">
                <input type="hidden" name="cust_id" id="cust_id" value="0">
                <input type="hidden" name="delete" id="cust_delete" value="0">
                <div class="form-group">
                    <label for="name">Name <span class="required-field">* required</span></label>
                    <input type="text" class="form-control form-control-sm" name="name" id="name" required/>
                </div>

                <div class="form-group">
                    <label for="business_name">Business name <span class="required-field">* required</span></label>
                    <input type="text"  class="form-control form-control-sm" name="business_name" id="business_name" required/>
                </div>

                <div class="form-group">
                    <label for="phone">Phone</label>
                    <input type="text" class="form-control form-control-sm" name="phone" id="phone"/>
                </div>

                <div class="form-group">
                    <label for="address">Address</label>
                    <input type="text" class="form-control form-control-sm" name="address" id="address">
                </div>

                <div class="form-group">
                    <label for="email">E-mail</label>
                    <input type="email" class="form-control form-control-sm" id="email" name="email">
                </div>

                <div class="form-group">
                    <label for="type">Type</label>
                    <input type="text" class="form-control form-control-sm" id="type" name="type">
                </div>

                <br>

                <button type="submit" class="btn btn-primary">Submit</button>
                &nbsp;
                &nbsp;
                <input type="reset" id="customer_form_reset" class="btn btn-primary" value="Reset" />
            </form></p>
        </div>
        <div id="tabs-2">

            @include('tasks.customer-list-data', ['some' => 'data'])

        </div>

    </div>
</div>

    @if (isset($data['new_customer'] ))
        @if($data['new_customer'] === 1)
            <script>
                $( "#tabs" ).tabs();

                $( "#customer_form_dialog" ).dialog({
                    autoOpen: false,
                    width: 800,
                    maxHeight: 700,
                    modal: true,
                    draggable: false,
                });
                $( "#customer_form_dialog" ).dialog( "open" );
                $("#name").val('{{ $data['new_customer_data']->name }}');
                $("#business_name").val('{{ $data['new_customer_data']->business_name }}');
                $("#phone").val('{{ $data['new_customer_data']->phone }}');
                $("#address").val('{{ $data['new_customer_data']->address }}');
                $("#email").val('{{ $data['new_customer_data']->email }}');
                $("#type").val('{{ $data['new_customer_data']->type }}');
                $("#cust_id").val('{{ $data['new_customer_data']->id }}');
            </script>
        @endif
    @endif
@endsection