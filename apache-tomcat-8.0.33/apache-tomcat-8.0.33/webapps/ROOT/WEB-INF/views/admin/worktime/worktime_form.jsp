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
    <%--<form> id="workTimeForm" class="form-horizontal" onsubmit="return false;">--%>
    <form>
        <fieldset>
            <legend>기본</legend>
            <tag:text id="name" label="근무 이름" required="true"/>
            <tag:text id="start_time" label="시작 시각" required="true"/>
            <tag:text id="end_time" label="종료 시각" required="true"/>
        </fieldset>
    </form>
    <%--<tag:form-actions/>--%>
    <tag:form-actions/>
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>

    <script>
        var id = '${id}';
        var form = $('form').serialize();
        if(id) {
            $.ajax({
                url: '/admin/worktime/'+id,
                type: 'GET',
                success: function (data) {
                    alert(data);
                }
            })
            $('#save').click(function () {
                form.w_id = id;
                $.ajax({
                    url: '/admin/worktime/add',
                    type: 'PUT',
                    data: form,
                    success: function () {
                        $.bigBox({
                            title: "",
                            content: "저장했습니다.",
                            color: "#296191",
                            timeout: 3000,
                            icon: "fa fa-bell swing animated"
                        });
                    }
                })
            })
        }
        else {
            $('#save').click(function () {
                $.ajax({
                    url: '/admin/worktime/add',
                    type: 'POST',
                    data: form,
                    success: function () {
                        $.bigBox({
                            title: "",
                            content: "저장했습니다.",
                            color: "#296191",
                            timeout: 3000,
                            icon: "fa fa-bell swing animated"
                        });
                    }
                })
            })
        }

        <%--window._run = function() {--%>
        <%--var key = '${key}';--%>
        <%--var form = $('#workTimeForm');--%>

        <%--form.submit(function() {--%>
        <%--$.ajax({--%>
        <%--url:'/admin/worktime/add',--%>
        <%--type:'post',--%>
        <%--data:form,--%>
        <%--success:function (data) {--%>
        <%--$.alert('저장했습니다');--%>
        <%--}--%>
        <%--})--%>
        <%--});--%>
        <%--};--%>
    </script>
</tag:content-form>