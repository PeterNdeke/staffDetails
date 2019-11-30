@extends('layouts.app')

@section('content')
<div class="container">
    @include('partials.flash')
    @include('errors.list')
    <h2>Add Staff</h2>
    <form action="{{url("create-staff")}}" method="POST">
        @csrf
            <div class="form-group">
            <label for="exampleInputPassword1">First Name</label>
            
            <input type="text" name="first_name" class="form-control">
             
            </div>
            <div class="form-group">
              <label for="exampleInputPassword1">Last Name</label>
            <input type="text" class="form-control" name="last_name">
            </div>
            <div class="form-group">
                    <label for="exampleInputPassword1">Email</label>
                  <input type="text" class="form-control" name="email">
                  </div>
            <div class="form-group">
                    <label for="exampleInputPassword1">Position</label>
            <input type="text" class="form-control" name="position">
                  </div>

            
            <button type="submit" class="btn btn-primary">Save</button>
          </form>

</div>

@endsection
