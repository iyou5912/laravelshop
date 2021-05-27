<?php

namespace App\Admin\Extensions\Nav;

class Links
{
    public function __toString()
    {
        return <<<HTML
<li>
    <a href="/" target="_blank">
      <span>访问前台</span>
    </a>
</li>

HTML;
    }
}