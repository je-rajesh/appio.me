@extends('layouts.app')
@section('content')
<div class="container">

  <x-alert type="{{ session('type') }}" message="{{ session('message') }}"></x-alert>

  <div class="d-flex flex-row-reverse">
    <a href="/multiform"> <button type="button" class="createbtn btn btn-success btn-lg">Create Application</button></a>
  </div>
  @if(count($createapp)>0)
  <table class="table table-striped">
    <thead>
      <tr>
        <th scope="col">Name</th>
        <th scope="col">Version</th>
        <th scope="col">Action</th>
        <th scope="col">subdomainurl</th>

      </tr>
    </thead>
    <tbody>
      @foreach($createapp as $createapps)
      <tr>
        @if(!Auth::guest())
        @if(Auth::user()->id == $createapps->user_id)
        <th scope="row">{{$createapps->appname}}</th>
        <td>{{$createapps->version_no}}</td>
        <td><a href=""><button type="button" class="btn btn-primary"><i class="fa fa-share-alt-square"
                aria-hidden="true"></i></button></a>
          <a href="multiform/{{$createapps->id}}/edit"><button type="button" class="btn btn-primary"><i
                class="fa fa-pencil" aria-hidden="true"></i>
            </button></a>
          <a href=""><button type="button" class="btn btn-primary"><i class="fa fa-download" aria-hidden="true"></i>
            </button></a>

          <a href="playlist/{{$createapps->id}}/edit"><button type="button" class="btn btn-primary"><i
                class="fas fa-tasks"></i></button></a>
        </td>

        <td>{{$createapps->subdomainurl}}</td>
        @endif
        @endif
      </tr>
      @endforeach
    </tbody>
  </table>
  @else
  <p>No Appllication</p>
  @endif
</div>
<script>

</script>
@endsection
