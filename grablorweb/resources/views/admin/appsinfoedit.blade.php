@extends('layouts.app')
@section('content')
<form action="/appsinfo/{{$id->id}}" method="POST" enctype="multipart/form-data">
<input type="hidden" name="_method" value="PUT">
@csrf
<div class="container">
<div class="row">
    <div class="col-6">
    <label for="exampleInputEmail1">startappid</label>
    <input type="text" name="startappid" class="form-control" value="{{$id->startappid}}" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="startappid">
      @if(isset($id->buildAppContent))
    <label for="exampleInputEmail1">buildAppContent</label>
    <input type="text" name="buildAppContent" value="{{$id->buildAppContent}}" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="buildAppContent">
    @else
    <label for="exampleInputEmail1">buildAppContent</label>
    <input type="text" name="buildAppContent" value="http://appio.me/?utm_medium=published-app&utm_source=app" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="buildAppContent">
    @endif
    <label for="exampleInputEmail1">adMobId</label>
    <input type="text" name="adMobId" value="{{$id->adMobId}}" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="adMobId">
    <label for="exampleInputEmail1">adMobBanner</label>
    <input type="text"name="adMobBanner" value="{{$id->adMobBanner}}" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="adMobBanner">
    <label for="exampleInputEmail1">adMobInterstitial</label>
    <input type="text" name="adMobInterstitial" value="{{$id->adMobInterstitial}}" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="adMobInterstitial">
    <label for="exampleInputEmail1">adColonyUUID</label>
    <input type="text" name="adColonyUUID" value="{{$id->adColonyUUID}}" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="adColonyUUID">
    <label for="exampleInputEmail1">adColonyZonesZero</label>
    <input type="text" name="adColonyZonesZero" value="{{$id->adColonyZonesZero}}" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="adColonyZonesZero">
    <label for="exampleInputEmail1">adColonyZonesOne</label>
    <input type="text" name="adColonyZonesOne" value="{{$id->adColonyZonesOne}}" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="adColonyZonesOne">
    <label for="exampleInputEmail1">adColonyZonesTwo</label>
    <input type="text" name="adColonyZonesTwo" value="{{$id->adColonyZonesTwo}}" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="adColonyZonesTwo">
    <label for="exampleInputEmail1">homeInt</label>
    <input type="text" name="homeInt" class="form-control" value="{{$id->homeInt}}" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="homeInt">
    @if(isset($id->showHomeBanner))
    <div class="form-check">
      <input class="form-check-input" name="showHomeBanner" type="checkbox" value="1" id="defaultCheck1" checked>
      <label class="form-check-label" for="defaultCheck1">
        showHomeBanner
      </label>
    </div>
    @else
    <div class="form-check">
      <input class="form-check-input" name="showHomeBanner" type="checkbox" value="1" id="defaultCheck1">
      <label class="form-check-label" for="defaultCheck1">
        showHomeBanner
      </label>
    </div>
    @endif
    @if(isset($id->showHomeInterstitial))
    <div class="form-check">
      <input class="form-check-input" name="showHomeInterstitial" type="checkbox" value="1" id="defaultCheck1" checked>
      <label class="form-check-label" for="defaultCheck1">
        showHomeInterstitial
      </label>
    </div>
    @else
    <div class="form-check">
      <input class="form-check-input" name="showHomeInterstitial" type="checkbox" value="1" id="defaultCheck1">
      <label class="form-check-label" for="defaultCheck1">
        showHomeInterstitial
      </label>
    </div>
    @endif
    @if(isset($id->showListInterstitial))
    <div class="form-check">
      <input class="form-check-input" name="showListInterstitial" type="checkbox" value="1" id="defaultCheck1" checked>
      <label class="form-check-label" for="defaultCheck1">
        showListInterstitial
      </label>
    </div>
    @else
    <div class="form-check">
      <input class="form-check-input" name="showListInterstitial" type="checkbox" value="1" id="defaultCheck1">
      <label class="form-check-label" for="defaultCheck1">
        showListInterstitial
      </label>
    </div>
    @endif

    </div>
    <div class="col-6">
    <label for="exampleInputEmail1">homeBanner</label>
    <input type="text" name="homeBanner" class="form-control" value="{{$id->homeBanner}}" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="homeBanner">
    <label for="exampleInputEmail1">listInt</label>
    <input type="text" name="listInt" class="form-control" value="{{$id->listInt}}" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="listInt">
    <label for="exampleInputEmail1">listBanner</label>
    <input type="text" name="listBanner" class="form-control" value="{{$id->listBanner}}" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="listBanner">
    <label for="exampleInputEmail1">listIntAfterX</label>
    <input type="number" name="listIntAfterX" class="form-control" value="{{$id->listIntAfterX}}" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="listIntAfterX">
    <label for="exampleInputEmail1">oneSignalKey</label>
    <input type="text" name="oneSignalKey" class="form-control" value="{{$id->oneSignalKey}}" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="oneSignalKey">
    @if(isset($id->loadingVideoText))
    <label for="exampleInputEmail1">loadingVideoText</label>
    <input type="text" name="loadingVideoText" value="{{$id->loadingVideoText}}" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="loadingVideoText">
    @else
    <label for="exampleInputEmail1">loadingVideoText</label>
    <input type="text" name="loadingVideoText" value="Loading Video..." class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="loadingVideoText">
    @endif
    @if(isset($id->videoErrorText))
    <label for="exampleInputEmail1">videoErrorText</label>
    <input type="text" name="videoErrorText" value="{{$id->videoErrorText}}" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="videoErrorText">
    @else
    <label for="exampleInputEmail1">videoErrorText</label>
    <input type="text" name="videoErrorText" value="We are facing some problem loading this video,\nplease try again later" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="videoErrorText">
    @endif
   @if(isset($id->priColor))
   <label for="exampleInputEmail1">priColor</label>
   <input type="text" name="priColor" value="{{$id->priColor}}" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="priColor">
      @else
    <label for="exampleInputEmail1">priColor</label>
    <input type="text" name="priColor" value="0xff900C3F" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="priColor">
    @endif
    @if(isset($id->accColor))
    <label for="exampleInputEmail1">accColor</label>
    <input type="text" name="accColor" value="{{$id->accColor}}" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="accColor">
      @else
    <label for="exampleInputEmail1">accColor</label>
    <input type="text" name="accColor" value="0xff709fb0" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="accColor">
    @endif
    @if(isset($id->shareText))
    <label for="exampleInputEmail1">shareText</label>
    <input type="text" name="shareText" value="{{$id->shareText}}" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="shareText">
    @else
    <label for="exampleInputEmail1">shareText</label>
    <input type="text" name="shareText" value="Check this wonderfull app!!!\nI like it very much" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="shareText">
    @endif

    @if(isset($id->showVideoPageTop))
    <div class="form-check">
     <input class="form-check-input" name="showVideoPageTop" type="checkbox" value="1" id="defaultCheck1" checked>
      <label class="form-check-label" for="defaultCheck1">
        showVideoPageTop
       </label>
       </div>
       @else
       <div class="form-check">
        <input class="form-check-input" name="showVideoPageTop" type="checkbox" value="1" id="defaultCheck1">
         <label class="form-check-label" for="defaultCheck1">
           showVideoPageTop
          </label>
          </div>
          @endif

          @if(isset($id->showVideoPageBottom))
        <div class="form-check">
      <input class="form-check-input" name="showVideoPageBottom" type="checkbox" value="1" id="defaultCheck1" checked>
        <label class="form-check-label" for="defaultCheck1">
          showVideoPageBottom
       </label>
         </div>
         @else
         <div class="form-check">
          <input class="form-check-input" name="showVideoPageBottom" type="checkbox" value="1" id="defaultCheck1">
            <label class="form-check-label" for="defaultCheck1">
              showVideoPageBottom
           </label>
             </div>
             @endif
             @if(isset($id->enableOneSignal))
         <div class="form-check">
          <input class="form-check-input" name="enableOneSignal" type="checkbox" value="1" id="defaultCheck1" checked>
            <label class="form-check-label" for="defaultCheck1">
              enableOneSignal
           </label>
             </div>
             @else
             <div class="form-check">
              <input class="form-check-input" name="enableOneSignal" type="checkbox" value="1" id="defaultCheck1" >
                <label class="form-check-label" for="defaultCheck1">
                  enableOneSignal
               </label>
                 </div>
                 @endif
           
            
</div>
</div>
</div>
<div class="container mt-5 ">
<button type="submit" class="btn btn-success">submit</button></a>
</div>
</form>
@endsection
