<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="content-language" content="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,user-scalable=no">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="format-detection" content="telephone=no">
    <meta name="author" content="https://www.givetech.cn/">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">

    @include('common.seo')

    @section('css')
    <link rel="stylesheet" href="https://cdn.staticfile.org/Swiper/4.5.0/css/swiper.min.css">
    <link rel="stylesheet" href="{{ config('res.css') }}/main.css">
    @show

    <!--[if lte IE9]><script>window.location.href='https://support.dmeng.net/upgrade-your-browser.html';</script><![endif]-->
    <script>
        (function () {
            if (window.ActiveXObject) {
                var reg = /10\.0/;
                var str = navigator.userAgent;
                if (reg.test(str)) {
                    window.location.href = 'https://support.dmeng.net/upgrade-your-browser.html';
                }
            }
        })();

    </script>
    {!! $web_info->text_m !!}
</head>

<body>
    <header class="page-header">
        <div class="maxwidth c-flex">
            <a href="index.html" class="page-logo">
                <img src="./img/logo.png" class="img" alt="">
                <img src="./img/logo-w.png" class="img-w" alt="">
            </a>
            <nav class="page-nav c-flex">
                <div class="item">
                    <a href="index.html" class="link active">HOME</a>
                </div>
                <div class="item collection">
                    <a href="collection.html" class="link">COLLECTION</a>
                    <div class="subnav">
                        <div class="maxwidth">
                            <div class="header c-flex">
                                <a href="collection.html" class="sitem"><span>Type</span></a>
                                <a href="collection.html" class="sitem"><span>Texture</span></a>
                            </div>
                            <div class="body">
                                <div class="sitem">
                                    <a href="collection.html" class="box">
                                        <img src="./img/nav01.jpg" class="img" alt="">
                                        <div class="title">SOFAS</div>
                                    </a>
                                    <a href="collection.html" class="box">
                                        <img src="./img/nav01.jpg" class="img" alt="">
                                        <div class="title">SOFAS</div>
                                    </a>
                                    <a href="collection.html" class="box">
                                        <img src="./img/nav01.jpg" class="img" alt="">
                                        <div class="title">SOFAS</div>
                                    </a>
                                    <a href="collection.html" class="box">
                                        <img src="./img/nav01.jpg" class="img" alt="">
                                        <div class="title">SOFAS</div>
                                    </a>
                                    <a href="collection.html" class="box">
                                        <img src="./img/nav01.jpg" class="img" alt="">
                                        <div class="title">SOFAS</div>
                                    </a>
                                    <a href="collection.html" class="box">
                                        <img src="./img/nav01.jpg" class="img" alt="">
                                        <div class="title">SOFAS</div>
                                    </a>
                                    <a href="collection.html" class="box">
                                        <img src="./img/nav01.jpg" class="img" alt="">
                                        <div class="title">SOFAS</div>
                                    </a>
                                    <a href="collection.html" class="box">
                                        <img src="./img/nav01.jpg" class="img" alt="">
                                        <div class="title">SOFAS</div>
                                    </a>
                                    <a href="collection.html" class="box">
                                        <img src="./img/nav01.jpg" class="img" alt="">
                                        <div class="title">SOFAS</div>
                                    </a>
                                </div>
                                <div class="sitem"></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <a href="design.html" class="link">DESIGN</a>
                </div>
                <div class="item">
                    <a href="about-philosophy.html" class="link">ABOUT</a>
                </div>
                <div class="item">
                    <a href="news.html" class="link">NEWS</a>
                </div>
                <div class="item">
                    <a href="contact.html" class="link">CONTACT</a>
                </div>
            </nav>
            <a href="search.html" class="search"></a>
            <div class="nav-toggle j-nav-toggle">
                <div class="nav-toggle-list">
                    <span></span>
                    <span></span>
                    <span></span>
                </div>
            </div>
        </div>
    </header>

    <aside class="phone-nav">
        <div class="main">
            <nav>
                <a href="javascript:;" class="item search">
                    <form action="/" method="GET" class="item c-flex j-search-form"
                        data-error="Please enter what you want to search!">
                        <input type="submit" value="" class="submit">
                        <input type="text" name="title" class="input" placeholder="Search..." autocomplete="off">
                    </form>
                </a>
                <a href="index.html" class="item">
                    <span>HOME</span>
                </a>
                <a href="collection.html" class="item">
                    <span>COLLECTION</span>
                </a>
                <a href="design.html" class="item">
                    <span>DESIGN</span>
                </a>
                <a href="about-philosophy.html" class="item">
                    <span>ABOUT</span>
                </a>
                <a href="news.html" class="item">
                    <span>NEWS</span>
                </a>
                <a href="contact.html" class="item">
                    <span>CONTACT</span>
                </a>
            </nav>
            <ul>
                <li></li>
                <li>
                    <div class="title">HOME</div>
                </li>
                <li>
                    <div class="title">COLLECTION</div>
                    <a href="collection.html" class="text">Type</a>
                    <a href="collection.html" class="text">Texture</a>
                </li>
                <li>
                    <div class="title">DESIGN</div>
                    <a href="design.html" class="text">Team</a>
                    <a href="design.html#dw2" class="text">Customized</a>
                </li>
                <li>
                    <div class="title">ABOUT</div>
                    <a href="about-philosophy.html" class="text">Philosophy</a>
                    <a href="about-history.html" class="text">History</a>
                    <a href="about-factory.html" class="text">Factory</a>
                    <a href="about-quality.html" class="text">Quality</a>
                </li>
                <li>
                    <div class="title">NEWS</div>
                </li>
                <li>
                    <div class="title">CONTACT</div>
                </li>
            </ul>
        </div>
        <div class="bg"></div>
    </aside>

    @yield('content')
    
    <footer class="page-footer">
        <div class="top c-flex maxwidth">
            <div class="item">
                <div class="title h4">
                    <a href="index.html">HOME</a>
                </div>
                <div class="title h4">
                    <a href="news.html">NEWS</a>
                </div>
                <div class="title h4">
                    <a href="contact.html">CONTACT</a>
                </div>
            </div>
            <div class="item">
                <div class="title h4">
                    <a href="collection.html">COLLECTION</a>
                </div>
                <div class="text">
                    <a href="collection.html">Sofas</a>
                </div>
                <div class="text">
                    <a href="collection.html">Sectionals</a>
                </div>
                <div class="text">
                    <a href="collection.html">Dining Sets</a>
                </div>
                <div class="text">
                    <a href="collection.html">Bar Sets</a>
                </div>
                <div class="text">
                    <a href="collection.html">Chaise Loungers </a>
                </div>
                <div class="text">
                    <a href="collection.html">Daybeds</a>
                </div>
                <div class="text">
                    <a href="collection.html">Side Tables</a>
                </div>
                <div class="text">
                    <a href="collection.html">Accessories</a>
                </div>
            </div>
            <div class="item">
                <div class="title h4">
                    <a href="design.html">DESIGN</a>
                </div>
                <div class="text">
                    <a href="design.html">Team</a>
                </div>
                <div class="text">
                    <a href="design.html#dw2">Customized</a>
                </div>
            </div>
            <div class="item">
                <div class="title h4">
                    <a href="about-philosophy.html">ABOUT</a>
                </div>
                <div class="text">
                    <a href="about-philosophy.html">Philosophy</a>
                </div>
                <div class="text">
                    <a href="about-history.html">History</a>
                </div>
                <div class="text">
                    <a href="about-factory.html">Factory</a>
                </div>
                <div class="text">
                    <a href="about-quality.html">Quality</a>
                </div>
            </div>
            <div class="item contact">
                <div class="title h4">Subscribe now</div>
                <form action="" method="POST" class="c-flex j-email-form" data-error="Please enter your email!">
                    <input type="text" name="email" class="input" placeholder="Your e-mail" autocomplete="off">
                    <input type="submit" value="SUBSCRUBE" class="submit">
                </form>
            </div>
        </div>
        <div class="bottom c-flex maxwidth">
            <img src="./img/logo.png" class="logo" alt="">
            <div class="copyright">Copyright &#169; 2020 Collection | <a href="http://beian.miit.gov.cn/"
                    target="_blank" rel="nofollow">浙ICP备000000号</a></div>
        </div>
    </footer>

    <div class="c-modal">
        <div class="c-modal-dialog">
            <div class="video content"></div>
            <div class="imgshow content"></div>
            <div class="icon c-modal-off j-modal-off"></div>
        </div>
        <div class="c-modal-backdrop j-modal-off"></div>
    </div>

    @section('js')
    <script src="https://cdn.staticfile.org/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/Swiper/4.5.0/js/swiper.min.js"></script>
    <script src="{{ config('res.js') }}/jquery.nicescroll.min.js"></script>
    <script src="{{ config('res.js') }}/main.js"></script>
    {!! $web_info->text_n !!}
    @show
</body>

</html>
