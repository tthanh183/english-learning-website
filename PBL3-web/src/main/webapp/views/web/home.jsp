<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title><fmt:message key="label.home" bundle="${lang}"/></title>
</head>
<body>

<div id="myCarousel" class="carousel slide">
    <div class="carousel-inner">

        <div class="active item">
            <div class="container">
                <div class="row">

                    <div class="span6">

                        <div class="carousel-caption">
                            <h1>Example headline</h1>
                            <p class="lead">Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                            <a class="btn btn-large btn-primary" href="#">Sign up today</a>
                        </div>

                    </div>

                    <div class="span6"> <img src="img/slide/slide1.jpg"></div>

                </div>
            </div>




        </div>

        <div class="item">

            <div class="container">
                <div class="row">

                    <div class="span6">

                        <div class="carousel-caption">
                            <h1>Example headline</h1>
                            <p class="lead">Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                            <a class="btn btn-large btn-primary" href="#">Sign up today</a>
                        </div>

                    </div>

                    <div class="span6"> <img src="img/slide/slide2.jpg"></div>

                </div>
            </div>

        </div>





    </div>
    <!-- Carousel nav -->
    <a class="carousel-control left " href="#myCarousel" data-slide="prev"><i class="icon-chevron-left"></i></a>
    <a class="carousel-control right" href="#myCarousel" data-slide="next"><i class="icon-chevron-right"></i></a>
    <!-- /.Carousel nav -->

</div>
<!-- /Carousel -->



<!-- Feature
==============================================-->


<div class="row feature-box">
    <div class="span12 cnt-title">
        <h1><fmt:message key="label.guideline" bundle="${lang}"/></h1>
        <span>Hướng dẫn cách làm các dạng bài nghe và đọc</span>
    </div>
    <div class="span4"><img src="image/guide.png"height="350px" width="350px"></div>
    <div class="span4">
        <img src="image/listening_guideline.png" height="150px" width="150px">
        <h2><fmt:message key="label.guideline.listen" bundle="${lang}"/></h2>
        <p>
            Hướng dẫn cách làm các dạng bài nghe
        </p>
        <a href="<c:url value="/danh-sach-huong-dan-nghe.html"/>">Chi tiết &rarr;</a>
    </div>

    <div class="span4">
        <img src="image/reading_guideline.png" height="150px" width="150px">
        <h2><fmt:message key="label.guideline.read" bundle="${lang}"/></h2>
        <p>
            Hướng dẫn cách làm các dạng bài đọc
        </p>
        <a href="<c:url value="/danh-sach-huong-dan-doc.html"/>">Chi tiết &rarr;</a>
    </div>

</div>

<div class="hr-divider"></div>

<div class="row feature-box">
    <div class="span12 cnt-title">
        <h1><fmt:message key="label.exercise" bundle="${lang}"/></h1>
        <span>Các bài luyện tập</span>
    </div>
    <div class="span4"><img src="image/exercise.png"height="350px" width="350px"></div>
    <div class="span4">
        <img src="image/exercise_listen.png"height="150px" width="150px">
        <h2><fmt:message key="label.exercise.listen" bundle="${lang}"/></h2>
        <p>
            Các bài luyện tập nghe
        </p>
        <c:url var="listExercise" value="/danh-sach-bai-tap.html">
            <c:param name="pojo.type" value="listening"/>
        </c:url>
        <a href="${listExercise}">Chi tiết &rarr;</a>
    </div>
    <div class="span4">
        <img src="image/exercise_read.png"height="150px" width="150px">
        <h2><fmt:message key="label.exercise.read" bundle="${lang}"/></h2>
        <p>
            Các bài luyện tập đọc
        </p>
        <c:url var="listExercise" value="/danh-sach-bai-tap.html">
            <c:param name="pojo.type" value="reading"/>
        </c:url>
        <a href="${listExercise}">Chi tiết &rarr;</a>
    </div>
</div>

<!-- /.Feature -->

<div class="hr-divider"></div>

<!-- Row View -->


<div class="row">
    <div class="span12 cnt-title">
        <h1><fmt:message key="label.exam" bundle="${lang}"/></h1>
        <span>Yêu cầu đăng nhập</span>
    </div>

    <div class="span6"><img src="image/online_exam.png"height="350px" width="350px"></div>

    <div class="span4">
        <img src="image/examination.png"height="150px" width="150px">
        <h2><fmt:message key="label.examination" bundle="${lang}"/></h2>
        <p>
            Làm bài kiểm tra trực tuyến
        </p>
        <a href="<c:url value="/danh-sach-bai-thi.html"/>">Chi tiết &rarr;</a>
    </div>

</div>


</body>
</html>
