@extends('app')

@section('title', $first_column_current->title)
@section('keywords', '')
@section('description', '')

@section('css')
@parent
@endsection

@section('content')
<main class="page-main" id="pageMain" data-page="index"></main>
@endsection

@section('js')
@parent
@endsection