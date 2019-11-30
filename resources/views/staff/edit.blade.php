@extends('layouts.app')

@section('content')
<div class="container">
    @include('partials.flash')
    <h2>Staff Details</h2>
    <form action="{{url("staff-update/$staff->id")}}" method="POST">
        @csrf
            <div class="form-group">
            <label for="exampleInputPassword1">First Name</label>
            
            <input type="text" name="first_name" class="form-control" value="{{$staff->first_name}}">
             
            </div>
            <div class="form-group">
              <label for="exampleInputPassword1">Last Name</label>
            <input type="text" class="form-control" name="last_name" value="{{$staff->last_name}}">
            </div>
            <div class="form-group">
                    <label for="exampleInputPassword1">Email</label>
                  <input type="text" class="form-control" name="email" value="{{$staff->email}}">
                  </div>
            <div class="form-group">
                    <label for="exampleInputPassword1">Position</label>
            <input type="text" class="form-control" name="position" value="{{$staff->position}}">
                  </div>

            
            <button type="submit" class="btn btn-primary">Update</button>
          </form>

</div>

@endsection
