@extends('layouts.app')
@section('content')

<div class="container">
    <a href="/playlist"><button type="submit">Go Back</i></button>

    @if(count($playlistitems)>0)
<table class="table table-striped">
    <thead>
      <tr>
      <th scope="col">#</th>
      <th scope="col">Icon</th>
        <th scope="col">video Name</th>
        <th scope="col">Action</th>
      </tr>
    </thead>
    <tbody>
      @foreach($playlistitems as $playlistitem)
      <tr>
         @if(!Auth::guest())
      @if(Auth::user()->id == $playlistitem->user_id)
        <th scope="row">{{$playlistitem->id}}</th>
      <td><img style="height: 5rem;width: 5rem" src="{{$playlistitem->imgurl}}"/></td>
      <td>{{$playlistitem->title}}</td>
        <td>

          <form action="{{ route('playlistitem.destroy', $playlistitem->videoId) }}" method="POST">
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
           <a href="/playlist/{{$playlists->playlistId}}"><button type="button" class="add btn btn-success"> <i class="fas fa-sync-alt"></i></button></a>
           <p>{{$playlists->videoCount}}</p>
        </td>
        @endif
        @endif
      </tr>
  
        
    
      
      @endforeach
    </tbody>
  </table>
 @else
     <p>no video found</p>
     @endif


</div>

@endsection