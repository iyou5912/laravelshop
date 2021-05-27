<?php

namespace App\Http\Controllers\Web;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Pages;
use App\Models\Nav;
use App\Models\Article;
use App\Models\Section;
use App\Models\Seo;


class PageController extends Controller
{

    public function index() {
        $publicdata = $this->publicdata(1);

        $index_a = 1;
        $privatedata = [
            'index_a' => $index_a
        ];

        $alldata = array_merge($publicdata, $privatedata); 

        return view('index', $alldata);
    }

    protected function publicdata($column_id)
    {
        $web_info = Pages::where('id', 1)->first();
        $page_nav = Nav::orderBy('order')->get();
        $seo_data = Seo::where('router', \Request::getRequestUri())->first();
        $contact_data = Pages::where('id', 2)->first();
        $first_column_current = Nav::where('id', $column_id)->first();

        return [
            'web_info' => $web_info,
            'page_nav' => $page_nav,
            'seo_data' => $seo_data,
            'contact_data' => $contact_data,
            'first_column_current' => $first_column_current
        ];
    }
}