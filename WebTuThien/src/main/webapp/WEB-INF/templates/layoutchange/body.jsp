<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<link href="/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Additional CSS Files -->
<link rel="stylesheet" href="/assets/css/fontawesome.css">
<link rel="stylesheet" href="/assets/css/templatemo-sixteen.css">
<link rel="stylesheet" href="/assets/css/owl.css">
<div class="banner header-text">
    <div class="owl-banner owl-carousel">
        <div class="banner-item-01">
            <div style="font-size:2rem; color:#fff" class="text-content">
                "Chúng tôi cùng với bạn, trên hành trình kiếm tìm hạnh phúc,
                <br>
                bằng cách lan tỏa lòng nhân ái, chuyển hóa khổ đau."
            </div>
        </div>
    </div>
</div>
<!-- Banner Ends Here -->

<div class="latest-products">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="section-heading">
                    <h2>TOP 10 News</h2>
                    <a href="">view all News <i class="fa fa-angle-right"></i></a>
                </div>
            </div>
            <c:forEach var="item" items="${page.content}">
                <div class="col-md-3">
                    <div class="product-item">
                        <a href="#"><img src="/static/upload/${item.image}" alt=""></a>
                        <div class="down-content">
                            <a href="#"><h4>${item.name}</h4></a>

                            </br>
                            <a class="filled-button" href="/Home/product/about/${item.id}">Xem tin tức</a>
                        </div>

                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</div>