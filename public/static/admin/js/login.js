(function () {
    new Vue({
        el: '#app',
        data: {
            isLoading: false,
            banner: [{
                    src: '/static/admin/img/banner01.jpg',
                    url: '//www.givetech.cn/',
                    alt: '老客户二次合作享受优惠'
                }
            ],
            service: [{
                    title: "品牌定制",
                    content: [{
                            name: "需求整合",
                            url: "//www.givetech.cn/"
                        },
                        {
                            name: "市场调研",
                            url: "//www.givetech.cn/"
                        },
                        {
                            name: "用户研究",
                            url: "//www.givetech.cn/"
                        },
                        {
                            name: "概念设计",
                            url: "//www.givetech.cn/"
                        },
                        {
                            name: "VI设计",
                            url: "//www.givetech.cn/"
                        },
                        {
                            name: "策略定制",
                            url: "//www.givetech.cn/"
                        }
                    ]
                },
                {
                    title: "平台开发",
                    content: [{
                            name: "B2B平台",
                            url: "//www.givetech.cn/"
                        },
                        {
                            name: "B2C平台",
                            url: "//www.givetech.cn/"
                        },
                        {
                            name: "O2O平台",
                            url: "//www.givetech.cn/"
                        },
                        {
                            name: "直播平台",
                            url: "//www.givetech.cn/"
                        },
                        {
                            name: "CRM系统开发",
                            url: "//www.givetech.cn/"
                        },
                        {
                            name: "ERP系统开发",
                            url: "//www.givetech.cn/"
                        },
                        {
                            name: "新建节点",
                            url: "//www.givetech.cn/"
                        }
                    ]
                },
                {
                    title: "移动应用开发",
                    content: [{
                            name: "APP开发",
                            url: "//www.givetech.cn/"
                        },
                        {
                            name: "微信服务定制",
                            url: "//www.givetech.cn/"
                        },
                        {
                            name: "H5定制",
                            url: "//www.givetech.cn/"
                        },
                        {
                            name: "小程序开发",
                            url: "//www.givetech.cn/"
                        },
                        {
                            name: "微商城开发",
                            url: "//www.givetech.cn/"
                        },
                        {
                            name: "微分销开发",
                            url: "//www.givetech.cn/"
                        },
                        {
                            name: "微商城开发",
                            url: "//www.givetech.cn/"
                        }
                    ]
                },
                {
                    title: "高端网站建设",
                    content: [{
                            name: "企业官网",
                            url: "//www.givetech.cn/"
                        },
                        {
                            name: "品牌官网",
                            url: "//www.givetech.cn/"
                        },
                        {
                            name: "营销型网站",
                            url: "//www.givetech.cn/"
                        },
                        {
                            name: "功能类网站",
                            url: "//www.givetech.cn/"
                        },
                        {
                            name: "活动类网站",
                            url: "//www.givetech.cn/"
                        },
                        {
                            name: "微分销开发",
                            url: "//www.givetech.cn/"
                        },
                        {
                            name: "微商城开发",
                            url: "//www.givetech.cn/"
                        }
                    ]
                }
            ],
            loginForm: {
                username: "",
                password: "",
                captcha: "",
                csrfToken: "",
                loginApi: ""
            },
            rules: {
                username: [{
                    required: true,
                    message: "请输入用户名",
                    trigger: "blur"
                }],
                password: [{
                    required: true,
                    min: 1,
                    message: "密码不能为空",
                    trigger: "blur"
                }],
                captcha: [{
                    required: true,
                    message: "请输入验证码",
                    trigger: "blur"
                }]
            }
        },
        created: function () {
            var app = document.getElementById('app');
            app.classList.remove('body-loading');
            this.loginForm.csrfToken = document.getElementById('csrfToken').value;
            this.loginForm.loginApi = document.getElementById('loginApi').value;
        },
        methods: {
            submitForm(formName) {
                let that = this;
                // 验证输入是否符合规则
                this.$refs[formName].validate(valid => {
                    if (valid) {
                        this.isLoading = true;
                        axios.post(this.loginForm.loginApi, {
                                username: this.loginForm.username,
                                password: this.loginForm.password,
                                captcha: this.loginForm.captcha,
                                csrfToken: this.loginForm.csrfToken
                            })
                            .then(function (response) {
                                switch (response.data) {
                                    case 1:
                                        // 登陆成功
                                        that.$notify({
                                            title: '登录成功',
                                            message: '1s后前往后台管理页面',
                                            type: 'success'
                                        });
                                        setTimeout(function () {
                                            location.reload();
                                        }, 1000);
                                        break;
                                    case 0:
                                        // 用户名或密码错误
                                        document.getElementById('captchaImg').src = '/captcha/admin?' + Math.random();
                                        that.loginForm.captcha = '';
                                        that.loginForm.password = '';
                                        that.isLoading = false;
                                        that.$notify.error({
                                            title: '登录失败',
                                            message: '用户名或密码错误'
                                        });
                                        break;
                                    case -1:
                                        // 验证码错误
                                        document.getElementById('captchaImg').src = '/captcha/admin?' + Math.random();
                                        that.loginForm.captcha = '';
                                        that.isLoading = false;
                                        that.$notify.error({
                                            title: '登录失败',
                                            message: '验证码错误'
                                        });
                                        break;
                                    default:
                                        this.isLoading = false;
                                        that.$notify.error({
                                            title: '登录失败',
                                            message: '未知错误'
                                        });
                                        break;
                                }
                            })
                            .catch(function () {
                                this.isLoading = false;
                                that.$notify.error({
                                    title: '登录失败',
                                    message: '未知错误'
                                });
                            });
                    } else {
                        return false;
                    }
                });
            }
        }
    })
})();