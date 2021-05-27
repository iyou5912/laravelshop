<?php

use Illuminate\Routing\Router;

Admin::routes();

Route::group([
    'prefix'        => config('admin.route.prefix'),
    'namespace'     => config('admin.route.namespace'),
    'middleware'    => config('admin.route.middleware'),
], function (Router $router) {

    $router->get('/', 'HomeController@index')->name('admin.home');

    $router->get('auth/login', 'AuthController@getLogin');
    $router->post('auth/login', 'AuthController@postLogin');
    
    $router->post('ckeditor/upload/image', 'ckeditor\UploadController@image');

    $router->resource('navs', NavController::class);
    $router->resource('pages', PagesController::class);
    $router->resource('articles', ArticleController::class);
    $router->resource('seos', SeoController::class);

    $router->post('ckeditor/image', 'ckeditor\UploadController@image');
    $router->post('ckeditor/file', 'ckeditor\UploadController@file');
    
});
