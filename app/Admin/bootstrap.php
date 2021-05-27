<?php

/**
 * Laravel-admin - admin builder based on Laravel.
 * @author z-song <https://github.com/z-song>
 *
 * Bootstraper for Admin.
 *
 * Here you can remove builtin form field:
 * Encore\Admin\Form::forget(['map', 'editor']);
 *
 * Or extend custom form field:
 * Encore\Admin\Form::extend('php', PHPEditor::class);
 *
 * Or require js and css assets:
 * Admin::css('/packages/prettydocs/css/styles.css');
 * Admin::js('/packages/prettydocs/js/main.js');
 *
 */
use Encore\Admin\Grid;
use Encore\Admin\Show;
use Encore\Admin\Form;
use App\Admin\Extensions\Form\CKEditor;

Encore\Admin\Form::forget(['map', 'editor']);

// 添加Ckeditor
Form::extend('ckeditor', CKEditor::class);

Grid::init(function (Grid $grid) {
    $grid->disableExport();
    $grid->actions(function ($actions) {
        $actions->disableView();
    });
});

Show::init(function (Show $show) {
    $show->panel()->tools(function ($tools) {
        $tools->disableDelete();
    });
});

Form::init(function (Form $form) {
    $form->disableEditingCheck();
    $form->disableCreatingCheck();
    $form->disableViewCheck();

    $form->tools(function (Form\Tools $tools) {
        $tools->disableView();
    });
});

Admin::navbar(function (\Encore\Admin\Widgets\Navbar $navbar) {
    $navbar->right(new \App\Admin\Extensions\Nav\Links());
});
