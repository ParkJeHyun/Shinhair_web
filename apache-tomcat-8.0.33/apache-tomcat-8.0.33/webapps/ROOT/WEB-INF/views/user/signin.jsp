<%@ page import="kr.shin.server.artifacts.User"  contentType="text/html;charset=UTF-8"  %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge; utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <link href="/asset/css/bootstrap.min.css" rel="stylesheet">
    <script type="text/javascript" src="/asset/js/jquery.validate.min.js" charset="UTF-8"></script>
    <script type="text/javascript" src="/asset/js/additional-methods.min.js" charset="UTF-8"></script>
    <script type="text/javascript" src="/asset/js/messages_ko.min.js" charset="UTF-8"></script>

    <style>
        *{ font-size: 12px; margin: 0; padding: 0; }
        td { margin:10px; padding: 10px; }
        input { border:1px solid #cccccc; padding: 5px; font-size: 1.2em; font-weight: bold; }
        tr td:first-child { width: 130px; background-color: #eeeeee; }

        #wrap {
            width: 800px;
            border: 1px solid #cccccc;
            margin: 0 auto;
        }

        #joinTitle {
            padding: 10px; margin: 10px;
            background-color: #ffffff;
            text-align: center;
        }

        #joinTitle p {
            font-size: 1.5em;
        }

        .uphone {
            width: 100px;
        }

        .add {
            width: 290px;
            margin-top: 4px;
        }

        .mailoff, .phoneoff {
            font-size: 1.2em;
            padding: 3px;
        }

        #joinBtn {
            padding: 10px; margin: 10px;
            background-color: #ffffff;
            text-align: center;
        }

    </style>
</head>
<body>

<br />
<div id="wrap">
    <form id="joinForm" action="signin" method="post">
        <div id="joinTitle">
            <p>회원가입</p>
        </div>
        <hr />
        <table>
            <tr>
                <td>ID</td>
                <td><input type="text" name="id" id="id"/></td>
            </tr>
            <tr>
                <td>Password</td>
                <td><input type="password" name="password" id="password"/></td>
            </tr>
            <tr>
                <td>Password 확인</td>
                <td><input type="password" name="upwc" id="upwc"/></td>
            </tr>
            <tr>
                <td>이름</td>
                <td><input type="text" name="name" id="name"/></td>
            </tr>
            <tr>
                <td>전화번호</td>
                <td><input class="uphone" type="text" name="uphone1"> - <input class="uphone" type="text" name="uphone2"> - <input class="uphone" type="text" name="uphone3" required = "required"></td>
            </tr>
        </table>
        <hr />

        <div id="joinBtn">
            <input type="submit" name="join" value="회원가입" >&nbsp;&nbsp;<input type="reset" name="cancel" value="취소">
        </div>
    </form>
</div>
<script type="text/javascript">
    // $(function() {

    $('#joinForm').validate({
        submitHandler: function () {
            var f = confirm("회원가입을 하시겠습니까?");
            if (f) {
                return true;
            }
            else {
                return false;
            }
        },
        rules: {
            id: {
                required: true,
                minlength: 5,
                remote: "checkID"
            },
            password: {
                required: true,
                minlength: 6
            },
            upwc: {
                required: true,
                equalTo: "#password"
            },
            name: {
                required: true,
                minlength: 2
            }
        },
        messages: {
            id: {
                required: "ID를 입력해주세요.",
                //remote: "checkID"
            },
            password: {
                required: "비밀번호를 입력해주세요.",
            },
            upwc: {
                required: "비밀번호를 재입력해주세요.",
            },
            name: {
                required: "성함을 입력해주세요.",
            }
        }
    });
    //})
</script>
</body>
</html>