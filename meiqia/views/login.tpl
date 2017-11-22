<div class="logins-container">
<div id="holder-login" class="container">
    <a href="https://meiqia.com" class="logo-container">
        <img id="login-logo" src="img/logo (1).png" alt="logo">
    </a>
    <form class="form-login" method="post" autocomplete="on" ng-submit="goToLogin()">
        <div class="form-group">
            <input 
                class="form-control"
                ng-model="data.username"
                name="username"
                ng-required="true" 
                id="email" 
                class="form-control" 
                type="email" 
                placeholder="邮箱"
            >
        </div>
        <div class="form-group">
            <input id="password" ng-model="data.password" class="form-control" type="password" placeholder="密码" name="password" autocomplete="on" required=""
            value="">
        </div>
        <div id="captchaHolder" class="clearfix hide">
            <div class="form-group captcha pull-left">
                <input id="captcha" class="form-control" type="text" placeholder="验证码">
            </div>
            <img id="captchaImg" class="pull-right" src="" alt="点击刷新验证码">
        </div>
        <button id="submitBtn">登录
            <div class="login notice"></div>
        </button>
        <div class="clearfix"> 
            <a class="pull-left" href="#!/login" id="signupURL">注册新团队</a>
            
            <a class="pull-right" href="/forgot-password">忘记密码了？</a>
        </div>
    </form>
</div>
<div id="footer">
<p class="copyright">© 美洽公司</p>
</div>
</div>