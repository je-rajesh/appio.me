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
  </ul>

  <div class="tab-content" id="tabcontent">
     <div id="step-1" class="tab-pane" role="tabpanel">
         <div class="form-group col-md-6">
        <label for="inputCity">Primary color</label><br>
        <input type="color" name="color" id="color" value="#ffff">
        <input type="text" name="color2" id="color2" value="" placeholder="Color Code">
        <p style="color: red" id="colorerror"></p>
       </div>

       <div class="form-group col-md-6">
        <label for="inputCity">secondary color</label><br>
        <input type="color" name="secondarycolor" id="scolor" value="#ffff" >
        <input type="text" name="secondarycolor2" id="scolor2" value="" placeholder="Color Code" >
        <p style="color: red" id="colorerror"></p>
       </div>
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

     
     <div id="step-2" class="tab-pane" role="tabpanel">
       <div class="form-group" id="fg">
      <label for="exampleInputEmail1">API Key</label>
      <input type="text" name="apikey" class="form-control" id="apikey" value="AIzaSyDUF3v8nCibiEEEL3677lSfjPMKWMNdPuQ" aria-describedby="emailHelp" placeholder="API Key" value="">

      <p style="color: red" id="apierror"></p>

      <div class="help-block with errors"></div>
     </div>

     <div class="form-group">
      <div class="form-group" style="margin: 1rem">
        <label for="exampleInputEmail1">App Name</label><span style="color: red" id="appnameerror"></span>
        <input type="text" name="appname" class="form-control getinfo" id="appname" aria-describedby="emailHelp" placeholder="App Name">
        <meta name="csrf-token" content="{{ csrf_token() }}" />
        <label for="exampleInputEmail1">Package Name</label><span style="color: red" id="packagenameerror"></span>
        <input type="text" value="{{$devname}}" name="packagename" class="form-control" id="packagename" aria-describedby="emailHelp" placeholder="Package Name">
        <label for="exampleInputEmail1">Support Email</label><span style="color: red" id="supportemailerror"></span>
        <input type="text" value="vishal@g.com" name="supportemail" class="form-control" id="supportemail" aria-describedby="emailHelp" placeholder="Support Email">
        <label for="exampleInputEmail1">Redirect URL</label><span style="color: red" id="redirecturlerror"></span>
        <input type="text" value="http://appio.me" name="redirecturl" class="form-control" id="redirecturl" aria-describedby="emailHelp" placeholder="Redirect URL">
        <label for="exampleInputEmail1">Privacy Policy URL</label><span style="color: red" id="privacypolicyerror"></span>
        <input type="text" value="http://appio.me" name="privacypolicy" class="form-control" id="privacypolicy" aria-describedby="emailHelp" placeholder="Privacy Policy URL">
      </div>
    </div>
     
     </div>

     

     <div style="height: 30rem" id="step-3" class="tab-pane" role="tabpanel">
       <h3 style="margin: 10px">Application Monetization</h3>
        <div class="row">
          <div class="col-6">
       <label>Facebook Ads:</label>
       <input type="checkbox" class="advertise" name="facebook" value="1"/>
       <div class="container">
        <div class="form-group">
          <label for="exampleInputEmail1">App Id</label>
          <input type="text" name="fbappid" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
        </div>
        <div class="form-group">
          <label for="exampleInputEmail1">Banner Id</label>
          <input type="text" name="fbbannerid" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
        </div><div class="form-group">
          <label for="exampleInputEmail1">Intertential Id</label>
          <input type="text" name="fbinterid" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
        </div>
      </div>
      </div>
      <div class="col-6">
       <label>AdMob:</label>
       <input type="checkbox" name="admob" class="advertise" value="1" />
       <div class="container">
        <div class="form-group">
          <label for="exampleInputEmail1">App Id</label>
          <input type="text" name="adappid" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
        </div>
        <div class="form-group">
          <label for="exampleInputEmail1">Banner Id</label>
          <input type="text" name="adbannerid" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
        </div><div class="form-group">
          <label for="exampleInputEmail1">Intertential Id</label>
          <input type="text" name="adinterid" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
        </div>
      </div>
      </div>
      </div>
     </div>
      
     
     <div id="step-4" class="tab-pane" role="tabpanel">
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

            
   
   $('.advertise').on('change', function() {
        $('.advertise').not(this).prop('checked', false);  
    });
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
   
     if(stepNumber==1)
     {
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

     if(stepNumber==1)
     {
              
                var d = document.forms["myForm"]["scolor2"].value;
                var c = document.forms["myForm"]["scolor"].value;
                document.getElementById("scolor2").value = c;
              if(d==""){
                var c = document.forms["myForm"]["scolor"].value;
                document.getElementById("scolor").value = c;
              }
              else{
                document.getElementById("scolor").value = d;
              }

     }

    var x = document.forms["myForm"]["file"].value;
    
    if(stepNumber==1) 
     {
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
                else
                {
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
  

     if(stepNumber==2)
     {
                    var x = document.forms["myForm"]["apikey"].value;
                    if (x == "") {
                      document.getElementById("apierror").innerHTML = "Provide API key";
                    return false;
                    }
                  else{
                    document.getElementById("apierror").innerHTML = "";

                    }
                    
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

                  const re = /^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;

                   var pattern = new RegExp(re);
                          if(pattern.test(x)==false)
                          {
                            document.getElementById("supportemailerror").innerHTML = "&nbsp;&nbsp;please give valid Support Email";
                        return false;
                            
                          }
                          else{
                            document.getElementById("supportemailerror").innerHTML = "";
                          }
                          
                        


                  
                  var x = document.forms["myForm"]["privacypolicy"].value;
                    if (x == "") {
                    document.getElementById("privacypolicyerror").innerHTML = "&nbsp;&nbsp;Provide Privacy Policy";
                    return false;
                  }
                  else{
                    document.getElementById("privacypolicyerror").innerHTML ="";
                  }
                  var pattern = new RegExp('^(https?:\\/\\/)?'+ // protocol
                '((([a-z\\d]([a-z\\d-]*[a-z\\d])*)\\.)+[a-z]{2,}|'+ // domain name
                '((\\d{1,3}\\.){3}\\d{1,3}))'+ // OR ip (v4) address
                '(\\:\\d+)?(\\/[-a-z\\d%_.~+]*)*'+ // port and path
                '(\\?[;&a-z\\d%_.~+=-]*)?'+ // query string
                '(\\#[-a-z\\d_]*)?$','i'); // fragment locator
                  
                  if(pattern.test(x)==false){
                    document.getElementById("privacypolicyerror").innerHTML ="Type URL";
                    return false;
                  }
                  else{
                    document.getElementById("privacypolicyerror").innerHTML ="";

                  }

                  var y = document.forms["myForm"]["redirecturl"].value;

                  var pattern = new RegExp('^(https?:\\/\\/)?'+ // protocol
                '((([a-z\\d]([a-z\\d-]*[a-z\\d])*)\\.)+[a-z]{2,}|'+ // domain name
                '((\\d{1,3}\\.){3}\\d{1,3}))'+ // OR ip (v4) address
                '(\\:\\d+)?(\\/[-a-z\\d%_.~+]*)*'+ // port and path
                '(\\?[;&a-z\\d%_.~+=-]*)?'+ // query string
                '(\\#[-a-z\\d_]*)?$','i'); // fragment locator
                  
                  if(pattern.test(y)==false){
                    document.getElementById("redirecturlerror").innerHTML ="Type URL";
                    return false;
                  }
                  else{
                    document.getElementById("redirecturlerror").innerHTML ="";

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
