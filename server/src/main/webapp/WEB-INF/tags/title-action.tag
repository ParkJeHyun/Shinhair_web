<%@ tag pageEncoding="UTF-8"%>
<%@ attribute name="title" required="true"%>
<%@ attribute name="subtitle"%>
<%@ attribute name="icon" required="true"%>
<%@ attribute name="label" required="true"%>
<%@ attribute name="url" required="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<div class="row">
	<div class="col-xs-12 col-sm-9 col-md-9 col-lg-9">
		<h1 class="page-title txt-color-blueDark">
			<i class="fa fa-fw fa-${icon}"></i> ${title}
			<c:if test="${not empty subtitle}">
				<span>&gt; ${subtitle}</span>
			</c:if>
		</h1>
	</div>
	<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">
		<a id="page_list_add" href="${url}" class="btn btn-success btn-md pull-right header-btn hidden-mobile"><i class="fa fa-lg fa-circle-arrow-up"></i> ${label}</a>
	</div>
</div>
