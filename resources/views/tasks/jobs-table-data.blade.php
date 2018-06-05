<?php
if (isset($data)) {
    //dd($data);
}
?>
<table id="jobs_table" class="table table-striped">
    <thead>
    <tr>
        <th data-sort_by="business_name" class="client-cell jobs_list_header">CLIENT</th>
        <th data-sort_by="created_at" class="date-cell jobs_list_header">DATE</th>
        <th data-sort_by="priority_id" class="priority-cell jobs_list_header">PRIORITY</th>
        <th class="desc-cell">DESCRIPTION</th>
        <th data-sort_by="due_date" class="due-by-cell jobs_list_header">DUE BY</th>
        <th class="due-on-cell">DUE ON RECEIPT</th>
    </tr>
    </thead>
    <tbody>
@foreach($data['jobs'] as $job)
    <tr data-job_id="{{ $job->id }}">
        <td class="client-cell">{{ $job->business_name }}</td>
        <td>{{ $job->created_at }}</td>
        <td class="priority-cell">{{ $job->priority_string }}</td>
        <td class="desc-cell">{{ $job->description }}</td>
        <td>{{ $job->due_date }}</td>
        <td>{{ $job->amount_due }}</td>
    </tr>
@endforeach
    </tbody>
</table>
{{ $data['jobs']->links('vendor/pagination/bootstrap-4') }}