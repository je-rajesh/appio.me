@extends('layouts.app')
@section('content')
<div class="container">
<form id="myForm" method="POST" action="/multiform/{{$createapp->id}}" enctype="multipart/form-data">
  <input type="hidden" name="_method" value="PUT">
  {{ csrf_field() }}
  {{ csrf_field() }}
  <div id="smartwizard">
    <ul class="nav">
       
       <li>
           <a class="nav-link" href="#step-1">
              Step 1
           </a>
       </li>
       <li>
           <a class="nav-link" href="#step-2">
              Step 2
           </a>
       </li>
       <li>
           <a class="nav-link" href="#step-3">
              Step 3
           </a>
       </li>
       <li>
        <a class="nav-link" href="#step-4">
           Step 4
        </a>
    </li>
    <li>
      <a class="nav-link" href="#step-5">
         Step 5
      </a>
  </li>
  <li>
    <a class="nav-link" href="#step-6">
       Step 6
    </a>
</li>
    </ul>
  
    <div class="tab-content" id="tabcontent">
       <div id="step-1" class="tab-pane" role="tabpanel">
         <div class="form-step-0" role="form" data-toggle="validator">
           <div class="form-group col-md-6">
          <label for="inputCity">Choose color</label><br>
          <input type="color" name="color" id="color" value="{{$createapp->color}}">
          <input type="text" name="color2" id="color2" value="" placeholder="Color Code">
          <p style="color: red" id="colorerror"></p>
          <div class="help-block with errors"></div>
         </div>
         </div>
       </div>
  
       <div id="step-2" class="tab-pane" role="tabpanel">
          <div class="ml-2 col-sm-6">
              <input type="file"  id="file1" style="visibility: hidden;position: absolute;object-fit: contain;" name="icon" class="file" accept="image/*">
              <div class="input-group my-3">
                <input type="text" value="{{$createapp->icon}}" class="form-control" disabled placeholder="Upload File" id="file" value="">
                <div>
                <div class="input-group-append">
                  <button type="button" class="browse btn btn-primary">Browse...</button>
                  <div class="help-block with errors"></div>
  
                </div>
              </div>
          </div>
          <!-- Button trigger modal -->
      
          </div>
          <p style="color: red" id="fileerror"></p>
          <p style="color: red" id="size"></p>
  
  
  
  <!-- Modal -->
  <div class="col-6" style="height: 20rem;width: 30rem" >
    <img  height="100%" width="100%" src="/storage/icon_image/{{$createapp->icon}}" id="preview" class="img-thumbnail">
  </div>
      </div>
  
   
  
  
       <div id="step-3" class="tab-pane" role="tabpanel">
         <div class="form-group" id="fg">
        <label for="exampleInputEmail1">API Key</label>
        <input type="text" name="apikey" class="form-control" id="apikey" aria-describedby="emailHelp" placeholder="API Key" value="{{$createapp->apikey}}">
        <p style="color: red" id="apierror"></p>
  
        <div class="help-block with errors"></div>
       </div>
       
       </div>
  
       <div id="step-4" class="tab-pane" role="tabpanel">
        <div class="form-group">
          <div class="form-group" style="margin: 1rem">
            <label for="exampleInputEmail1">App Name</label><span style="color: red" id="appnameerror"></span>
            <input type="text" name="appname" value="{{$createapp->appname}}" class="form-control" id="appname" aria-describedby="emailHelp" placeholder="App Name">
            <label for="exampleInputEmail1">Support Email</label><span style="color: red" id="supportemailerror"></span>
            <input type="text" name="supportemail" value="{{$createapp->supportemail}}" class="form-control" id="supportemail" aria-describedby="emailHelp" placeholder="Support Email">
            <label for="exampleInputEmail1">Redirect URL</label><span style="color: red" id="redirecturlerror"></span>
            <input type="text" name="redirecturl" value="{{$createapp->redirecturl}}" class="form-control" id="redirecturl" aria-describedby="emailHelp" placeholder="Redirect URL">
            <label for="exampleInputEmail1">Privacy Policy URL</label><span style="color: red" id="privacypolicyerror"></span>
            <input type="text" name="privacypolicy" value="{{$createapp->privacypolicy}}" class="form-control" id="privacypolicy" aria-describedby="emailHelp" placeholder="Privacy Policy URL">
          </div>
          
        </div>
       </div>
       <div id="step-5" class="tab-pane" role="tabpanel">
        <h3 style="margin: 10px">Application Monetization</h3>
        @if($createapp->advertise=='facebookad')
        <div class="form-check">
         <label class="form-check-label">
           <input type="radio" class="form-check-input" name="optradio" value="facebookad" checked>FacebookAd
         </label>
       </div>
       <div class="form-check">
        <label class="form-check-label">
          <input type="radio" class="form-check-input" name="optradio" value="adword">ADword
        </label>
      </div>
      @elseif($createapp->advertise == '')
      <div class="form-check">
        <label class="form-check-label">
          <input type="radio" class="form-check-input" name="optradio" value="facebookad">FacebookAd
        </label>
      </div>
      <div class="form-check">
       <label class="form-check-label">
         <input type="radio" class="form-check-input" name="optradio" value="adword">ADword
       </label>
     </div>
       @else
       <div class="form-check">
        <label class="form-check-label">
          <input type="radio" class="form-check-input" name="optradio" value="facebookad" >FacebookAd
        </label>
      </div>
       <div class="form-check">
         <label class="form-check-label">
           <input type="radio" class="form-check-input" name="optradio" value="adword" checked>ADword
         </label>
       </div>
       @endif
       
       
       
      

       <div class="form-group row">
         <label for="inputEmail3" class="col-sm-2 col-form-label">BannerId</label>
         <div class="col-sm-10">
           <input type="text" class="form-control" name="bannerid" value="{{$createapp->bannerplacementid	}}" id="inputEmail3" placeholder="BannerId">
         </div>
       </div>
       <div class="form-group row">
         <label for="inputEmail3" class="col-sm-2 col-form-label">InstantialId</label>
         <div class="col-sm-10">
           <input type="text" class="form-control" name="instantialid" value="{{$createapp->interid}}" id="inputEmail3" placeholder="InstantialId">
         </div>
       </div>
      </div>
       <div id="step-6" class="tab-pane" role="tabpanel">
        <div class="form-group">
        <div class="container" style="text-align: center">
          <button type="submit" class="btn btn-success">Edit Application & Manage Playlist</button>
          </div>
        </div>
      </div>
    </div>
  </div>
  </form>
  </div>
  
  
  <script>
  var c = document.forms["myForm"]["color"].value;
    document.getElementById("color2").value = c;
 
   
    // SmartWizard initialize
    $('#smartwizard').smartWizard({
      theme:'arrows',
      transitionSpeed:'400',
      transitionEffect:'fade',
  
      toolbarSettings: {
        toolbarPosition: 'bottom', // none, top, bottom, both
        toolbarButtonPosition: 'right', // left, right, center
        showNextButton: true, // show/hide a Next button
        showPreviousButton: true, // show/hide a Previous button
    }
  
    });
  
    $('#smartwizard').on("leaveStep",function(e,anchorObject,stepDirection,stepNumber){
      
     // alert(stepNumber);
       if(stepNumber==1){
      var x = document.forms["myForm"]["color"].value;
      var y = document.forms["myForm"]["color2"].value;
       if (y == "") {
      document.getElementById("colorerror").innerHTML = "Select App Color";
      return false;
      
    }
       }
  
       
      var x = document.forms["myForm"]["file"].value;
  
      if(stepNumber==2){
      const img = new Image();
      img.src = document.getElementById("preview").src;
      console.log(img.height);
      console.log(img.width);

      if(img.height>512 && img.width>512){
        document.getElementById("fileerror").innerHTML = "choose lower dimension that is 512 X 512";
        return false;
      }
      else if(img.height<512 && img.width<512){
        document.getElementById("fileerror").innerHTML = "choose higher dimension that is 512 X 512";
        return false;
      }
      else{
        document.getElementById("fileerror").innerHTML="";
      }

      if (x == "") {
         
        document.getElementById("fileerror").innerHTML = "Select Icon";

      return false; 
  }
  else{
        document.getElementById("fileerror").innerHTML = "";

      }

  
  const fi = document.getElementById('file1'); 
        // Check if any file is selected. 
        if (fi.files.length > 0) { 
            for (const i = 0; i <= fi.files.length - 1; i++) { 
  
                const fsize = fi.files.item(i).size; 
                const file = Math.round((fsize / 1024)); 
                // The size of the file. 
                if (file >= 800) { 
                document.getElementById("fileerror").innerHTML = "Select Icon less than 800kb";
                   
                }
                else{
                  document.getElementById("fileerror").innerHTML = "";
                  return true;
                }
            } 
        }  

     }
  
       if(stepNumber==3){
      var x = document.forms["myForm"]["apikey"].value;
       if (x == "") {
        document.getElementById("apierror").innerHTML = "Provide API key";
      return false;
      
    }
       }
       if(stepNumber==4){
      var x = document.forms["myForm"]["appname"].value;
       if (x == "") {
        document.getElementById("appnameerror").innerHTML = "&nbsp;&nbsp;Provide APP Name";
      return false;
      
    }
    var x = document.forms["myForm"]["supportemail"].value;
       if (x == "") {
        document.getElementById("supportemailerror").innerHTML = "&nbsp;&nbsp;Provide Support Email";
      return false;
      
    }
    var x = document.forms["myForm"]["redirecturl"].value;
       if (x == "") {
        document.getElementById("redirecturlerror").innerHTML = "&nbsp;&nbsp;Provide Redirect URL";
      return false;
      
    }
    var x = document.forms["myForm"]["privacypolicy"].value;
       if (x == "") {
       document.getElementById("privacypolicyerror").innerHTML = "&nbsp;&nbsp;Provide Privacy Policy";
      return false;
      
    }
       }
  
   
  
    
    
  
      });
      
    $(document).on("click", ".browse", function() {
    var file = $(this).parents().find(".file");
    file.trigger("click");
  });
  $('input[type="file"]').change(function(e) {
    var fileName = e.target.files[0].name;
    $("#file").val(fileName);
  
    var reader = new FileReader();
    reader.onload = function(e) {
      // get loaded data and render thumbnail.
      document.getElementById("preview").src = e.target.result;
    };
    // read the image file as a data URL.
    reader.readAsDataURL(this.files[0]);
  });
  </script> 
  
 
  
 

@endsection
