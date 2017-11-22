<div id="userlists" class="userlists" >
	<div class="app-content" id="app-cont">
		<h1>列表</h1>
		<div class="container-fluid">
			<div class="row title">
				<div class="col-lg-1">用户ID</div>
				<div class="col-lg-1">用户名</div>
				<div class="col-lg-1">性别</div>
				<div class="col-lg-2">密码</div>
				<div class="col-lg-2">电话</div>
				<div class="col-lg-5">简介</div>
			</div>
			<!-- 循环渲染 -->
			<div class="row" ng-repeat='item in list'>
				<div class="col-lg-1">
					<a ng-href="#!/userdetail/{{item.id}}">{{item.id}}</a>
				</div>
				<div class="col-lg-1">{{item.username}}</div>
				<div class="col-lg-1">{{item.sex}}</div>
				<div class="col-lg-2">{{item.password}}</div>
				<div class="col-lg-2">{{item.telephone}}</div>
				<div class="col-lg-5">{{item.info}}</div>
			</div>
			<!-- 页面右下角页面转换 -->
			<ul class="pagination pull-right">
				<li><a href="#!/userlist/{{pageNum <= 1 ? 1 : pageNum - 1}}">上一页</a></li>
				<li><a href="#!/userlist/{{+pageNum + 1}}">下一页</a></li>
				<!-- <li><a href="#!/userlist/{{pageNum + 1}}">后一页</a></li> -->
				<!-- 这个需要设置pageNum的数据 -->
			</ul>
		</div>
	</div>
</div>