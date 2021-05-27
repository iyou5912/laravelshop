<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Section extends Model
{
    protected $fillable = ['parent_id', 'order', 'title', 'content', 'cover', 'picture', 'link', 'tit', 'text'];
    
    public function article()
    {
        return $this->belongsTo(Article::class, 'parent_id');
    }
}
