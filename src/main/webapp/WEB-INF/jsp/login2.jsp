<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>

<head>
<meta charset="utf-8">
<title>云网融合短信查询平台</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<!-- Le styles -->



<link rel="stylesheet" href="<%=basePath%>/assets/css/style.css">
<link rel="stylesheet" href="<%=basePath%>/assets/css/loader-style.css">
<link rel="stylesheet" href="<%=basePath%>/assets/css/bootstrap.css">

<link rel="stylesheet" type="text/css"
	href="<%=basePath%>/assets/js/progress-bar/number-pb.css">


<style type="text/css">
canvas#canvas4 {
	position: relative;
	top: 20px;
}
</style>

<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
        <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
<!-- 浏览器中地址栏左侧显示的图标 -->
<link rel="shortcut icon" href="<%=basePath%>/assets/ico/minus.png">
</head>

<body>
	<!-- html预加载延时 -->
	<div id="preloader">
		<div id="status">&nbsp;</div>
	</div>
	<!-- 导航栏 -->
	<nav role="navigation" class="navbar navbar-static-top">
	<div class="container-fluid">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button data-target="#bs-example-navbar-collapse-1"
				data-toggle="collapse" class="navbar-toggle" type="button">
				<span class="entypo-menu"></span>
			</button>
			<div id="logo-mobile" class="visible-xs">
				<h1>
					查询平台<span>v1.0</span>
				</h1>
			</div>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div id="bs-example-navbar-collapse-1"
			class="collapse navbar-collapse">

			<div style="margin-left: 8cm; width: 370px" id="nt-title-container"
				class="navbar-left running-text visible-lg">
				<ul class="date-top">
					<li class="entypo-calendar" style="margin-right: 5px"></li>
					<li id="Date"></li>
				</ul>
				<ul id="digital-clock" class="digital">
					<li class="entypo-clock" style="margin-right: 5px"></li>
					<li class="hour"></li>
					<li>:</li>
					<li class="min"></li>
					<li>:</li>
					<li class="sec"></li>
					<li class="meridiem"></li>
				</ul>
			</div>
			<ul style="margin-right: 2cm;" class="nav navbar-nav navbar-right">
				<li><a data-toggle="dropdown" class="dropdown-toggle" href="#">
						<span class="icon-user"></span>&#160;&#160; 企业信息 <b class="caret"></b>
				</a>
					<ul style="margin-top: 14px;" role="menu"
						class="dropdown-setting dropdown-menu">
						<li><a href="#"> <span class="entypo-user"></span>&#160;&#160;账户信息
						</a></li>
						<li><a href="#"> <span class="entypo-vcard"></span>&#160;&#160;修改密码
						</a></li>
						<li><a href="#"> <span class="entypo-lamp"></span>&#160;&#160;意见反馈
						</a></li>
						<li class="divider"></li>
						<li><a href="#"> <span class="entypo-logout"></span>&#160;&#160;
								退出
						</a></li>
					</ul></li>
				<li><a data-toggle="dropdown" class="dropdown-toggle" href="#">
						<span class="icon-gear"></span>&#160;&#160;皮肤
				</a>
					<ul role="menu" class="dropdown-setting dropdown-menu">

						<li class="theme-bg">
							<div id="button-bg"></div>
							<div id="button-bg2"></div>
							<div id="button-bg3"></div>
							<div id="button-bg5"></div>
							<div id="button-bg6"></div>
							<div id="button-bg7"></div>
							<div id="button-bg8"></div>
							<div id="button-bg9"></div>
							<div id="button-bg10"></div>
							<div id="button-bg11"></div>
							<div id="button-bg12"></div>
							<div id="button-bg13"></div>
						</li>
					</ul></li>

			</ul>

		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container-fluid --> </nav>
	<!-- /END OF TOP NAVBAR -->

	<!-- SIDE MENU -->
	<div id="skin-select">
		<div id="logo">
			<h1>
				查询平台<span>v1.0</span>
			</h1>
		</div>

		<a id="toggle"> <span class="entypo-menu"></span>
		</a>
		<div class="dark">
			<form action="#">
				<span> <input type="text" name="search" value=""
					class="search rounded id_search" placeholder="检索菜单..." autofocus="">
				</span>
			</form>
		</div>

		<div class="search-hover">
			<form id="demo-2">
				<input type="search" placeholder="Search Menu..." class="id_search">
			</form>
		</div>

		<div class="skin-part">
			<div id="tree-wrap">
				<div class="side-bar">
					<ul class="topnav menu-left-nest">
						<li><a href="#" style="border-left: 0px solid !important;"
							class="title-menu-left"> <span>查询统计</span> <i
								data-toggle="tooltip" class="entypo-cog pull-right config-wrap"></i>

						</a></li>

						<li><a class="tooltip-tip ajax-load" href="#" title="短信查询">
								<i class="entypo-paper-plane"></i> <span>短信查询</span>

						</a>
							<ul>
								<li><a class="tooltip-tip2 ajax-load" href="#" title="下发记录"><i
										class="icon icon-message"></i><span>下发记录</span></a></li>
								<li><a class="tooltip-tip2 ajax-load" href="#"
									title="关键字查询"><i class="entypo-alert"></i><span>关键字查询</span></a>
								</li>
								<li><a class="tooltip-tip2 ajax-load" href="#"
									title="错误码查询"><i class="entypo-search"></i><span>错误码查询</span></a>
								</li>
							</ul></li>
						<li><a class="tooltip-tip ajax-load" href="#"
							title="Blog App"> <i class="icon-document-edit"></i> <span>统计查询</span>

						</a>
							<ul>
								<li><a class="tooltip-tip2 ajax-load" href="#"
									title="发送日统计"><i class="icon icon-message"></i><span>发送日统计</span></a>
								</li>
								<li><a class="tooltip-tip2 ajax-load" href="#"
									title="发送月统计"><i class="entypo-alert"></i><span>发送月统计</span></a>
								</li>
								<li><a class="tooltip-tip2 ajax-load" href="#"
									title="账号状态统计"><i class="entypo-search"></i><span>账号状态统计</span></a>
								</li>
							</ul></li>
					</ul>

					<ul class="topnav menu-left-nest">
						<li><a href="#" style="border-left: 0px solid !important;"
							class="title-menu-left"> <span>图表展示</span> <i
								data-toggle="tooltip" class="entypo-cog pull-right config-wrap"></i>

						</a></li>

						<li><a class="tooltip-tip ajax-load" href="#" title="XXXX图">
								<i class="entypo-chart-pie"></i> <span>XX统计</span>

						</a>
							<ul>
								<li><a class="tooltip-tip2 ajax-load" href="#" title="折线图"><i
										class="entypo-chart-line"></i><span>折线图</span></a></li>
								<li><a class="tooltip-tip2 ajax-load" href="#" title="XX图"><i
										class="entypo-chart-bar"></i><span>XX图</span></a></li>
								<li><a class="tooltip-tip2 ajax-load" href="#" title="XX图"><i
										class="entypo-chart-area"></i><span>XX图</span></a></li>
							</ul></li>

					</ul>


					<ul class="topnav menu-left-nest">
						<li><a href="#" style="border-left: 0px solid !important;"
							class="title-menu-left"> <span>系统设置</span> <i
								data-toggle="tooltip" class="entypo-cog pull-right config-wrap"></i>

						</a></li>

						<li><a class="tooltip-tip ajax-load" href="#" title="账号管理">
								<i class="entypo-user"></i> <span>账号管理</span>

						</a>
							<ul>

								<li><a class="tooltip-tip2 ajax-load" href="#" title="XX图"><i
										class="entypo-users"></i><span>账号信息</span></a></li>
							</ul></li>

						<li><a class="tooltip-tip ajax-load" href="#" title="系统管理">
								<i class="entypo-tools"></i> <span>系统管理</span>

						</a>
						</li></ul>
				</div>
			</div>
		</div>
	</div>
	<!-- END OF SIDE MENU -->



	<!--  展示内容的地方 -->
	<div class="wrap-fluid">
		<div class="container-fluid paper-wrap bevel tlbr">

			<!-- 内容 -->
			<!--TITLE -->
			<div class="row">
				<div id="paper-top">
					<div class="col-lg-3">
						<h2 class="tittle-content-header">
							<i class="icon-window"></i> <span>云网融合短信查询平台 </span>
						</h2>

					</div>
				</div>
			</div>
			<!--/ TITLE -->

			<!-- BREADCRUMB -->
			<ul id="breadcrumb">
				<li><span class="entypo-home"></span></li>
				<li><i class="fa fa-lg fa-angle-right"></i></li>
				<li><a href="#" title="Sample page 1">主页</a></li>
			</ul>

			<!-- END OF BREADCRUMB -->


			<div class="content-wrap">
				<div class="row">
					<div class="col-lg-6">
						<div class="chart-wrap">
							<div class="chart-dash">
								<!-- <div id="sparkline"></div> -->
								<div id="placeholder" style="width: 100%; height: 200px;"></div>
							</div>
							<div class="row">
								<div class="col-lg-8">
									<div class="speed">
										<h2>Speed Avarage</h2>
										<h1>
											74 <span>Km / hours</span>
										</h1>
									</div>
								</div>
								<div class="col-lg-4">
									<div class="traffic">
										<h2>Traffic per day</h2>
										<h1>2.5874</h1>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-lg-4">
									<div class="traffic-rates">
										<h4>Traffic Rates</h4>
										<h1>
											76 % <span>-1,2 %</span>
										</h1>
									</div>
								</div>
								<div class="col-lg-4">
									<div class="traffic-rates">
										<h4>Traffic Rates</h4>
										<h1>
											25 % <span>-1,8 %</span>
										</h1>
									</div>
								</div>
								<div class="col-lg-4">
									<div class="traffic-rates">
										<h4>Traffic Rates</h4>
										<h1>
											83 % <span>-1,9 %</span>
										</h1>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-6">
						<div class="weather-wrap">
							<div class="row">
								<div class="col-lg-12">
									<div class="temperature">
										<b>Monday</b>, 07:30 AM <span>F</span> <span><b>C</b> </span>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-lg-4">
									<div class="weather-icon">
										<i class="wi-day-lightning"></i>
									</div>
								</div>
								<div class="col-lg-8">
									<div class="weather-text">
										<h2>
											Berlin <br>
											<i>Day Lightning</i>
										</h2>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-lg-12">
									<div class="weather-text">
										<h3>
											<i class="wi-thermometer"></i>18<i class="wi-celcius"></i>
										</h3>
									</div>
								</div>
							</div>
							<div class="weather-dash">
								<div class="row">
									<div class="col-lg-2">
										<div class="daily-weather">
											<h2>Mon</h2>
											<h3>
												85 <span><i class="wi-fahrenheit"></i> </span>
											</h3>
											<h4>
												<span><i class="wi-day-lightning"></i> </span>
											</h4>
											<h5>
												15 <i>km/h</i>
											</h5>
										</div>
									</div>
									<div class="col-lg-2">
										<div class="daily-weather">
											<h2>Tue</h2>
											<h3>
												81 <span><i class="wi-fahrenheit"></i> </span>
											</h3>
											<h4>
												<i class="wi-day-cloudy"></i>
											</h4>
											<h5>
												12 <i>km/h</i>
											</h5>
										</div>
									</div>
									<div class="col-lg-2">
										<div class="daily-weather">
											<h2>Wed</h2>
											<h3>
												83 <span><i class="wi-fahrenheit"></i> </span>
											</h3>
											<h4>
												<i class="wi-rain-mix"></i>
											</h4>
											<h5>
												14 <i>km/h</i>
											</h5>
										</div>
									</div>
									<div class="col-lg-2">
										<div class="daily-weather">
											<h2>Thu</h2>
											<h3>
												80 <span><i class="wi-fahrenheit"></i> </span>
											</h3>
											<h4>
												<i class="wi-day-sunny"></i>
											</h4>
											<h5>
												15 <i>km/h</i>
											</h5>
										</div>
									</div>
									<div class="col-lg-2">
										<div class="daily-weather">
											<h2>Fri</h2>
											<h3>
												79 <span><i class="wi-fahrenheit"></i> </span>
											</h3>
											<h4>
												<i class="wi-day-storm-showers"></i>
											</h4>
											<h5>
												11 <i>km/h</i>
											</h5>
										</div>
									</div>
									<div class="col-lg-2">
										<div class="daily-weather">
											<h2>Sat</h2>
											<h3>
												82 <span><i class="wi-fahrenheit"></i> </span>
											</h3>
											<h4>
												<i class="wi-cloudy"></i>
											</h4>
											<h5>
												10 <i>km/h</i>
											</h5>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- /END OF CONTENT -->



				<!-- FOOTER -->
				<div class="footer-space"></div>
				<div id="footer">
					<div class="devider-footer-left"></div>
					<div class="time">
						<p id="spanDate">
						<p id="clock">
					</div>
					<div class="copyright">
						Make with Love <span class="entypo-heart"></span>Collect from <a
							href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a>
						All Rights Reserved
					</div>
					<div class="devider-footer"></div>


				</div>
				<!-- / END OF FOOTER -->


			</div>
		</div>
	</div>
	<!--  END OF PAPER WRAP -->

	<!-- RIGHT SLIDER CONTENT -->

	<!-- END OF RIGHT SLIDER CONTENT-->
	<script type="text/javascript" src="<%=basePath%>/assets/js/jquery.js"></script>
	<script
		src="<%=basePath%>/assets/js/progress-bar/src/jquery.velocity.min.js"></script>
	<script src="<%=basePath%>/assets/js/progress-bar/number-pb.js"></script>
	<script src="<%=basePath%>/assets/js/progress-bar/progress-app.js"></script>



	<!-- MAIN EFFECT -->
	<script type="text/javascript"
		src="<%=basePath%>/assets/js/preloader.js"></script>
	<script type="text/javascript"
		src="<%=basePath%>/assets/js/bootstrap.js"></script>
	<script type="text/javascript" src="<%=basePath%>/assets/js/app.js"></script>
	<script type="text/javascript" src="<%=basePath%>/assets/js/load.js"></script>
	<script type="text/javascript" src="<%=basePath%>/assets/js/main.js"></script>




	<!-- GAGE -->


	<script type="text/javascript"
		src="<%=basePath%>/assets/js/chart/jquery.flot.js"></script>
	<script type="text/javascript"
		src="<%=basePath%>/assets/js/chart/jquery.flot.resize.js"></script>
	<script type="text/javascript"
		src="<%=basePath%>/assets/js/chart/realTime.js"></script>
	<script type="text/javascript"
		src="<%=basePath%>/assets/js/speed/canvasgauge-coustom.js"></script>
	<script type="text/javascript"
		src="<%=basePath%>/assets/js/countdown/jquery.countdown.js"></script>



	<script src="<%=basePath%>/assets/js/jhere-custom.js"></script>

	<script>
    var gauge4 = new Gauge("canvas4", {
        'mode': 'needle',
        'range': {
            'min': 0,
            'max': 90
        }
    });
    gauge4.draw(Math.floor(Math.random() * 90));
    var run = setInterval(function() {
        gauge4.draw(Math.floor(Math.random() * 90));
    }, 3500);
    </script>


	<script type="text/javascript">
    /* Javascript
     *
     * See http://jhere.net/docs.html for full documentation
     */
    $(window).on('load', function() {
        $('#mapContainer').jHERE({
            center: [52.500556, 13.398889],
            type: 'smart',
            zoom: 10
        }).jHERE('marker', [52.500556, 13.338889], {
            icon: '<%=basePath%>
		/assets/img/marker.png',
				anchor : {
					x : 12,
					y : 32
				},
				click : function() {
					alert('Hallo from Berlin!');
				}
			}).jHERE('route', [ 52.711, 13.011 ], [ 52.514, 13.453 ], {
				color : '#FFA200',
				marker : {
					fill : '#86c440',
					text : '#'
				}
			});
		});
	</script>
	<script type="text/javascript">
		var output, started, duration, desired;

		// Constants
		duration = 5000;
		desired = '50';

		// Initial setup
		output = $('#speed');
		started = new Date().getTime();

		// Animate!
		animationTimer = setInterval(function() {
			// If the value is what we want, stop animating
			// or if the duration has been exceeded, stop animating
			if (output.text().trim() === desired
					|| new Date().getTime() - started > duration) {
				console.log('animating');
				// Generate a random string to use for the next animation step
				output.text('' + Math.floor(Math.random() * 60)

				);

			} else {
				console.log('animating');
				// Generate a random string to use for the next animation step
				output.text('' + Math.floor(Math.random() * 120)

				);
			}
		}, 5000);
	</script>
	<script type="text/javascript">
		$('#getting-started').countdown(
				'2015/01/01',
				function(event) {
					$(this).html(
							event.strftime(

							'<span>%M</span>'
									+ '<span class="start-min">:</span>'
									+ '<span class="start-min">%S</span>'));
				});
	</script>

	<div style="text-align: center;">
		<p>
			More Templates <a href="http://www.cssmoban.com/" target="_blank"
				title="模板之家">模板之家</a> - Collect from <a
				href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a>
		</p>
	</div>
</body>

</html>
