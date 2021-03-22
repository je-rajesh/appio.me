@extends('layouts.app')
@section('content')
<div class="container">
    <table class="table table-striped">
        <thead>
          <tr>
            <th scope="col">id</th>
            <th scope="col">Name</th>
            <th scope="col">Email</th>
            <th scope="col">Date</th>
            <th scope="col">Action</th>

          </tr>
        </thead>
        <tbody>
            @foreach($user as $users)
          <tr>
            <th scope="row">{{$users->id}}</th>
            <td>{{$users->name}}</td>
            <td>{{$users->email}}</td>
            <td>{{$users->created_at}}</td>
            <td>
              <form method="GET" action="/appsinfo" enctype="multipart/form-data">
              <input type="text" name="id" value="{{$users->id}}" hidden>
              <button type="submit" class="btn btn-primary">Open Profle</button>
              </form>
          </td>

          </tr>
          @endforeach
        </tbody>
      </table>
     </div>
   </table>
@endsection
