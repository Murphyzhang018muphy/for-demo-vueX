<div class="dashboard__dashboard_666">
	<div class="dashboard__header___20JH7">
		<div class="dashboard__title___jJqlJ">
			<span>设置</span>
		</div>
	</div>
	<!-- div.table-ths>(p>img)+(ul.sets>(li.sets-li>a>img)*3)+(p>img)+(ul.sets>(li.sets-li>a>img)*6)+(p>img)+(ul.sets>(li.sets-li>a>img)*7)+(p>img+(ul.sets>(li.sets-li>a>img)*2)+(p>img)+(ul.sets>(li.sets-li>a>img)*12)+(p>img)+(ul.sets>(li.sets-li>a>img)*2)+(p>img)+(ul.sets>(li.sets-li>a>img)*3) -->
	<div class="big-table">
		<div class="table-ths" ng-repeat="item in lists">
			<p><img src="{{item.dd}}" alt="">{{item.title}}</p>
			<ul class="sets">
				<li class="sets-li" ng-repeat="childItem in item.childList">
					<a href="#!{{childItem.url}}">
						<img src="{{childItem.src}}" alt="">
						<p>{{childItem.title}}</p>
					</a>
				</li>
			</ul>
		</div>
	</div>
</div>