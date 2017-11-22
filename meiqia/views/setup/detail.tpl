<div class="big-info">
	<div class="info-contaner">
		<div class="personal">
			<i><</i>
			<span>个人信息</span>
		</div>
		<div class="include-all">
			<div class="info-inner">
				<div class="info">
					<p>账号信息</p>
					<span>除头像外，账号信息只会展示给团队内成员，顾客不会看见</span>
				</div>
				<form class="form-horizontal">
					<div class="pic form-group">
						<label for=""><img src="img/default/default-avatar.jpg" alt=""></label>
						<a>
							<label>
								<input type="file" class="hide" accept="image/png, image/jpeg, image/gif">换一个新头像
							</label>
						</a>
						<div class="main__colorGray___8Deo5">你可以选择 jpg, gif, png 格式的图片，最大 5Mb</div>
					</div>
					<div class="form-group">
						<label class="control-label">登录邮箱</label>
						<div class="control-content">
							<span style="margin-right: 8px;">XXXXXXXX@qq.com</span><a ng-click="isClick()">修改邮箱</a>
							<div class="modal-dialog" ng-if="isShow">
								<div class="modal-backdrop fade in"></div>
								<div class="modal-content" role="document">
									<div class="custom-modal profile__emailChangeModal___2l5Di">
										<i class="feature20-icons-x15 icon-times-gray"></i>
										<header>
											<h3>修改邮箱</h3>
										</header>
										<section>
											<p class="profile__formnew">新邮箱地址</p>
											<input type="text" id="newEmail" placeholder="请输入正确的邮箱格式">
											<p class="profile_formInfo">*我们将会发送一封验证邮件到您的新邮箱</p>
											<div>
												<p class="profile__formnew">验证码</p>
												<input type="text" id="ca" class="profile__yanzheng" style="display: inline-block;">
												<input type="text" id="ca_token" style="display: none;">
												<div class="profile__yan">
													<img src="img/default/验证码.png">
												</div>
											</div>
										</section>
										<footer>
											<button class="btn-blue btn">发送验证</button>
											<div class="cancel-btn">
												<button class="btn btn-cancel" ng-click="isToggle()">取消</button>
											</div>
										</footer>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="form-group">
						<label class="control-label">密码</label>
						<div class="control-content">
							<a>修改密码</a>
						</div>
					</div>
					<div class="form-group">
						<label class="control-label">真实姓名</label>
						<div class="control-content">
							<span>超级管理员</span>
						</div>
					</div>
					<div class="form-group">
						<label class="control-label">工号</label>
						<div class="control-content">
							<span></span>
						</div>
					</div>
				</form>
			</div>
			<div class="info-inners">
				<form class="form-horizontal" ng-submit="submitUserData()">
					<div class="info">
						<p>客服名片</p>
						<span>名片里面的信息将会被展示给对话中的顾客</span>
					</div>
					<div class="form-horizontal">
						<div class="form-group">
							<label class="control-label">名称</label>
							<div class="control-content">
								<input type="text" id="nickname" class="form-control main__inputMd___8ojY6">
							</div>
						</div>
						<div class="form-group">
							<label class="control-label">自定义签名</label>
							<div class="control-content">
								<input type="text" id="signature" class="form-control main__inputLg___2fayt">
								<span class="main__colorGray___8Deo5">您可以在自定义签名中填写如「职位名称」、「特别说明」甚至您的「座右铭」</span>
							</div>
						</div>
						<div class="form-group">
							<label class="control-label">座机</label>
							<div class="control-content">
								<input type="text" id="telephone" class="form-control main__inputMd___8ojY6">
							</div>
						</div>
						<div class="form-group">
							<label class="control-label">手机</label>
							<div class="control-content">
								<input type="text" id="public_cellphone" class="form-control main__inputMd___8ojY6">
							</div>
						</div>
						<div class="form-group">
							<label class="control-label">邮箱</label>
							<div class="control-content">
								<input type="text" id="public_email" class="form-control main__inputMd___8ojY6">
							</div>
						</div>
						<div class="form-group">
							<label class="control-label">QQ</label>
							<div class="control-content">
								<input type="text" id="qq" class="form-control main__inputMd___8ojY6">
							</div>
						</div>
						<div class="form-group">
							<label class="control-label">微信</label>
							<div class="control-content">
								<input type="text" id="weixin" class="form-control main__inputMd___8ojY6">
							</div>
						</div>
						<div class="form-group">
							<label class="control-label"></label>
							<div class="control-content">
								<a href="#!/setting">
									<button class="btn btn-cancel main__button___3N5TQ">取消</button>
								</a>
								<button class="btn btn-blue main__button___3N5TQ">确定</button>
							</div>
						</div>
					</div>
				</form>
			</div>

		</div>
	</div>
</div>