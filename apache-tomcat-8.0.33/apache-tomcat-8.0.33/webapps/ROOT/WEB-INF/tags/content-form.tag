<%@ tag pageEncoding="UTF-8"%>
<%@ attribute name="menu" required="true"%>
<%@ attribute name="title" required="true"%>
<%@ attribute name="subtitle"%>
<%@ attribute name="icon" required="true"%>
<%@ attribute name="widget" required="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="tag" tagdir="/WEB-INF/tags"%>
<tag:page-normal menu="${menu}">
    <div id="content">
        <tag:title-normal icon="${icon}" title="${title}" subtitle="${subtitle}" />
        <section id="widget-grid">
            <div class="row">
                <article class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                    <div id="wid-id-0" class="jarviswidget" data-widget-editbutton="false">
                        <header>
							<span class="widget-icon"> <i class="fa fa-edit"></i>
							</span>
                            <h2>${widget}</h2>
                        </header>
                        <div>
                            <div class="widget-body">
                                <jsp:doBody />
                            </div>
                        </div>
                    </div>
                </article>
            </div>
        </section>
    </div>
</tag:page-normal>
