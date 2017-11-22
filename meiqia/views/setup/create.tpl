<!-- <div class="app-content">
	<h1>create user</h1>
</div> -->
<div class="app-content">
	<h1>创建用户</h1>
	<!-- 第二步 绑定name， 注意删除action -->
	<form name="user" ng-submit="submitUserData()" class="form-horizontal container-fluid">
		<div class="form-group">
			<label for="user_username" class="control-label col-lg-2">用户名：</label>
			<div class="col-lg-4">
				<!-- 第一步 绑定数据 -->
				<!-- 第三步 设置约束条件 -->
				<!-- 字母开头，6-9位 -->
				<input 
					type="text" 
					class="form-control"
					ng-model="data.username"
					name="username" 
					id="user_username" 
					ng-required="true"
					ng-pattern="/^[a-zA-Z]\w{5,8}$/"
					placeholder="请输入用户名" 
				>
			</div>
			<!-- 第四步 做校验 -->
			<!-- 输入过，不合法 -->
			<div ng-show="user.username.$dirty && user.username.$invalid" class="text-danger col-lg-4">用户名以字母开头，6-9位</div>
		</div>
		<div class="form-group">
			<label for="user_password" class="control-label col-lg-2">密　码：</label>
			<div class="col-lg-4">
				<!-- 包含字母或者数字 -->
				<input 
					type="text" 
					class="form-control"
					ng-model="data.username"
					name="password" 
					id="user_password" 
					ng-required="true"
					ng-pattern="/\d.*[a-zA-Z]|[a-zA-Z].*\d/"
					placeholder="请输入密码" 
				>
			</div>
			<div class="text-danger col-lg-4" ng-show="user.password.$dirty && user.password.$invalid">密码包含字母或者数字</div>
		</div>
		<div class="form-group">
			<label for="user_tel" class="control-label col-lg-2">电　话：</label>
			<div class="col-lg-4">
				<!-- 1开头11位 -->
				<input 
					type="text" 
					class="form-control"
					ng-model="data.tel"
					name="tel"
					id="user_tel" 
					ng-required="true"
					ng-pattern="/^1\d{10}$/"
					placeholder="请输入手机号" 
				>
			</div>
			<!-- 未输入 或者 合法 -->
			<div ng-hide="user.tel.$pristine || user.tel.$valid" class="text-danger col-lg-4">电话是以1开头11位数字</div>
		</div>
		<div class="form-group">
			<label class="control-label col-lg-2">性　别：</label>
			<div class="col-lg-4">
				<label>男 <input type="radio" value="man" ng-model="data.sex" name="sex"></label>　
				<label>女 <input type="radio" value="woman" ng-model="data.sex" name="sex"></label>
			</div>
			<div class="text-danger col-lg-4"></div>
		</div>
		<div class="form-group">
			<label for="user_intro" class="control-label col-lg-2">简　介：</label>
			<div class="col-lg-4">
				<!-- 不少于30字 ng-pattern="/.{30,}/" -->
				<textarea name="intro" id="user_intro" ng-model="data.intro" class="form-control" ng-required="true" ng-minlength="30" placeholder="请输入简介"></textarea>
			</div>
			<div class="text-danger col-lg-4" ng-show="user.intro.$dirty && user.intro.$invalid">简介不少于30字</div>
		</div>
		<div class="form-group">
			<!-- 表单合法时候可以提交 => 不合法要禁用 -->
			<div class="col-lg-4 col-lg-offset-2"><button ng-disabled="user.$invalid" class="btn btn-success">提交</button></div>
		</div>
	</form>
</div>