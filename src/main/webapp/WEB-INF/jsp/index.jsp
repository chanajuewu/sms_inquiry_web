<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt" %>
	
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
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
    <script type="text/javascript" src="<%=basePath%>/assets/js/jquery.js"></script>

    <link rel="stylesheet" href="<%=basePath%>/assets/css/style.css">   
    <link rel="stylesheet" href="<%=basePath%>/assets/css/loader-style.css">
    <link rel="stylesheet" href="<%=basePath%>/assets/css/bootstrap.css">


    <link href="<%=basePath%>/assets/js/footable/css/footable.core.css?v=2-0-1" rel="stylesheet" type="text/css">
    <link href="<%=basePath%>/assets/js/footable/css/footable.standalone.css" rel="stylesheet" type="text/css">
    <link href="<%=basePath%>/assets/js/footable/css/footable-demos.css" rel="stylesheet" type="text/css">

    <link rel="stylesheet" href="<%=basePath%>/assets/js/dataTable/lib/jquery.dataTables/css/DT_bootstrap.css">
    <link rel="stylesheet" href="<%=basePath%>/assets/js/dataTable/css/datatables.responsive.css">

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
    <!-- Fav and touch icons -->
    <link rel="shortcut icon" href="<%=basePath%>/assets/ico/minus.png">
</head>

     <!-- html预加载延时 -->
    <div id="preloader">
        <div id="status">&nbsp;</div>
    </div>
    <!-- TOP NAVBAR -->
        <nav role="navigation" class="navbar navbar-static-top">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button data-target="#bs-example-navbar-collapse-1" data-toggle="collapse" class="navbar-toggle" type="button">
                    <span class="entypo-menu"></span>
                </button>
                <div id="logo-mobile" class="visible-xs">
                   <h1>查询平台<span>v1.0</span></h1>
                </div>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div id="bs-example-navbar-collapse-1" class="collapse navbar-collapse">

               <div style="margin-left:7cm; width: 380px"   id="nt-title-container" class="navbar-left running-text visible-lg">
                    <ul class="date-top">
                        <li class="entypo-calendar" style="margin-right:5px"></li>
                        <li id="Date"></li>
                    </ul>
                    <ul id="digital-clock" class="digital">
                        <li class="entypo-clock" style="margin-right:5px"></li>
                        <li class="hour"></li>
                        <li>:</li>
                        <li class="min"></li>
                        <li>:</li>
                        <li class="sec"></li>
                        <li class="meridiem"></li>
                    </ul>
                </div>
                <ul style="margin-right:1cm;" class="nav navbar-nav navbar-right">
                    <li>
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <span class="icon-user"></span>&#160;&#160; 企业信息 <b class="caret"></b>
                        </a>
                        <ul style="margin-top:14px;" role="menu" class="dropdown-setting dropdown-menu">
                            <li>
                                <a href="#">
                                    <span class="entypo-user"></span>&#160;&#160;账户信息</a>
                            </li>
                        <!--     <li>
                                <a href="#">
                                    <span class="entypo-vcard"></span>&#160;&#160;修改密码</a>
                            </li> -->
                            <li>
                                <a href="#">
                                    <span class="entypo-lamp"></span>&#160;&#160;意见反馈</a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a  href=" /enterprise/logout">
                                    <span class="entypo-logout"></span>&#160;&#160; 退出</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <span class="icon-gear"></span>&#160;&#160;皮肤</a>
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
                        </ul>
                    </li>
                    
                </ul>

            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>

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
							title="统计查询"> <i class="icon-document-edit"></i> <span>统计查询</span>

						</a>
							<ul>
								<li><a class="tooltip-tip2 ajax-load" href="#"
									title="发送日统计"><i class="icon icon-message"></i><span>发送统计</span></a>
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

								<li><a class="tooltip-tip2 ajax-load" href="#" title="账号信息"><i
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



    <!--  PAPER WRAP -->
    <div class="wrap-fluid">
        <div class="container-fluid paper-wrap bevel tlbr">
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

			

             <div class="col-sm-12">

                        <div class="nest" id="StackableClose">
                            <div class="title-alt">
                                <h6>
                                    账号信息列表</h6>
                                

                            </div>
                            

                            <div class="body-nest" id="StackableStatic">

                            <table id="responsive-example-table" class="table large-only">
					        <thead>
					            <tr class="text-right">
                                            <th style="width=15%;">账号</th>
                                            <th style="width=40%;">企业名称</th>
                                            <th style="width=15%;">历史条数</th>
                                            <th style="width=15%;">使用条数</th>
                                            <th style="width=15%;">剩余条数</th>
                                        </tr>
					        </thead>
					        <tbody>
							<c:forEach  items="${enterpriseList}" var="item">
								<tr>
									<td>${item.account}</td>
									<td>${item.name}</td>
									<td>${item.sumCount}</td>
									<td>${item.useCount}</td>
									<td>${item.ye}</td>
								</tr>
							</c:forEach>
					        </tbody>
				    </table>

                            </div>

                        </div>


                    </div>
                    
                </div>
            </div>
            <!--/ TITLE -->
            <!-- BREADCRUMB -->
            <!-- END OF BREADCRUMB -->
    <!--  END OF PAPER WRAP -->

    <!-- RIGHT SLIDER CONTENT -->
 

    <!-- END OF RIGHT SLIDER CONTENT-->


    <!-- MAIN EFFECT -->
    <script type="text/javascript" src="<%=basePath%>/assets/js/preloader.js"></script>
    <script type="text/javascript" src="<%=basePath%>/assets/js/bootstrap.js"></script>
    <script type="text/javascript" src="<%=basePath%>/assets/js/app.js"></script>
    <script type="text/javascript" src="<%=basePath%>/assets/js/load.js"></script>
    <script type="text/javascript" src="<%=basePath%>/assets/js/main.js"></script>




    <!-- /MAIN EFFECT -->
    <!-- GAGE -->
    <script type="text/javascript" src="<%=basePath%>/assets/js/toggle_close.js"></script>
    <script src="<%=basePath%>/assets/js/footable/js/footable.js?v=2-0-1" type="text/javascript"></script>
    <script src="<%=basePath%>/assets/js/footable/js/footable.sort.js?v=2-0-1" type="text/javascript"></script>
    <script src="<%=basePath%>/assets/js/footable/js/footable.filter.js?v=2-0-1" type="text/javascript"></script>
    <script src="<%=basePath%>/assets/js/footable/js/footable.paginate.js?v=2-0-1" type="text/javascript"></script>
    <script src="<%=basePath%>/assets/js/footable/js/footable.paginate.js?v=2-0-1" type="text/javascript"></script>


</body>

</html>
