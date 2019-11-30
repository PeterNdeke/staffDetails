@extends('layouts.app')

@section('content')
<div class="container">
    @include('partials.flash')
    <div class="row">
        <div class="col-md-6">
                <h2>Staff Details</h2>
        </div>
        
    </div>
    
    <table id="example" class="table table-striped table-bordered" style="width:100%">
        <thead>
            <tr>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Email</th>
                <th>Position</th>
                
                <th>Start date</th>
               
               
            </tr>
        </thead>
        <tbody>

            @foreach ($searchResults as $type =>$item)
            <tr>
            <td>{{$item->searchable->first_name}}</td>
            <td>{{$item->searchable->last_name}}</td>
            <td>{{$item->searchable->email}}</td>
            <td>{{$item->searchable->position}}</td>
                    
            <td>{{$item->searchable->created_at->toFormattedDateString()}}</td>
          
      
                </tr>
            @endforeach
            
           
            
        </tbody>
       
    </table>
   
</div>

@endsection
