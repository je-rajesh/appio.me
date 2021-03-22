@extends('layouts.app')
@section('content')
<div class="container">
    <table class="table table-striped">
        <thead>
          <tr>
            <th scope="col">Id</th>
            <th scope="col">User_Id</th>
            <th scope="col">App Name</th>
            <th scope="col">Package Name</th>
            <th scope="col">Subdomain</th>
            <th scope="col">Redirecturl</th>
            <th scope="col">Action</th>

          </tr>
        </thead>
        <tbody>
            @foreach($apps as $app)
          <tr>
            <th scope="row">{{$app->id}}</th>
            <td>{{$app->user_id}}</td>
            <td>{{$app->appname}}</td>
            <td>{{$app->packagename}}</td>
            <td>{{$app->subdomainurl}}</td>
            <td>{{$app->redirecturl}}</td>
            <td>
              
              <a href="appsinfo/{{$app->id}}/edit">
              <button type="submit" class="btn btn-danger">Edit</button></a>
            
          </td>
          </tr>
          @endforeach
        </tbody>
      </table>
     </div>
   </table>
@endsection
