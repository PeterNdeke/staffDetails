@extends('layouts.app')

@section('content')
<div class="container">
    @include('partials.flash')
    <div class="row">
        <div class="col-md-6">
        <a href="{{url('create-staff-record')}}" type="button" class="btn btn-primary">
                    Add Staff
                </a>
        </div>
        <div class="col-md-6">
        <form action="{{url('search-result')}}" method="post" class="form-inline">
                @csrf
                    <input type="text" placeholder="Search for Staff" name="search" class="form-control pull-right">
                    <button type="submit" class="btn btn-primary">Submit</button>
            </form>
       
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
                <th>Enable/Disable</th>
                <th>Edit Record</th>
               
            </tr>
        </thead>
        <tbody>

            @foreach ($staff as $item)
            <tr>
            <td>{{$item->first_name}}</td>
            <td>{{$item->last_name}}</td>
            <td>{{$item->email}}</td>
            <td>{{$item->position}}</td>
                    
            <td>{{$item->created_at->toFormattedDateString()}}</td>
            <td>
                    @if ($item->status == 'enable')
                    <form onsubmit="return confirm('Do you really want to de-enalbe?');" method="post"  action="{{ url("disable/$item->id")}}" method="POST">
                        {{ csrf_field() }}
                       

                        <button type="submit" class="btn btn-primary">
                             Disable  
                        </button>
                </form>

                    @else
                    <form onsubmit="return confirm('Do you really want to de-enable?');" method="post"  action="{{ url("enable/$item->id")}}" method="POST">
                        {{ csrf_field() }}
                       

                        <button type="submit" class="btn btn-primary">
                             Enable
                        </button>
                </form>
   
                    @endif
                </td>
                <td>  
                        <a href="{{url("edit-staff/$item->id/edit")}}" class="btn btn-primary">
                                      Edit</a
                                    >
      
                        </td>
      
                </tr>
            @endforeach
            
           
            
        </tbody>
       
    </table>
    {{ $staff->links() }}
</div>
<!-- Modal -->

@endsection
