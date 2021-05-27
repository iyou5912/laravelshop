<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>{{config('admin.title')}} | {{ trans('admin.login') }}</title>

    @if(!is_null($favicon = Admin::favicon()))
    <link rel="shortcut icon" href="{{$favicon}}">
    @endif

    <!-- reset -->
    <link href="//cdn.staticfile.org/minireset.css/0.0.2/minireset.min.css" rel="stylesheet">
    <!-- element 2.4.0 -->
    <link href="//cdn.staticfile.org/element-ui/2.4.0/theme-chalk/index.css" rel="stylesheet">
    <!-- lemon-login -->
    <link href="{{ admin_asset("/static/admin/css/login.css")}}" rel="stylesheet">
    <!--[if lte IE9]><script>window.location.href='/static/admin/updatebrowser.html';</script><![endif]-->
</head>

<body class="login-body">
    <div id="app" class="body-loading el-scrollbar-app">
        <el-scrollbar>
            <!-- header -->
            <div class="login-header">
                <div class="c-flex maxwidth">
                    <a href="//www.givetech.cn/" class="login-logo" title="访问格加信息">
                        <img src="{{ admin_asset("/static/admin/img/logo-givetech.png")}}" alt="格加信息">
                    </a>
                    <hr class="hr">
                    <a href="/admin" class="login-logo-text" title="访问格加信息后台管理系统">格加信息后台管理系统</a>
                    <div class="login-contact c-flex">
                        <svg class="icon" aria-hidden="true">
                            <use xlink:href="#icon-lianxi"></use>
                        </svg>
                        <p>格加热线：</p>
                        <a href="tel:400-6294-021" title="拨打电话（需软件支持）">400-6294-021</a>
                        <hr class="hr">
                        <a href="//www.givetech.cn/" target="_blank" title="访问格加信息">访问格加官网</a>
                    </div>
                </div>
            </div>
            <!-- END header -->
            <div class="login-container maxwidth c-flex">
                <!-- login banner -->
                <el-carousel arrow="always" trigger="click" class="login-banner">
                    <el-carousel-item v-for="(item, index) in banner" :key="index">
                        <a :href="item.url" target="_blank"><img :src="item.src" :alt="item.alt"></a>
                    </el-carousel-item>
                </el-carousel>
                <!-- END login banner -->
                <!-- login form -->
                <el-form ref="loginForm" :model="loginForm" :rules="rules" class="login-form"
                    v-loading.fullscreen.lock="isLoading">
                    <h5>格加信息后台管理系统</h5>
                    <el-form-item prop="username">
                        <el-input placeholder="用户名" v-model="loginForm.username" clearable>
                            <template slot="prepend">
                                <svg class="icon" aria-hidden="true">
                                    <use xlink:href="#icon-account"></use>
                                </svg>
                            </template>
                        </el-input>
                    </el-form-item>
                    <el-form-item prop="password">
                        <el-input placeholder="密码" type="password" v-model="loginForm.password" clearable>
                            <template slot="prepend">
                                <svg class="icon" aria-hidden="true">
                                    <use xlink:href="#icon-password"></use>
                                </svg>
                            </template>
                        </el-input>
                    </el-form-item>
                    <el-form-item prop="captcha">
                        <el-row :gutter="20">
                            <el-col :span="14">
                                <el-input v-model="loginForm.captcha" placeholder="验证码" clearable></el-input>
                            </el-col>
                            <el-col :span="10"><img src="{{captcha_src('admin')}}" style="cursor: pointer"
                                    onclick="this.src='{{captcha_src('admin')}}'+Math.random()" id="captchaImg"></el-col>
                        </el-row>
                    </el-form-item>
                    <input type="hidden" value="{{ admin_base_path('auth/login') }}" id="loginApi">
                    <input type="hidden" value="{{ csrf_token() }}" id="csrfToken">
                    <el-button type="primary" @click="submitForm('loginForm')">登 录</el-button>
                    <div class="c-flex">
                        <p>格加热线：<a href="tel:400-6294-021" title="拨打电话（需软件支持）">400-6294-021</a></p>
                        <p>客服QQ：<a href="http://wpa.qq.com/msgrd?v=3&uin=511744380&site=qq&menu=yes" title="联系客服"
                                target="_blank">511744380</a></p>
                    </div>
                </el-form>
                <!-- END login form -->
                <!-- login server -->
                <div class="givetech-service c-flex" id="givetechService">
                    <a href="//www.givetech.cn/" class="item-first">
                        <img src="{{ admin_asset("/static/admin/img/service.jpg")}}" alt="">
                    </a>
                    <div class="item-last">
                        <dl class="first-service">
                            <dt>数字营销</dt>
                            <dd class="c-flex">
                                <a href="//www.givetech.cn/">整案策划</a>
                                <a href="//www.givetech.cn/">搜索引擎渠道</a>
                                <a href="//www.givetech.cn/">微信端服务</a>
                                <a href="//www.givetech.cn/">口碑营销</a>
                                <a href="//www.givetech.cn/">活动策划</a>
                                <div class="a">
                                    <a href="//www.givetech.cn/">SEO优化</a>
                                    <a href="//www.givetech.cn/">搜狗渠道</a>
                                </div>
                                <div class="a">
                                    <a href="//www.givetech.cn/">微信代运营</a>
                                </div>
                                <div class="a">
                                    <a href="//www.givetech.cn/">软文发布</a>
                                    <a href="//www.givetech.cn/">博客论坛</a>
                                </div>
                                <a href="//www.givetech.cn/">DSP精准广告</a>
                                <div class="a">
                                    <a href="//www.givetech.cn/">百度渠道</a>
                                    <a href="//www.givetech.cn/">谷歌渠道</a>
                                </div>
                                <div class="a">
                                    <a href="//www.givetech.cn/">朋友圈广告</a>
                                </div>
                                <div class="a">
                                    <a href="//www.givetech.cn/">百度百科</a>
                                </div>
                                <a href="//www.givetech.cn/">今日头条信息流广告</a>
                                <div class="a">
                                    <a href="//www.givetech.cn/">360渠道</a>
                                </div>
                                <div class="a">
                                    <a href="//www.givetech.cn/">微信活动策划</a>
                                </div>
                                <div class="a">
                                    <a href="//www.givetech.cn/">问答营销</a>
                                </div>
                            </dd>
                        </dl>
                        <dl v-for="(item, index) in service" :key="index">
                            <dt>@{{item.title}}</dt>
                            <dd class="clearfix"><a :href="part.url" v-for="(part, num) in item.content"
                                    :key="num">@{{part.name}}</a>
                            </dd>
                        </dl>
                    </div>
                </div>
                <!-- END login server -->
            </div>
            <footer class="login-footer">©2015-2018 <a href="//www.givetech.cn/" target="_blank"
                    title="杭州网站建设">格加信息科技有限公司版权所有</a></footer>
        </el-scrollbar>
    </div>
    <!-- axios 0.18.0 -->
    <script src="//cdn.staticfile.org/axios/0.18.0/axios.min.js"></script>
    <!-- vue 2.5.16 -->
    <script src="//cdn.staticfile.org/vue/2.5.16/vue.min.js"></script>
    <!-- element 2.4.0 -->
    <script src="//cdn.staticfile.org/element-ui/2.4.0/index.js"></script>
    <!-- iconfont 1.0 -->
    <script src="{{ admin_asset("/static/admin/js/iconfont.js")}}"></script>
    <!-- lemon-login -->
    <script src="{{ admin_asset("/static/admin/js/login.js")}}"></script>
</body>

</html>