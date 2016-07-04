<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016-06-28
  Time: 오후 12:26
  To change this template use File | Settings | File Templates.
--%>
<%@ tag pageEncoding="UTF-8"%>
<%@ attribute name="menu" required="true"%>
<%@ attribute name="title" required="true"%>
<%@ attribute name="subtitle"%>
<%@ attribute name="icon" required="true"%>
<%@ attribute name="label" required="true"%>
<%@ attribute name="url" required="true"%>
<%@ attribute name="widget" required="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="tag" tagdir="/WEB-INF/tags"%>
<tag:page-normal menu="${menu}">
    <div id="content">
        <tag:title-action title="${title}" subtitle="${subtitle}" icon="${icon}" label="${label}" url="${url}" />
        <section id="widget-grid">
            <div class="row">
                <article class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                    <div id="wid-id-0" class="jarviswidget" data-widget-editbutton="false">
                        <header>
                            <span class="widget-icon"> <i class="fa fa-list"></i></span>
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
