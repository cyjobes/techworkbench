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
        <a data-cust_id="{{ $customer->id }}" href="javascript: void(0)" class="btn btn-primary btn-sm cust_edit_bttn">Edit</a>
        <a data-cust_id="{{ $customer->id }}" href="javascript: void(0)" class="btn btn-primary btn-sm cust_delete_bttn">Delete</a>
    </div>
</div>
@endforeach