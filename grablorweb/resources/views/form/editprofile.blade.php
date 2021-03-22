@extends('layouts.app')
@section('content')
<div class="container">
<form method="POST" action="/profile/{{$profile->user_id}}" enctype="multipart/form-data">
    <input type="hidden" name="_method" value="PUT">
    @csrf
    @csrf

    <div class="form-row">
      <div class="form-group col-md-6">
        <label for="inputEmail4">Full-Name</label>
        <input type="text" name="fullname" value="{{$profile->fullname}}" class="form-control" id="fullname">
      </div>
      <div class="form-group col-md-6">
        <label for="inputPassword4">Username</label>
        <input type="text" name="username" class="form-control" id="username" value="{{$profile->username}}">
      </div>
    </div>
    <div class="form-row">
        <div class="form-group col-md-6">
          <label for="inputEmail4">Developername</label>
          <input type="text" name="developername" class="form-control text-lowercase" id="developername" value="{{$profile->developername}}">
        </div>
        
      </div>
    <div class="form-group">
      <label for="inputAddress">Address</label>
      <input type="text" name="address" class="form-control" id="address" value="{{$profile->address}}">
    </div>
    
    <div class="form-row">
      <div class="form-group col-md-6">
        <label for="inputCity">City</label>
        <input type="text" value="{{$profile->city}}" name="city" class="form-control" id="city">
      </div>
      <div class="form-group col-md-4">
        <label for="inputState">State</label>
        <input type="text" value="{{$profile->state}}" name="state" class="form-control" id="state">
      </div>
      <div class="form-group col-md-2">
        <label for="inputZip">Zip</label>
        <input type="text" value="{{$profile->zip}}" name="zip" class="form-control" id="zip">
      </div>
    </div>
    <div class="form-group">
      
    </div>
    <button type="submit" class="btn btn-primary">Save Changes</button>
  </form>
</div>

@endsection