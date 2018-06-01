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

    <ul class="nav">
        <li id="new_task_bttn" class="nav-item">
            New
        </li>
        <li class="nav-item">
            Active
        </li>
        <li class="nav-item">
            Archived
        </li>
        <li class="nav-item">
            Customers
        </li>
        <li class="nav-item">
            Logout
        </li>
    </ul>

    <div class="border border-white rounded">
        <table class="table table-striped">
            <thead>
                <tr>
                    <th class="archive-bttn-cell"><input type="button" value="Archive" id="archive_bttn" class="btn-sm"/> </th>
                    <th class="client-cell">CLIENT</th>
                    <th class="date-cell">DATE</th>
                    <th class="priority-cell">PRIORITY</th>
                    <th class="desc-cell">DESCRIPTION</th>
                    <th class="due-by-cell">DUE BY</th>
                    <th class="due-on-cell">DUE ON RECEIPT</th>
                </tr>
            </thead>
            <tbody>
            <tr>
                <td></td>
                <td class="client-cell">Joe Bloes Auto Shop</td>
                <td>10/12/18</td>
                <td>* * * * *</td>
                <td class="desc-cell">Some sort of work to do on some sort of thing with...</td>
                <td>ASAP</td>
                <td>$500.00</td>
            </tr>
            <tr>
                <td></td>
                <td class="client-cell">Joe Bloes Auto Shop</td>
                <td>10/12/18</td>
                <td>* *  *</td>
                <td class="desc-cell">Some sort of work to do on some sort of thing with...</td>
                <td>ASAP</td>
                <td>$500.00</td>
            </tr>
            </tbody>
        </table>

    </div>
</div>


<div id="new_task_form_dialog" title="New Task Form">
    <form>
        <h6>Date entered: 06/01/18</h6>
        <div class="form-group">
            <select type="email" class="form-control" id="cust_id" id="customer_select">
                <option value="0">Select Customer</option>
            </select>
        </div>
        <div class="form-group">
            <select type="email" class="form-control" name="priority_id" id="priority">
                <option value="0">Select priority</option>
            </select>
        </div>

        <div class="form-group">
            <label for="title">Job title</label>
            <input type="text" class="form-control" id="title">
        </div>

        <div class="form-group">
            <label for="description">Job description</label>
            <textarea type="text" class="form-control" id="description"></textarea>
        </div>

        <div class="form-group">
            <label for="due_date">Due date</label>
            <input type="text" class="form-control" id="due_date">
        </div>

        <div class="form-group">
            <label for="amount_due">Amount due</label>
            <input type="text" class="form-control" id="amount_due">
        </div>

        <div class="form-group">
            <label for="amount_paid">Amount paid</label>
            <input type="text" class="form-control" id="amount_paid">
        </div>

        <div class="form-check form-check-inline">
            <input class="form-check-input" type="checkbox" name="signed" id="signed" value="option1">
            <label class="form-check-label" for="signed"> Signed off</label>
        </div>

        <br>

        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</div>

</body>

</html>