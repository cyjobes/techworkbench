<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
    <link rel="stylesheet" href="/js/jquery-ui-1.12.1.redmond/jquery-ui.css"/>
    <link rel="stylesheet" href="/css/app.css"/>

    <title>Tech Workbench Tasks</title>

    <script src="/js/jquery-ui-1.12.1.redmond/external/jquery/jquery.js"></script>
    <script src="/js/jquery-ui-1.12.1.redmond/jquery-ui.js"></script>
    <script src="/js/app.js"></script>
</head>

<body>
<div class="container">
    <header>
        <h1>Tech Workbench Task Board</h1>
    </header>

    <ul class="nav nav-tabs">
        <li id="new_task_bttn" class="nav-item">
            <a class="nav-link" href="javascript: void(0)">New Job</a>
        </li>

        <li id="active_bttn" class="nav-item active">
            <a class="nav-link active" href="#"> Active</a>
        </li>

        <li id="archive_bttn" class="nav-item active">
            <a class="nav-link " href="#">Archived</a>
        </li>

        <li id="customers_bttn" class="nav-item">
            <a class="nav-link" href="javascript: void(0)">Customers</a>
        </li>

        <li id="logout_bttn" class="nav-item">
            <a class="nav-link" href="#">Logout</a>
        </li>
    </ul>








    <div class="border border-white rounded">
        <table id="jobs_table" class="table table-striped">
            <thead>
            <tr>
                <th class="client-cell">CLIENT</th>
                <th class="date-cell">DATE</th>
                <th class="priority-cell">PRIORITY</th>
                <th class="desc-cell">DESCRIPTION</th>
                <th class="due-by-cell">DUE BY</th>
                <th class="due-on-cell">DUE ON RECEIPT</th>
            </tr>
            </thead>
            <tbody>
            @include('tasks.jobs-table-data', ['some' => 'data'])
            </tbody>
        </table>

    </div>
</div>


<div id="new_task_form_dialog" title="New Task Form">
    <form>
        <div class="date-entered">Date entered: 06/01/18</div>
        <!--<div class="form-group">
            <select class="form-control form-control-sm" id="cust_id" id="customer_select">
                <option value="0">Select Customer</option>
            </select>
        </div>-->

        <div class="form-group">
            <input type="text" class="form-control form-control-sm" name="customer_text" id="customer_text" placeholder="Customer">
            <small>Auto-complete. New customer created when none exists in auto-complete</small>
        </div>



        <div class="form-group">
            <select class="form-control form-control-sm" name="priority_id" id="priority">
                <option value="0">Select priority</option>
            </select>
        </div>

        <div class="form-group">
            <label for="title">Job title</label>
            <input type="text" class="form-control form-control-sm" id="title">
        </div>

        <div class="form-group">
            <label for="description">Job description</label>
            <textarea type="text" class="form-control form-control-sm" id="description"></textarea>
        </div>

        <div class="form-group">
            <label for="due_date">Due date</label>
            <input type="text" class="form-control form-control-sm" id="due_date">
        </div>

        <div class="form-group">
            <label for="amount_due">Amount due</label>
            <input type="text" class="form-control form-control-sm" id="amount_due">
        </div>

        <div class="form-group">
            <label for="amount_paid">Amount paid</label>
            <input type="text" class="form-control form-control-sm" id="amount_paid">
        </div>

        <div class="form-check form-check-inline">
            <input class="form-check-input" type="checkbox" name="signed" id="signed" value="option1">
            <label class="form-check-label" for="signed"> Signed off</label>
        </div>

        <br>

        <button type="submit" id="new_job_bttn" class="btn btn-primary">Submit</button>
    </form>
</div>




<div id="customer_form_dialog" title="Customer Form / List">


    <div id="tabs">
        <ul>
            <li><a href="#tabs-1">Customer Form</a></li>
            <li><a href="#tabs-2">Customer List</a></li>
        </ul>
        <div id="tabs-1">
            <p><form>
                <div class="form-group">
                    <label for="name">Name</label>
                    <input type="text" class="form-control form-control-sm" name="name" id="name"/>
                </div>

                <div class="form-group">
                    <label for="business_name">Business name</label>
                    <input type="text"  class="form-control form-control-sm" name="business_name" id="business_name"/>
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
            </form></p>
        </div>
        <div id="tabs-2">

            @include('tasks.customer-list-data', ['some' => 'data'])

        </div>

    </div>
</div>






</div>

</body>

</html>