<%--
  Created by IntelliJ IDEA.
  User: Jehyun
  Date: 2016-06-20
  Time: 오후 12:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page pageEncoding="UTF-8"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="tag" tagdir="/WEB-INF/tags"%>
<tag:content-form menu="근무 시간" title="근무 시간 등록" icon="pencil" widget="정보">
    <form id="workTimeForm" action="add" method="post">
        <fieldset>
            <legend>기본</legend>
            <tag:text id="name" label="근무 이름" required="true"/>
            <tag:text id="start_time" label="시작 시각" required="true"/>
            <tag:text id="end_time" label="종료 시각" required="true"/>
        </fieldset>
    <tag:form-actions/>
    </form>
</tag:content-form>