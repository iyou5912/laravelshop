<?php

namespace App\Admin\Controllers;

use App\Models\Seo;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class SeoController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'SEO';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Seo());

        $grid->column('router', __('路由'));
        $grid->column('title', __('网站标题'));

        $grid->filter(function ($filter) {
            $filter->disableIdFilter();
            $filter->like('router', '路由');
        });

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
        $show = new Show(Seo::findOrFail($id));

        $show->field('id', __('Id'));

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new Seo());

        $form->text('router', __('路由'))->help('不需要填写网络协议以及域名，如https://www.givetech.cn/about，则填写/about')->rules(function ($form) {
            // 如果不是编辑状态，则添加字段唯一验证
            if (!$id = $form->model()->id) {
                return 'required|unique:seos';
            } else {
                return 'required';
            }
        })->required();
        $form->text('title', '网站标题')->help('对应SEO中的title，留空则为基本信息中的默认值');
        $form->text('keywords', '网站关键词')->help('对应SEO中的Keywords，留空则为基本信息中的默认值');
        $form->textarea('description', '网站描述')->help('对应SEO中的Description，留空则为基本信息中的默认值');

        return $form;
    }
}
