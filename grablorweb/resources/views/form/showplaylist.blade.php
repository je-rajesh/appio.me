@extends('layouts.app')
@section('content')

<div class="container">
 <a href="/index"><button style="margin: 2rem" type="button" class="btn btn-outline-primary">&#8592; Dashboard</button> </a> 
    @if(count($data)>0)
<table class="table table-striped">
    <thead>
      <tr>
      <th scope="col">#</th>
      <th scope="col">Icon</th>
        <th scope="col">video Name</th>
        <th scope="col">Action</th>
      </tr>
    </thead>
    <tbody id="page_list">
      @foreach($data as $row)
      <tr>
         @if(!Auth::guest())
      @if(Auth::user()->id == $row->user_id)
        <th scope="row">{{$loop->iteration}}</th>
      <td><img style="height: 5rem;width: 5rem" src="{{$row->imgurl}}"/></td>
      <td>{{$row->title}}</td>
        <td>

        <form action="{{$row->version}}{{'@'}}{{$row->videoId}}" method="POST">
            @method('DELETE')
            @csrf
            <button type="button" style="border: hidden" data-toggle="modal" data-target="#exampleModal2{{$row->videoId}}">
              <i class="tools fas fa-trash"></i>
              </button>
        
<!-- Modal -->
<div class="modal fade" id="exampleModal2{{$row->videoId}}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      Are you sure you want to delete this Video.
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary">Delete</button>
      </div>
    </div>
  </div>
</div>
           </form>
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
{{-- <script>
  $(document).ready(function(){
    $('#page_list').sortable({
      placeholder:'ui-state-highlight',
    });
 });
  </script> --}}
@endsection