<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다; 어떤 다른 콘텐츠들은 반드시 이 태그들 *다음에* 와야 합니다 -->
    <title>Home</title>
    <!-- 부트스트랩 -->
    <link href="/css/bootstrap.min.css" rel="stylesheet">
    <!-- IE8 에서 HTML5 요소와 미디어 쿼리를 위한 HTML5 shim 와 Respond.js -->
    <!-- WARNING: Respond.js 는 당신이 file:// 을 통해 페이지를 볼 때는 동작하지 않습니다. -->
    <!--[if lt IE 9]>

    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
    <script src="/js/bootstrap.min.js"></script>
    <style>
        html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, a, abbr, acronym, address,
        big, cite, code, del, dfn, em, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var, b, u, i, center,
        dl, dt, dd, ol, ul, li, fieldset, form, label, legend, table, caption, tbody, tfoot, thead, tr, th, td, article, aside,
        canvas, details, embed,  figure, figcaption, footer, header, menu, nav, output, ruby, section, summary, time, mark, audio, video {
            margin: 0;
            padding: 0;
            border: 0;
            font-size: 100%;
            font: inherit;
            vertical-align: baseline;
        }

        header {

        }

        header .gnb {
            width:100%; background-color:#353535;
        }

        header .gnb ul {
            overflow:hidden; width:1000px; height:30px; line-height:30px; margin:0 auto;
        }

        header li{
            float:left; list-style:none; margin-left:50px; font-size:.9em;
        }

        header a{
            color:#ffffff; text-decoration:none;
        }

        header .logo {
            border:1px solid #cccccc;
            width:200px; height:100px; line-height:100px;
            margin:70px auto;
            text-align:center;
        }

        header .hit_menu ul {
            overflow:hidden; width:1000px; margin:0 auto 3px;
        }

        header .hit_menu li {
            float:right; margin:0; text-align:center;
        }

        header .hit_menu a {
            display:block; color:#282828;
            font-size:1.1em; padding:10px 30px; border:1px solid #cccccc;
        }

        header .hit_menu li:first-child a {
            border-radius:0 10px 10px 0;
        }

        header .hit_menu li:last-child a {
            border-radius:10px 0 0 10px;
        }

        header .lnb {
            overflow:hidden;
            width:100%; height:30px;
            border-top:1px dashed #cccccc;
            border-bottom:1px solid #cccccc;
            padding:5px;
        }

        header .lnb ul {
            width:1000px; margin:0 auto;
        }

        header .lnb li {
            margin:5px;
            line-height:25px;
        }

        header .lnb a {
            color:#282828;
            font-size:1.1em;
            padding:10px 30px;
        }

        #content {
            width:1000px; margin:0 auto;
        }

        #content .section1 {
            overflow:hidden;
            width:1000px; height:400px; margin:0 auto;
            border:1px solid #cccccc;
        }

        #content .section1 div {
            height:400px; float:left; line-height:400px; text-align:center;
            border:1px solid #cccccc;
            box-sizing:border-box;
        }

        #content .slide_banner { width:700px; }
        #content .side_banner { width:300px; }

        #content .section2 div {
            margin-top:10px;
            width:1000px; height:400px; line-height:400px; text-align:center;
            border:1px solid #cccccc;
            box-sizing:border-box;
        }

        #content .hit_product {
            overflow:hidden;
        }

        #content .hit_product ul li {
            list-style:none; float:left; margin:0 7px 0 0;
            width:240px; border:1px solid #cccccc; box-sizing:border-box;
        }

        #content .hit_product ul li:first-child {
            margin-left:7px;
        }

        #content .md_product {
            overflow:hidden;
        }

        #content .md_product ul li {
            list-style:none; float:left; margin:0 7px 0 0;
            width:240px; border:1px solid #cccccc; box-sizing:border-box;
        }

        #content .md_product ul li:first-child {
            margin-left:7px;
        }

        footer {
            width:1000px; height:310px; margin:20px auto 0;
            overflow:hidden;
        }

        footer div {
            float:left; height:250px;
            border:1px solid #cccccc; box-sizing:border-box;
        }

        footer div:first-child {
            width:200px;
        }

        footer div:nth-child(2) {
            width:500px;
        }

        footer div:nth-child(3) {
            width:300px;
        }

        footer div:last-child {
            width:1000px; height:50px; margin:10px auto 0; background-color:#242424; color:#ffffff;
            text-align:center; line-height:50px;
            clear:both; border:0;
        }

    </style>
</head>
<body>
    <header>
        <div class="gnb">
            <ul>
                <li><a href="#" alt="">로그인</a></li>
                <li><a href="user/signin" alt="">회원가입</a></li>
                <li><a href="#" alt="">Wish List</a></li>
                <li><a href="#" alt="">Cart</a></li>
                <li><a href="#" alt="">Order</a></li>
                <li><a href="#" alt="">Mypage</a></li>
                <li><a href="#" alt="">Notice</a></li>
                <li><a href="#" alt="">QnA</a></li>
                <li><a href="#" alt="">Review</a></li>
                <li><a href="#" alt="">Favorite</a></li>
            </ul>
        </div>
        <div class="logo">logo</div>
        <div class="hit_menu">
            <ul>
                <li><a href="#" alt="">hit4</a></li>
                <li><a href="#" alt="">hit3</a></li>
                <li><a href="#" alt="">hit2</a></li>
                <li><a href="#" alt="">hit1</a></li>
            </ul>
        </div>
        <div class="lnb">
            <ul>
                <li><a href="#" alt="">menu1</a></li>
                <li><a href="#" alt="">menu2</a></li>
                <li><a href="#" alt="">menu3</a></li>
                <li><a href="#" alt="">menu4</a></li>
                <li><a href="#" alt="">menu5</a></li>
                <li><a href="#" alt="">menu6</a></li>
                <li><a href="#" alt="">menu7</a></li>
                <li><a href="#" alt="">menu8</a></li>
            </ul>
        </div>
    </header>
    <div id="content">
        <div class="section1">
            <div class="slide_banner"> slide banner </div>
            <div class="side_banner"> side banner </div>
        </div>

        <div class="section2">
            <div class="hit_product">
                <ul>
                    <li><a href="#" alt="">hit_profuct1</a></li>
                    <li><a href="#" alt="">hit_profuct2</a></li>
                    <li><a href="#" alt="">hit_profuct3</a></li>
                    <li><a href="#" alt="">hit_profuct4</a></li>
                </ul>
            </div>
            <div class="md_product">
                <ul>
                    <li><a href="#" alt="">md_product1</a></li>
                    <li><a href="#" alt="">md_product2</a></li>
                    <li><a href="#" alt="">md_product3</a></li>
                    <li><a href="#" alt="">md_product4</a></li>
                </ul>
            </div>
        </div>
    </div>
    <footer>
        <div class="office_logo">office_logo</div>
        <div class="office_adress">office_adress</div>
        <div class="shopping_info">shopping_info</div>
        <div class="copyright">copyright</div>
    </footer>
<div class="container">
    <button type="button" class="btn btn-default" onclick="location='aa'">회원가입</button>
</div>

</body>
</html>