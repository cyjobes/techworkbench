<?php
if (isset($data)) {
    //dd($data);
}
?>

@foreach($data['jobs'] as $job)
    <tr data-job_id="{{ $job->id }}">
        <td class="client-cell">{{ $job->business_name }}</td>
        <td>{{ $job->created_at }}</td>
        <td>{{ $job->priority_string }}</td>
        <td class="desc-cell">{{ $job->description }}</td>
        <td>{{ $job->due_date }}</td>
        <td>{{ $job->amount_due }}</td>
    </tr>
@endforeach