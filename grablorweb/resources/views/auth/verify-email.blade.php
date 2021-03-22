@extends('layouts.app')

@section('content')
<div class="container">
    <x-alert type="{{ session('type') }}" message="{{ session('message') }}"></x-alert>
    {{-- <x-alert :name="$user->name" :roll_no="$user->roll_no" ></x-alert> --}}
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('Login') }}</div>

                <div class="card-body">
                    <h2>YOur email is not verified.</h2>
                    <button class="btn btn-primary" onclick="event.preventDefault(); document.getElementById('form').submit();">Send verification link again</button>
                </div>

                <form action="/email/verification-notification" method="post" id="form">
                    @csrf
                </form>
            </div>
        </div>
    </div>
</div>
@endsection
