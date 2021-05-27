<?php

namespace App\Admin\Controllers;

use App\Models\Pages;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;
use Illuminate\Support\Facades\Route;
use Encore\Admin\Layout\Content;

class PagesController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '单页';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Pages());

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
        $show = new Show(Pages::findOrFail($id));

        $show->field('id', __('Id'));

        return $show;
    }

    public function edit($id, Content $content)
    {
        switch ($id) {
            case 1:
                $title = '网站基本信息';
                $text = ' ';
                break;
            case 2:
                $title = '联系方式';
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
        $form = new Form(new Pages());

        if($form->isCreating()) {
            $form->text('tips', '位置');
        } else {
            $id = Route::current()->parameters['page'];

            switch ($id) {
                case 1:
                    $form->image('text_a', '网站LOGO')->uniqueName()->help('图片大小建议： 110 * 110 px')->removable();
                    $form->text('title', '网站标题');
                    $form->text('cover', '网站关键词');
                    $form->textarea('content', '网站描述');
                    $form->ckeditor('text_b', '底部版权信息');
                    $form->textarea('text_m', '第三方代码-头部');
                    $form->textarea('text_n', '第三方代码-底部');
                    break;
                case 2:
                    break;
                default:
                    $form->text('tips', '位置');
                    break;
            }
    
            $form->saved(function (Form $form) use ($id) {
                admin_toastr(trans('admin.save_succeeded'));
                return redirect()->route('pages.edit', $id);
            });
    
            $form->tools(function (Form\Tools $tools) {
                $tools->disableDelete();
                $tools->disableList();
            });
        }

        return $form;
    }
}
