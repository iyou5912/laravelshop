<?php

namespace App\Admin\Controllers;

use App\Models\Nav;
use Encore\Admin\Form;
use Encore\Admin\Layout\Column;
use Encore\Admin\Layout\Content;
use Encore\Admin\Layout\Row;
use Encore\Admin\Tree;
use Encore\Admin\Widgets\Box;
use Illuminate\Routing\Controller;

class NavController extends Controller
{
    use HasResourceActions;

    /**
     * Index interface.
     *
     * @param Content $content
     *
     * @return Content
     */
    public function index(Content $content)
    {
        return $content
            ->title('栏目管理')
            ->description(trans('admin.list'))
            ->row(function (Row $row) {
                $row->column(6, $this->treeView()->render());

                $row->column(6, function (Column $column) {
                    $form = new \Encore\Admin\Widgets\Form();
                    $form->action(admin_base_path('navs'));

                    $form->select('parent_id', trans('admin.parent_id'))->options(Nav::selectOptions());
                    $form->text('title', trans('admin.title'))->rules('required');
                    $form->text('uri', trans('admin.uri'));

                    $column->append((new Box(trans('admin.new'), $form))->style('success'));
                });
            });
    }

    /**
     * Redirect to edit page.
     *
     * @param int $id
     *
     * @return \Illuminate\Http\RedirectResponse
     */
    public function show($id)
    {
        return redirect()->route('admin.auth.menu.edit', ['menu' => $id]);
    }

    /**
     * @return \Encore\Admin\Tree
     */
    protected function treeView()
    {
        $tree = new Tree(new Nav());

        $tree->disableCreate();

        $tree->branch(function ($branch) {
            $payload = "<strong>{$branch['title']}</strong>";

            $uri = $branch['uri'];
            $payload .= "&nbsp;&nbsp;&nbsp;<a href=\"$uri\" class=\"dd-nodrag\">$uri</a>";

            return $payload;
        });

        return $tree;
    }

    /**
     * Edit interface.
     *
     * @param string  $id
     * @param Content $content
     *
     * @return Content
     */
    public function edit($id, Content $content)
    {
        return $content
            ->title(trans('admin.menu'))
            ->description(trans('admin.edit'))
            ->row($this->form()->edit($id));
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    public function form()
    {

        $form = new Form(new Nav());

        $form->display('id', 'ID');

        $form->select('parent_id', trans('admin.parent_id'))->options(Nav::selectOptions());
        $form->text('title', trans('admin.title'))->rules('required');
        $form->text('uri', trans('admin.uri'));

        $form->image('cover', '栏目图片')->uniqueName()->help('图片大小建议：1920*640px');
        $form->image('picture', '栏目图片-移动端')->uniqueName()->help('图片大小建议：1920*640px');

        $form->display('created_at', trans('admin.created_at'));
        $form->display('updated_at', trans('admin.updated_at'));

        // 禁止删除
        $form->tools(function (Form\Tools $tools) {
            $tools->disableDelete();
        });
        // 当存在子集时，无法删除
        // foreach($navs as $nav) {
        //     if ($nav->parent_id == $id) {
        //         $form->tools(function (Form\Tools $tools) {
        //             $tools->disableDelete();
        //         });
        //     }
        // }



        return $form;
    }
}
