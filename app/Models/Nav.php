<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Encore\Admin\Traits\AdminBuilder;
use Encore\Admin\Traits\ModelTree;
use Illuminate\Support\Facades\Request;
use App\Models\Product;

class Nav extends Model
{
    use ModelTree, AdminBuilder;

    public static function boot()
    {
        parent::boot();

        static::deleted(function ($model)
        {
            // Product::where('parent_id', $model->id)->delete();
        });

        static::saving(function (Model $branch) {
            $parentColumn = $branch->getParentColumn();
            if (Request::has($parentColumn) && Request::input($parentColumn) == $branch->getKey()) {
                throw new \Exception(trans('admin.parent_select_error'));
            }

            if (Request::has('_order')) {
                $order = Request::input('_order');
                Request::offsetUnset('_order');
                static::tree()->saveOrder($order);
                return false;
            }
            return $branch;
        });
    }
}
