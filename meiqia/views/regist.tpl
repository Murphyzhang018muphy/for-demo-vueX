<!-- <div class="app-content">
	<h1>regsit</h1>
</div> -->
<div class="app-content regsit-container">
	<div id="reg-header" class="reg-header">
    	<a class="alogo" href="">
    		<img src="img/logo (1).png">
    	</a>
    	<a id="chat1" class="chat1" target="_blank" href="">
        	<img src="img/help.png">&nbsp;需要帮助
    	</a>
	</div>
	<div class="regsit-inner">
		<h1 class="text-center">美洽</h1>
		<form name="regsit" ng-submit="goToregsit()" class="form-horizontal">
			<div class="form-group">
				<label for="" class="control-label"><h3>企业名</h3></label>
				<div class="">
					<!-- 正则 -->
					<input 
						type="text" 
						class="form-control"
						ng-model="data.username"
						name="username"
						ng-required="true" 
						placeholder="请填写你的企业名称，例如：苹果公司" 
					>
				</div>
			</div>
			<div class="form-group">
				<label for="" class="control-label"><h3>登录邮箱</h3></label>
				<div class="">
					<input 
						type="email" 
						class="form-control"
						ng-model="data.email"
						name="email"
						ng-required="true" 
						placeholder="例如：xiaoming@qq.com" 
					>
					<p ng-hide="regsit.email.$dirty">只用于登录美洽，请放心，我们 <strong ng-hide="regsit.email.$dirty">不会泄露给第三方</strong></p>
				
				</div>
			</div>
			<div class="form-group">
				<label for="" class="control-label"><h3>密码</h3></label>
				<div class="">
					<!-- 密码正则包含数字和字母 -->
					<input 
						type="password" 
						class="form-control"
						ng-model="data.password"
						name="password"
						ng-pattern="/\d+.*[a-zA-Z]+|[a-zA-Z]+.*\d+/"
						ng-required="true" 
						placeholder="********" 
					>
					<p>用于登录美洽的密码，8 至 16 位之间</p>
				</div>
			</div>
			<div class="form-group">
				<label for="" class="control-label"><h3>联系电话</h3></label>
				<div class="">
					<!-- 密码正则包含数字和字母 -->
					<input 
						type="tel" 
						class="form-control"
						ng-model="data.tel"
						name="password"
						ng-required="true" 
						placeholder="********" 
					>
					<p>只用于紧急情况，请放心，我们 <strong>不会泄露给第三方</strong></p>
				
				</div>
			</div>
			<!-- 表单不合法禁用 ng-disabled-->
			<!-- 用按钮，是真正的表单提交 -->
			<button class="regsit1" ng-disabled="regsit.$invalid" class="btn btn-success">立即注册</button>
			<p> 点击立即注册即表示你已阅读并同意《美洽服务条款》 </p>
		</form>
	</div>
</div>