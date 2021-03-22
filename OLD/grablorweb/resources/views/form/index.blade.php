@extends('layouts.app')
@section('content')
<div class="container">
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
      <td><a href="" ><svg width="1em" height="1em" viewBox="0 0 16 16" class="tools bi bi-share" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
        <path fill-rule="evenodd" d="M13.5 1a1.5 1.5 0 1 0 0 3 1.5 1.5 0 0 0 0-3zM11 2.5a2.5 2.5 0 1 1 .603 1.628l-6.718 3.12a2.499 2.499 0 0 1 0 1.504l6.718 3.12a2.5 2.5 0 1 1-.488.876l-6.718-3.12a2.5 2.5 0 1 1 0-3.256l6.718-3.12A2.5 2.5 0 0 1 11 2.5zm-8.5 4a1.5 1.5 0 1 0 0 3 1.5 1.5 0 0 0 0-3zm11 5.5a1.5 1.5 0 1 0 0 3 1.5 1.5 0 0 0 0-3z"/>
      </svg></a> 
    <a href="multiform/{{$createapps->id}}/edit"><svg width="1em" height="1em" viewBox="0 0 16 16" class="tools bi bi-pencil" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M12.146.146a.5.5 0 0 1 .708 0l3 3a.5.5 0 0 1 0 .708l-10 10a.5.5 0 0 1-.168.11l-5 2a.5.5 0 0 1-.65-.65l2-5a.5.5 0 0 1 .11-.168l10-10zM11.207 2.5L13.5 4.793 14.793 3.5 12.5 1.207 11.207 2.5zm1.586 3L10.5 3.207 4 9.707V10h.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.5h.293l6.5-6.5zm-9.761 5.175l-.106.106-1.528 3.821 3.821-1.528.106-.106A.5.5 0 0 1 5 12.5V12h-.5a.5.5 0 0 1-.5-.5V11h-.5a.5.5 0 0 1-.468-.325z"/>
    </svg></a>
    <a href=""><svg width="1em" height="1em" viewBox="0 0 16 16" class=" tools bi bi-download" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" d="M.5 9.9a.5.5 0 0 1 .5.5v2.5a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1v-2.5a.5.5 0 0 1 1 0v2.5a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2v-2.5a.5.5 0 0 1 .5-.5z"/>
      <path fill-rule="evenodd" d="M7.646 11.854a.5.5 0 0 0 .708 0l3-3a.5.5 0 0 0-.708-.708L8.5 10.293V1.5a.5.5 0 0 0-1 0v8.793L5.354 8.146a.5.5 0 1 0-.708.708l3 3z"/>
    </svg></a>

    <a href="playlist/{{$createapps->id}}/edit"><i class="fas fa-tasks"></i>

    </a>

    
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