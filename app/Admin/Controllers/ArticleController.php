<?php

namespace App\Admin\Controllers;

use App\Models\Article;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;
use Illuminate\Support\Facades\Route;
use Encore\Admin\Layout\Content;

class ArticleController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '文2章';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Article());

        $grid->column('tips', __('位置'));

        // $grid->disableCreateButton();
        $grid->actions(function ($actions) {
            $actions->disableDelete();
            $actions->disableView();
        });
        $grid->disableFilter();
        $grid->disableColumnSelector();
        $grid->disableBatchActions();

        return $grid;
    }

    /**
     * Make a show builder.
     *
     * @param mixed $id
     * @return Show
     */
    protected function detail($id)
    {
        $show = new Show(Article::findOrFail($id));

        $show->field('id', __('Id'));

        return $show;
    }

    
    public function edit($id, Content $content)
    {
        switch ($id) {
            case 1:
                $title = '首页Banner';
                $text = ' ';
                break;
            default:
                $title = $this->title;
                $text = ' ';
                break;
        }
        return $content
            ->header($title)
            ->description($text)
            ->body($this->form()->edit($id));
    }

    protected function form()
    {
        $form = new Form(new Article());

        if($form->isCreating()) {
            $form->text('tips', '位置');
        } else {
            $id = Route::current()->parameters['article'];

            switch ($id) {
                case 1:
                    $form->hasMany('sections', ' ', function (Form\NestedForm $form) {
                        $form->number('order', trans('admin.order'))->default(0);
                        $form->text('title', '标题');
                        $form->image('cover', '图片')->uniqueName()->help('图片大小建议：1920*1080px');
                        $form->image('picture', '图片-移动端')->uniqueName()->help('图片大小建议：960*800px');
                    });
                    break;
                case 2:
                    break;
                default:
                    $form->text('tips', '位置');
                    break;
            }
    
            $form->saved(function (Form $form) use ($id) {
                admin_toastr(trans('admin.save_succeeded'));
                return redirect()->route('articles.edit', $id);
            });
    
            $form->tools(function (Form\Tools $tools) {
                $tools->disableDelete();
                $tools->disableList();
            });
        }

        return $form;
    }
}
