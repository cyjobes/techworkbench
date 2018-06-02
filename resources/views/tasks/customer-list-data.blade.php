<?php
//dd($data['customers'] );
?>

@foreach ($data['customers'] as $customer)
<div class="card">
    <h5 class="card-header">{{ $customer->business_name }}</h5>
    <div class="card-body">
        <h6 class="card-title">Contact: {{ $customer->name }}</h6>
        <p class="card-text">Phone: {{ $customer->phone }}</p>
        <p class="card-text">Address: {{ $customer->address }}</p>
        <p class="card-text">Email: {{ $customer->email }}</p>
        <p class="card-text">Type: {{ $customer->type }}</p>
        <a data-job_id="1211" href="javascript: void(0)" class="btn btn-primary btn-sm">Edit</a>
    </div>
</div>
@endforeach