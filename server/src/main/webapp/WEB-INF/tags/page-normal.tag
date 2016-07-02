<%@ tag pageEncoding="UTF-8"%>
<%@ attribute name="menu" required="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="tag" tagdir="/WEB-INF/tags"%>
<c:set var="__path" value="${requestScope['javax.servlet.forward.servlet_path']}" scope="request"/>
<c:set var="__query" value="${pageContext.request.queryString}" scope="request"/>
<c:set var="__menus" value="${fn:split(__path, '/')}"/>
<c:set var="__menu1" value="${__menus[1]}"/>
<c:set var="__menu2" value="${__menus[2]}"/>
<c:set var="__menu3" value="${__menus[3]}"/>
<c:choose>
	<c:when test="${!empty __query}">
		<c:set var="__url" value="${__path}?${__query}" scope="request"/>
		<c:set var="__url_query" value="${__url}&" scope="request"/>
	</c:when>
	<c:otherwise>
		<c:set var="__url" value="${__path}" scope="request"/>
		<c:set var="__url_query" value="${__url}?" scope="request"/>
	</c:otherwise>
</c:choose>
<tag:site>

	<script>
		window.$$$ = {};
	</script>

	<c:if test="${emul.root}">
		<script>
			window.$$$.root = true;
		</script>
	</c:if>

	<!-- #HEADER -->
	<header id="header">
		<div id="logo-group">
			<!-- PLACE YOUR LOGO HERE -->
			<span id="_logo" style="width: 175px; margin-top: 13px; margin-left: 9px;"> <img src="/asset/ic_launcher.png" alt="StyleMap" style="width: auto; height: 25px; padding-left: 3px;"> </span>
			<!-- END LOGO PLACEHOLDER -->
		</div>
		<!-- end projects dropdown -->

		<!-- #TOGGLE LAYOUT BUTTONS -->
		<!-- pulled right: nav area -->
		<div class="pull-right">

			<!-- collapse menu button -->
			<div id="hide-menu" class="btn-header pull-right">
				<span> <a href="javascript:void(0);" data-action="toggleMenu" title="메뉴 접기"><i class="fa fa-reorder"></i></a> </span>
			</div>
			<!-- end collapse menu -->

			<!-- #MOBILE -->
			<!-- Top menu profile link : this shows only when top menu is active -->
			<ul id="mobile-profile-img" class="header-dropdown-list hidden-xs padding-5">
				<li class="">
					<!-- class="dropdown-toggle userdropdown" data-toggle="dropdown" -->
					<a href="#" class="no-margin">
						<img src="/asset/img/avatars/male.png" alt="관리자" class="online" />
					</a>
				</li>
			</ul>

			<!-- logout button -->
			<div id="logout" class="btn-header transparent pull-right">
				<span> <a href="/account/logout" title="로그아웃" data-action="userLogout" data-logout-msg="You can improve your security further after logging out by closing this opened browser"><i class="fa fa-sign-out"></i></a> </span>
			</div>
			<!-- end logout button -->

			<!-- fullscreen button -->
			<div id="fullscreen" class="btn-header transparent pull-right">
				<span> <a href="javascript:void(0);" data-action="launchFullscreen" title="전체 화면"><i class="fa fa-arrows-alt"></i></a> </span>
			</div>
			<!-- end fullscreen button -->
		</div>
		<!-- end pulled right: nav area -->
	</header>
	<!-- END HEADER -->

	<!-- #NAVIGATION -->
	<!-- Note: This width of the aside area can be adjusted through LESS variables -->
	<aside id="left-panel">

		<!-- User info -->
		<div class="login-info">
				<span> <!-- User image size is adjusted inside CSS, it should stay as it -->

					<!--  id="show-shortcut" data-action="toggleShortcut" -->					
					<a href="javascript:void(0);">
						<img src="/asset/img/avatars/male.png" alt="me" class="online" />
						<c:if test="${real.root}">
							<select id="_emul" style="color: #000;"></select>
							<script>
								window._initWidget.push(function() {
									var emul = $('#_emul');

									$$.get('/api/user/emul', function(data) {
										for (var i = 0; i < data.length; i++) {
											var item = data[i];

											emul.append($('<option style="color: #000;"></option>').text(item.nickname).val(item.key));
										}

										emul.val('${emul.key}');
									});

									emul.change(function() {
										$$.get('/api/account/emul?user=' + emul.val(), function() {
											window.location.href = '/admin';
										});
									});
								});
							</script>
						</c:if>
						<c:if test="${real.shop}">
							<span>${real.nickname}</span>
						</c:if>
						<!-- <i class="fa fa-angle-down"></i> -->
					</a> 
					
				</span>
		</div>
		<!-- end user info -->
		<nav>
			<ul>
				<!--
					<li <c:if test="${__menu1==null}">class="active"</c:if>>
						<a href="/admin" title="대시보드"><i class="fa fa-lg fa-fw fa-home"></i> <span class="menu-item-parent">대시보드</span></a>
					</li>
					-->

				<li>
					<a href="#"><i class="fa fa-lg fa-fw fa-user"></i> <span class="menu-item-parent">회원 정보</span></a>
					<ul>
						<li <c:if test="${__menu1 == 'user' && __menu2 != 'form' && param.role == 'user'}">class="active"</c:if>>
							<a href="/admin/user/list?grade=1">개인회원 관리</a>
						</li>
						<li <c:if test="${__menu1 == 'user' && __menu2 != 'form' && param.role == 'diginer'}">class="active"</c:if>>
							<a href="/admin/user/list?grade=2">디자이너 회원 관리</a>
						</li>
					</ul>
				</li>
				<li>
					<a href="#"><i class="fa fa-lg fa-fw fa-leaf"></i> <span class="menu-item-parent">근무 시간</span></a>
					<ul>
						<li <c:if test="${__menu1 == 'worktime' && __menu2 == 'listform' && param.mode != 'root'}">class="active"</c:if>>
							<a href="/admin/worktime/listform">근무 시간 관리</a>
						</li>
						<li <c:if test="${__menu1 == 'worktime' && __menu2 == 'addform' && param.mode != 'root'}">class="active"</c:if>>
							<a href="/admin/worktime/addform">근무 시간 등록</a>
						</li>
					</ul>
				</li>
			</ul>
		</nav>
		</ul>
		</nav>
			<span class="minifyme" data-action="minifyMenu"> 
				<i class="fa fa-arrow-circle-left hit"></i> 
			</span>

	</aside>
	<!-- END NAVIGATION -->

	<!-- MAIN PANEL -->
	<div id="main" role="main">

		<jsp:doBody/>

	</div>
	<!-- END MAIN PANEL -->

	<!-- PAGE FOOTER -->
	<div class="page-footer">
		<div class="row">
			<div class="col-xs-12 col-sm-6">
				<span class="txt-color-white">StyleMap © 2014</span>
			</div>
		</div>
	</div>
	<!-- END PAGE FOOTER -->

	<!--================================================== -->

	<!-- PACE LOADER - turn this on if you want ajax loading to show (caution: uses lots of memory on iDevices)-->
	<script data-pace-options='{ "restartOnRequestAfter": true }' src="/asset/js/plugin/pace/pace.min.js"></script>

	<!-- Link to Google CDN's jQuery + jQueryUI; fall back to local -->
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
	<script>
		if (!window.jQuery) {
			document.write('<script src="/asset/js/libs/jquery-2.0.2.min.js"><\/script>');
		}
	</script>

	<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.3/jquery-ui.min.js"></script>
	<script>
		if (!window.jQuery.ui) {
			document.write('<script src="/asset/js/libs/jquery-ui-1.10.3.min.js"><\/script>');
		}
	</script>

	<!-- IMPORTANT: APP CONFIG -->
	<script src="/asset/js/app.config.js"></script>

	<!-- JS TOUCH : include this plugin for mobile drag / drop touch events-->
	<script src="/asset/js/plugin/jquery-touch/jquery.ui.touch-punch.min.js"></script>

	<!-- BOOTSTRAP JS -->
	<script src="/asset/js/bootstrap/bootstrap.min.js"></script>

	<!-- CUSTOM NOTIFICATION -->
	<script src="/asset/js/notification/SmartNotification.min.js"></script>

	<!-- JARVIS WIDGETS -->
	<script src="/asset/js/smartwidgets/jarvis.widget.min.js"></script>

	<!-- SPARKLINES -->
	<script src="/asset/js/plugin/sparkline/jquery.sparkline.min.js"></script>

	<!-- JQUERY VALIDATE -->
	<script src="/asset/js/plugin/jquery-validate/jquery.validate.min.js"></script>

	<!-- JQUERY MASKED INPUT -->
	<script src="/asset/js/plugin/masked-input/jquery.maskedinput.min.js"></script>

	<!-- JQUERY SELECT2 INPUT -->
	<script src="/asset/js/plugin/select2/select2.min.js"></script>

	<!-- JQUERY UI + Bootstrap Slider -->
	<script src="/asset/js/plugin/bootstrap-slider/bootstrap-slider.min.js"></script>

	<!-- browser msie issue fix -->
	<script src="/asset/js/plugin/msie-fix/jquery.mb.browser.min.js"></script>

	<!-- FastClick: For mobile devices -->
	<script src="/asset/js/plugin/fastclick/fastclick.min.js"></script>

	<!--[if IE 8]>
	<h1>Your browser is out of date, please update your browser by going to www.microsoft.com/download</h1>
	<![endif]-->

	<!-- Demo purpose only -->
	<script src="/asset/js/demo.min.js"></script>

	<!-- MAIN APP JS FILE -->
	<script src="/asset/js/app.min.js"></script>


	<!-- Flot Chart Plugin: Flot Engine, Flot Resizer, Flot Tooltip -->
	<script src="/asset/js/plugin/flot/jquery.flot.cust.min.js"></script>
	<script src="/asset/js/plugin/flot/jquery.flot.resize.min.js"></script>
	<script src="/asset/js/plugin/flot/jquery.flot.fillbetween.min.js"></script>
	<script src="/asset/js/plugin/flot/jquery.flot.orderBar.min.js"></script>
	<script src="/asset/js/plugin/flot/jquery.flot.pie.min.js"></script>
	<script src="/asset/js/plugin/flot/jquery.flot.tooltip.min.js"></script>

	<script src="/asset/js/plugin/datatables/jquery.dataTables.min.js"></script>
	<script src="/asset/js/plugin/datatables/dataTables.colVis.min.js"></script>
	<script src="/asset/js/plugin/datatables/dataTables.tableTools.min.js"></script>
	<script src="/asset/js/plugin/datatables/dataTables.bootstrap.min.js"></script>
	<script src="/asset/js/plugin/datatable-responsive/datatables.responsive.min.js"></script>



</tag:site>
