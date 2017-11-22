angular.module('app',['ui.router'])
.config(function($stateProvider,$urlRouterProvider){
	$stateProvider
		// 主页
		.state('home',{
			url:'/',
			templateUrl:'views/home.tpl',
			controller:'homeCtrl'
		})
		// 默认页
		.state('consent',{
			url:'/consent',
			templateUrl:'views/consent.tpl',
			controller:'consentCtrl'
		})
		// 注册页
		.state('regist',{
			url:'/regist',
			templateUrl:'views/regist.tpl',
			controller:'regsitCtrl'
		})
		// 登录页
		.state('login',{
			url:'/login',
			templateUrl:'views/login.tpl',
			controller:'loginCtrl'
		})
		// 用户模块
		// 设置
		.state('setting',{
			url:'/setting',
			templateUrl: 'views/setup/setting.tpl',
			controller: 'createSetUp'
		})
		// 个人信息
		.state('usersDetail',{
			url:'/userdetail/:userId',
			templateUrl: 'views/setup/details.tpl',
			controller: 'usersDetailCtrl'
		})
		// // 用户详情
		// .state('newsDetail',{
		// 	url:'/userdetail/:userId',
		// 	templateUrl: 'views/user/detail.tpl',
		// 	controller: 'nwesDetailCtrl'
		// })
		// 创建新闻模块
		// 创建新闻
		.state('createNews',{
			url:'/createnews',
			templateUrl: 'views/news/create.tpl',
			controller: 'createNewsCtrl'
		})
		// 列表
		.state('userList',{
			url:'/setting/10',
			templateUrl: 'views/setup/list.tpl',
			controller: 'userListCtrl'
		})
		// 详情
		.state('userDetail',{
			url:'/setting/00',
			templateUrl: 'views/setup/detail.tpl',
			controller: 'userDetailCtrl'
		})
	// 默认
	$urlRouterProvider
		.otherwise('/')
})
.controller('newsDetailCtrl', function() {})
.controller('newsListCtrl', function() {})
.controller('createNewsCtrl', function() {})
.controller('usersDetailCtrl', function($scope, $stateParams, $http) {
	// 获取数据
	$http
		.get('action/userdetail.json', {
			params: {
				// 携带上用户的id
				id:  $stateParams.userID
			}
		})
		// 请求返回，存储数据
		.then(function(res) {
			// 存储数据
			$scope.data = res.data.data
		})

})

.controller('userDetailCtrl', function($scope, $stateParams, $http, $location) {
	$scope.isShow=false;
	// console.log(5555)
	$scope.isClick = function(){
		$scope.isShow=true;
		// console.log(1111)
	}
	$scope.isToggle = function(){
		$scope.isShow=false;
	}
		$scope.submitUserData = function(){
		// 将数据以post请求，发送给后端，返回成功，就进入列表页
		$http
			.post('action/createuser.php', $scope.data)
			.then(function(res) {
				if (res && res.data.errno === 0) {
					// 进入列表页
					// console.log(5555)
					$location.path('/setting/10')
				}
			})
	}
})
.controller('userListCtrl', function($scope, $stateParams, $http) {
	// 获取页码(保存，需要渲染到页面中)
	$scope.pageNum = $stateParams.pageNum;
	// 请求数据
	$http
		.get('action/userlist.php?page=' + $scope.pageNum)
		// 监听回调，存储数据
		.then(function(res) {
			// 存储数据
			$scope.list = res.data.data;
		})
})
.controller('createUserCtrl', function($scope,$http,$location) {
	$scope.submitUserData = function(){
		// 将数据以post请求，发送给后端，返回成功，就进入列表页
		$http
			.post('action/createuser.php', $scope.data)
			.then(function(res) {
				if (res && res.data.errno === 0) {
					// 进入列表页
					$location.path('/userlist/1')
				}
			})
	}
})
.controller('navCtrl', function($scope,$element) {
	// 导航页
	$scope.list = [
		{
			title:'首页',
			url:'/dashboard',
			src:'img/homeicon/home.png'
		},
		{
			title:'对话',
			url:'/chat',
			src:'img/homeicon/words.png'
		}, 
		{
			title:'访客',
			url:'/visitor',
			src:'img/homeicon/visitor.png'
		}, 
		{
			title:'工单',
			url:'/tickets',
			src:'img/homeicon/workorder.png'
		}, 
		{
			title:'历史',
			url:'/indexs',
			src:'img/homeicon/history.png'
		},
		{
			title:'报表',
			url:'/report',
			src:'img/homeicon/chats.png'
		},
		{
			title:'顾客',
			url:'/setting',
			src:'img/homeicon/setup.png'
		},
		{
			title:'设置',
			url:'/setting',
			src:'img/homeicon/service.png'
		},
		{
			title:'退出',
			url:'/consent',
			src:'img/homeicon/exit.png'
		}
	]
})
.controller('createSetUp',function($scope){
	$scope.lists = [
		{
			title: '通用',
			dd: 'img/set/lib/地球.png',
			childList: [
				{ title: '个人信息', url: '/setting/00', src: 'img/set/个人信息.png'},
				{ title: '界面设置', url: '/setting/01', src: 'img/set/界面设置.png'},
				{ title: '快捷键', url: '/setting/02', src: 'img/set/键盘.png'}
			]
		},
		{
			title:'团队',
			dd: 'img/set/lib/团队.png',
			childList: [
				{ title: '团队信息', url: '/setting/10', src: 'img/set/团队.png'},
				{ title: '客服与分组', url: '/setting/11', src: 'img/set/分组.png'},
				{ title: '角色', url: '/setting/12', src: 'img/set/角色.png'},
				{ title: '安全', url: '/setting/13', src: 'img/set/安全.png'},
				{ title: 'ID查询', url: '/setting/14', src: 'img/set/查询.png'},
				{ title: '企业付款', url: '/setting/15', src: 'img/set/银行卡.png'}
			]
		}, 
		{
			title:'接入',
			dd: 'img/set/lib/接入.png',
			childList: [
				{ title: '网页插件', url: '/setting/20', src: 'img/set/网页规范.png'},
				{ title: '聊天链接', url: '/setting/21', src: 'img/set/聊天.png'},
				{ title: 'SDK', url: '/setting/22', src: 'img/set/SDK产品1.png'},
				{ title: '微信', url: '/setting/23', src: 'img/set/微信.png'},
				{ title: '微博', url: '/setting/24', src: 'img/set/微博.png'},
				{ title: '电话回呼', url: '/setting/25', src: 'img/set/电话.png'},
				{ title: '微信小程序', url: '/setting/26', src: 'img/set/小程序.png'}
			]
		}, 
		{
			title:'第三方应用',
			dd: 'img/set/lib/通用.png',
			childList: [
				{ title: '百度数据分析', url: '/setting/30', src: 'img/set/数据.png'},
				{ title: '金数据接入', url: '/setting/31', src: 'img/set/金数据.png'}
			]
		}, 
		{
			title:'客服',
			dd: 'img/set/lib/消息.png',
			childList: [
				{ title: '快捷回复', url: '/setting/40', src: 'img/set/书本.png'},
				{ title: '自动消息', url: '/setting/41', src: 'img/set/聊天.png'},
				{ title: '客服分配', url: '/setting/42', src: 'img/set/分配.png'},
				{ title: '对话邀请', url: '/setting/43', src: 'img/set/邀请.png'},
				{ title: '对话规则', url: '/setting/44', src: 'img/set/规则.png'},
				{ title: '排队', url: '/setting/45', src: 'img/set/排队取号.png'},
				{ title: '询前表单', url: '/setting/46', src: 'img/set/表单.png'},
				{ title: '客服评价', url: '/setting/47', src: 'img/set/评价.png'},
				{ title: '标签', url: '/setting/48', src: 'img/set/标签.png'},
				{ title: '黑名单', url: '/setting/49', src: 'img/set/黑名单添加02.png'},
				{ title: '访客地区隔离', url: '/setting/410', src: 'img/set/锁.png'},
				{ title: '顾客管理', url: '/setting/410', src: 'img/set/管理.png'}
			]
		},
		{
			title:'机器人',
			dd: 'img/set/lib/机器人.png',
			childList: [
				{ title: '机器人设置', url: '/setting/50', src: 'img/set/机器人.png'},
				{ title: '知识库', url: '/setting/51', src: 'img/set/书架.png'}
			]
		},
		{
			title:'工单',
			dd: 'img/set/lib/对号.png',
			childList: [
				{ title: '工单设置', url: '/setting/60', src: 'img/set/排队取号.png'},
				{ title: '工单分类', url: '/setting/61', src: 'img/set/分配.png'},
				{ title: '自动规则', url: '/setting/62', src: 'img/set/自动上架.png'}
			]
		}
	]
})
.controller('consentCtrl',function($scope){
	// 	document.querySelector('icon-caret-down').on
	// document.querySelector('.menu--secondary').className="menu menu--secondary show"
	// 鼠标移入，移出
	// 产品
	$scope.isShow=false;
	$scope.isEnter = function(){
		$scope.isShow=true;
	}
	$scope.isLeave = function(){
		$scope.isShow=false;
	}
	// 支持
	$scope.isShow1=false;
	$scope.isEnter1 = function(){
		$scope.isShow1=true;
	}
	$scope.isLeave1 = function(){
		$scope.isShow1=false;
	}
	document.body.onscroll = function(){
		if(document.body.scrollTop>250){
			document.querySelector('#logo').style.background="url(img/logo-inverted.png) no-repeat";
			// console.log(111)
			document.querySelector('#header').style.backgroundColor="#fff";
			// borderBottom: ;
			//     box-shadow: 0 4px 12px 0 rgba(52,63,75,.06), 0 10px 40px 0 rgba(52,63,75,.06), 0 0 0 1px rgba(52,63,75,.02);
			document.querySelector('#header').style.boxShadow="0 4px 12px 0 rgba(52,63,75,.06), 0 10px 40px 0 rgba(52,63,75,.06), 0 0 0 1px rgba(52,63,75,.02)";

			var dom = document.querySelectorAll('nav .menu__item a span');
			// console.log(dom)
			for(var i=0;i<dom.length-1;i++){
				dom[i].style.color="#000";
				// console.log(dom[i])
			}
			// 小三角
			// .icon-caret-down
			document.querySelector('.icon-caret-down').style.borderTopColor="#000";
			// lock = false;
			// console.log(document.querySelectorAll('.menu__item a')[0])
		}else if(document.body.scrollTop<=250){
			// lock = true;
			// console.log(12)
			// var a = 
			// console.log(111)
			document.querySelector('#header').style.background = "";
			document.querySelector('#logo').style.background="";
			document.querySelector('.icon-caret-down').style.borderTopColor="";
			// console.log(a)
			// .style.backgroundColor="none";
			// borderBottom: ;
			document.querySelector('#header')
			.style.boxShadow="";
			var dom = document.querySelectorAll('nav .menu__item a span');
			for(var i=0;i<dom.length-1;i++){
				dom[i].style.color="";
				// console.log(dom[i].style)
			}
			// lock1 = false;
		}else{

		}
	}
	
})
.controller('homeCtrl', function($scope, $interval) {
	// console.log("home")
	$scope.date = new Date();
	// 每一秒更新一次
	$interval(function() {
		$scope.date = new Date();
	}, 500)
})
.controller('loginCtrl', function($scope, $http, $location, $rootScope) {
	
	document.body.onscroll=null;
	$scope.goToLogin = function(){
		// console.log($scope)
		$http
			.post('action/login.php', $scope.data)
			.then(function(res) {
				console.log(res)
				if (res.data && res.data.errno === 0) {
					// 成功
					$rootScope.username = res.data.data.username
					// 跳转进入首页
					$location.path('/')
				}
			})
	}
})
.controller('regsitCtrl', function($scope, $http, $location, $rootScope) {
	// console.log("注册")
	document.body.onscroll=null;
	document.querySelector('#aside').style.display="";
	// 悬停出现
	// document.querySelector('#aside').style.display="";
	$scope.goToregsit = function(){
		$http
			.post('action/login.php', $scope.data)
			.then(function(res) {
				if (res.data && res.data.errno === 0) {
					// 成功
					$rootScope.username = res.data.data.username
					// 跳转进入首页
					$location.path('/')
				}
			})
	}
})
// 根
.run(function($rootScope, $http, $location) {
	// 请求登录数据
	$http({
		url: 'action/checkLogin.php',
		method: 'GET'
	})
	// 监听回调
	.then(function(res) {
		if (res.data.data) {
			// 存储数据
			$rootScope.username = res.data.data.username; 
		} else {
			// console.log('ih')
			// 进入首页面
			$location.path('/consent')
		}
	})
})
