@hasSection('title')
    @if($seo_data && $seo_data->title)
        <title>{{ $seo_data->title }}</title>
    @else
        <title>@yield('title')-{{ $web_info->title }}</title>
    @endif
@else
    @if($seo_data && $seo_data->title)
        <title>{{ $seo_data->title }}</title>
    @else
        <title>{{ $web_info->title }}</title>
    @endif
@endif

@hasSection('keywords')
    @if($seo_data && $seo_data->keywords)
        <meta name="keywords" content="{{ $seo_data->keywords }}">
    @else
        <meta name="keywords" content="@yield('keywords')">
    @endif
@else
    @if($seo_data && $seo_data->keywords)
        <meta name="keywords" content="{{ $seo_data->keywords }}">
    @else
        <meta name="keywords" content="{{ $web_info->cover }}">
    @endif
@endif

@hasSection('description')
    @if($seo_data && $seo_data->description)
        <meta name="description" content="{{ $seo_data->description }}">
    @else
        <meta name="description" content="@yield('description')">
    @endif
@else
    @if($seo_data && $seo_data->description)
        <meta name="description" content="{{ $seo_data->description }}">
    @else
        <meta name="description" content="{{ $web_info->content }}">
    @endif
@endif