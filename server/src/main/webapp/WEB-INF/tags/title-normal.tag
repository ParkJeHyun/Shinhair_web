<%@ tag pageEncoding="UTF-8"%>
<%@ attribute name="icon" required="true"%>
<%@ attribute name="title" required="true"%>
<%@ attribute name="subtitle"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<div class="row">
	<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
		<h1 class="page-title txt-color-blueDark">
			<i class="fa fa-fw fa-${icon}"></i> ${title}
			<c:if test="${not empty subtitle}">
				<span>&gt; ${subtitle}</span>
			</c:if>
		</h1>
	</div>
</div>
