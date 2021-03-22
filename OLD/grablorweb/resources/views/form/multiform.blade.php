@extends('layouts.app')
@section('content')

 <div class="container">
<form name="myForm" id="myForm" data-toggle="validator" role="form" method="POST" action="/multiform" enctype="multipart/form-data"  accept-charset="utf-8">
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
        <input type="color" name="color" id="color" value="#ffff">
        <input type="text" name="color2" id="color2" value="" placeholder="Color Code">

        <p style="color: red" id="colorerror"></p>
        <div class="help-block with errors"></div>
       </div>
       </div>
     </div>

     <div id="step-2" class="tab-pane" role="tabpanel">
        <div class="ml-2 col-sm-6">
            <input type="file" value="" id="file1" style="visibility: hidden;position: absolute;object-fit: contain;" name="icon" class="file" accept="image/*">
            <div class="input-group my-3">
              <input type="text" class="form-control" disabled placeholder="Upload File" id="file" value="">
              <div>
              <div class="input-group-append">
                <button type="button" class="browse btn btn-primary">Browse...</button>
              </div>
            </div>
        </div>
            </div>
        <p style="color: red" id="fileerror"></p>
        <p style="color: red" id="size"></p>
        <div class="container" style="color: blue;font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif">
        <p>Icon not exceeding 800kb.</p>
        <p>File format .jpeg, .png</p>
        <p>Image Dimension 512 X 512.</p>
        </div>



<!-- Modal -->
<div class="col-6" style="height: 20rem;width: 30rem" >
  <img  height="100%" width="100%" src="" id="preview" class="img-thumbnail">
</div>
    </div>

 


     <div id="step-3" class="tab-pane" role="tabpanel">
       <div class="form-group" id="fg">
      <label for="exampleInputEmail1">API Key</label>
      <input type="text" name="apikey" class="form-control" id="apikey" value="AIzaSyDUF3v8nCibiEEEL3677lSfjPMKWMNdPuQ" aria-describedby="emailHelp" placeholder="API Key" value="">

      <p style="color: red" id="apierror"></p>

      <div class="help-block with errors"></div>
     </div>
     
     </div>

     <div id="step-4" class="tab-pane" role="tabpanel">
      <div class="form-group">
        <div class="form-group" style="margin: 1rem">
          <label for="exampleInputEmail1">App Name</label><span style="color: red" id="appnameerror"></span>
          <input type="text" name="appname" class="form-control" id="appname" aria-describedby="emailHelp" placeholder="App Name">
          <label for="exampleInputEmail1">Package Name</label><span style="color: red" id="packagenameerror"></span>
          <input type="text" value="{{$devname}}" name="packagename" class="form-control" id="packagename" aria-describedby="emailHelp" placeholder="Package Name">
          <label for="exampleInputEmail1">Support Email</label><span style="color: red" id="supportemailerror"></span>
          <input type="text" name="supportemail" class="form-control" id="supportemail" aria-describedby="emailHelp" placeholder="Support Email">
          <label for="exampleInputEmail1">Redirect URL</label><span style="color: red" id="redirecturlerror"></span>
          <input type="text" name="redirecturl" class="form-control" id="redirecturl" aria-describedby="emailHelp" placeholder="Redirect URL">
          <label for="exampleInputEmail1">Privacy Policy URL</label><span style="color: red" id="privacypolicyerror"></span>
          <input type="text" name="privacypolicy" class="form-control" id="privacypolicy" aria-describedby="emailHelp" placeholder="Privacy Policy URL">
        </div>
        
      </div>
     </div>
     <div id="step-5" class="tab-pane" role="tabpanel">
       <h3 style="margin: 10px">Application Monetization</h3>

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
     
      
      <div class="form-group row">
        <label for="inputEmail3" class="col-sm-2 col-form-label">BannerId</label>
        <div class="col-sm-10">
          <input type="text" class="form-control" name="bannerid" id="inputEmail3" placeholder="BannerId">
        </div>
      </div>
      <div class="form-group row">
        <label for="inputEmail3" class="col-sm-2 col-form-label">InstantialId</label>
        <div class="col-sm-10">
          <input type="text" class="form-control" name="instantialid" id="inputEmail3" placeholder="InstantialId">
        </div>
      </div>
     </div>
     
     <div id="step-6" class="tab-pane" role="tabpanel">
      <div class="form-group">
      <div class="container" style="text-align: center">
        <button type="submit" class="btn btn-success">Create Application & Manage Playlist</button>
        </div>
      </div>
    </div>
  </div>
</div>
</form>
</div>


<script>
  

  // SmartWizard initialize
  $('#smartwizard').smartWizard({
    theme:'arrows',
    transitionSpeed:'400',
    transitionEffect:'fade',

    toolbarSettings: {
      toolbarPosition: 'bottom', // none, top, bottom, both
      toolbarButtonPosition: 'right', // left, right, center
      showPreviousButton: true, // show/hide a Previous button
  }
  });

  $("#smartwizard").on("showStep", function(e, anchorObject, stepIndex, stepDirection) {
  // alert("You are on step "+stepIndex+" now");
});

  $('#smartwizard').on("leaveStep",function(e,anchorObject,stepDirection,stepNumber){
    
   // alert(stepNumber);
     if(stepNumber==1){
    //var x = document.forms["myForm"]["color"].value;
   // document.getElementById("color2").value = x;
    //var y = document.forms["myForm"]["color2"].value;
    var d = document.forms["myForm"]["color2"].value;
    var c = document.forms["myForm"]["color"].value;
    document.getElementById("color2").value = c;
   if(d==""){
    var c = document.forms["myForm"]["color"].value;
    document.getElementById("color").value = c;
   }
   else{
    document.getElementById("color").value = d;
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
  else{
    document.getElementById("apierror").innerHTML = "";

  }
     }
     if(stepNumber==4){
    var x = document.forms["myForm"]["appname"].value;
     if (x == "") {
      document.getElementById("appnameerror").innerHTML = "&nbsp;&nbsp;Provide APP Name";
    return false; 
  }
  else{
    document.getElementById("appnameerror").innerHTML = "";
  }
  var x = document.forms["myForm"]["supportemail"].value;
     if (x == "") {
      document.getElementById("supportemailerror").innerHTML = "&nbsp;&nbsp;Provide Support Email";
    return false;
  }
  else{
    document.getElementById("supportemailerror").innerHTML = "";
  }
  var x = document.forms["myForm"]["redirecturl"].value;
     if (x == "") {
      document.getElementById("redirecturlerror").innerHTML = "&nbsp;&nbsp;Provide Redirect URL";
    return false;
  }
  else{
    document.getElementById("redirecturlerror").innerHTML = "";
  }
  var x = document.forms["myForm"]["privacypolicy"].value;
     if (x == "") {
     document.getElementById("privacypolicyerror").innerHTML = "&nbsp;&nbsp;Provide Privacy Policy";
    return false;
  }
  else{
    document.getElementById("privacypolicyerror").innerHTML ="";
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
