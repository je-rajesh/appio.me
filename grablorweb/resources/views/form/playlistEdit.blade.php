@extends('layouts.app')
@section('content')

<div class="container">
    <div class="d-flex flex-row-reverse">
<button type="button" class="add btn btn-primary" data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo">Add Playlist</button>
    </div>
    
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">New message</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      <form method="POST" action="/playlist/{{$playlist2->version}}" enctype="multipart/form-data">
        <input type="hidden" name="_method" value="PUT">
    
        {{ csrf_field() }}
            <div class="form-group">
            <label for="recipient-name" class="col-form-label" >Playlist Id</label>
            <input type="text" name="pid" class="form-control" value="PL1vWQZsGxIP2ZWKLwY-QCeaJ_TlU_iLhn" id="recipient-name" required>
          </div>
        
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary">Add Playlist</button>
      </div>
    </form>
    </div>
  </div>
</div>
@if(count($playlist)>0)
<table class="table table-striped table2" >
  
    <thead>
      <tr>
        <th scope="col">#</th>
      <th scope="col">Icon</th>
        <th scope="col">Playlist Name</th>
        <th scope="col">Action</th>
      </tr>
    </thead>
    <tbody id="page_list">
      @foreach($playlist as $index => $playlists)
      <tr>
        @if(!Auth::guest())
      @if(Auth::user()->id == $playlists->user_id)
      <th scope="row">{{$loop->iteration}}</th>
        <td><img style="height: 5rem;width: 5rem" src="{{$playlists->imgurl}}"/></td>
      <td>{{$playlists->title}}</td>
        <td>

        <a href="/playlistitem/{{$playlists->version}}{{'@'}}{{$playlists->playlistId}}" ><i class="tools fas fa-th-list"></i></a>
         <form action="/playlist/{{$playlists->version}}{{'@grab'}}{{$playlists->playlistId}}" method="POST">
          @method('DELETE')
          @csrf
          <!-- Button trigger modal -->
    <button type="button" style="border: hidden" data-toggle="modal" data-target="#exampleModal2{{$playlists->playlistId}}">
     <i class="tools fas fa-trash"></i>
     </button>

<!-- Modal -->
<div class="modal fade" id="exampleModal2{{$playlists->playlistId}}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      Are you sure you want to delete this playlist.
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary">Delete</button>
      </div>
    </div>
  </div>
</div>
         </form>
        <button type="button" style="border: hidden" data-toggle="modal" data-target="#exampleModal3{{$playlists->version}}{{$playlists->playlistId}}">
          <i style="color: green" class="fas fa-sync-alt"></i>
          </button>

          <!-- Modal -->
<div class="modal fade" id="exampleModal3{{$playlists->version}}{{$playlists->playlistId}}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      Are you sure you want to Refresh this playlist.
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <a href="/playlist/{{$playlists->version}}{{'@'}}{{$playlists->playlistId}}"> <button type="button" class="btn btn-primary">Refresh</button></a>
      </div>
    </div>
  </div>
</div>

        <p>{{$playlists->videoCount}}</p>

        </td>
        @endif
        @endif
      </tr>
       
      
      @endforeach
    </tbody>
  </table>
  <div class="text-center">
  <a href="/index"><button class="btn btn-success">Finish Playlist & Create Application</button></a>
  </div>
  @else
  <p>no playlist found </p>
  @endif

</div>

{{-- <script>
  $(document).ready(function(){
    $('#page_list').sortable({
      placeholder:'ui-state-highlight',
    });
 });
  </script> --}}


@endsection