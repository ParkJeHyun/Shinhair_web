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
<tag:content-list menu="근무 시간" title="근무 시간 관리" icon="pencil" label="추가" url="/admin/worktime/addform" widget="목록">
    <div class="table-responsive">
        <table class="table table-bordered table-hover">
            <thead>
            <tr>
                <th class="col-md-1 text-center">근무 이름</th>
                <th class="col-md-1 text-center">시작 시간</th>
                <th class="col-md-1 text-center">종료 시간</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="worktime" items="${worktimes}">
                <tr align="center">
                    <td width="100px"><a href="/admin/worktime/${worktime.w_id}"/>${worktime.name}</td>
                    <td width="100px">${worktime.start_time}</td>
                    <td width="100px">${worktime.end_time}</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</tag:content-list>
