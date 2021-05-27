<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Article extends Model
{
    public function sections()
    {
        return $this->hasMany(Section::class, 'parent_id')->orderBy('order', 'desc');
    }
}
