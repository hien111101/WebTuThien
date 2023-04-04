
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900&display=swap" rel="stylesheet">

    <title>Sixteen Clothing Products</title>

    <!-- Bootstrap core CSS -->
    <link href="/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="/assets/css/fontawesome.css">
    <link rel="stylesheet" href="/assets/css/templatemo-sixteen.css">
    <link rel="stylesheet" href="/assets/css/owl.css">
    <style>

    </style>
    <!-- Page Content -->
    <div class="page-heading products-heading header-text">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="text-content">
              <h4>new arrivals</h4>
              <h2>sixteen products</h2>
            </div>
          </div>
        </div>
      </div>
    </div>


    <div class="products">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="filters">
<%--                <form action="/product/search" method="post">--%>
<%--                <div class="input-group mb-3">--%>
<%--                    <input type="text" class="form-control" value="${keywords}"name="keywords" placeholder="Recipient's username" aria-label="Recipient's username" aria-describedby="button-addon2" >--%>
<%--                    <div class="input-group-append">--%>
<%--                        <button class="btn btn-outline-secondary" type="submit" id="button-addon2">Button</button>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                </form>--%>
    <form class="form-inline my-2 my-lg-0 "  action="/product/search" method="post">
        <input type="search" class="form-control" value="${keywords}"name="keywords" placeholder="Name Product" aria-label="Recipient's username" aria-describedby="button-addon2" >
        <div class="input-group-append">
            <button class="btn btn-outline-secondary" type="submit" id="button-addon2">Seach</button>
        </div>
        <ul>
            <c:forEach var="cate" items="${categories}">
                <li ><a  href="/Product/add/${cate.id}" >${cate.name}</a></li>
            </c:forEach>

        </ul>

    </form>
            </div>
          </div>
            <c:forEach var="item" items="${page.content}">
                <div class="col-3">
                    <div class="product-item">
                        <a href="#"><img src="/static/upload/${item.image}" alt=""></a>
                        <div class="down-content">
                            <a href="#"><h4>${item.name}</h4></a>

                            <ul class="stars">
                                <li><i class="fa fa-star"></i></li>
                                <li><i class="fa fa-star"></i></li>
                                <li><i class="fa fa-star"></i></li>
                                <li><i class="fa fa-star"></i></li>
                                <li><i class="fa fa-star"></i></li>
                            </ul>
                            </br>
                            <a class="filled-button" href="/Home/product/${item.id}">Xem</a>
                        </div>

                    </div>
                </div>
            </c:forEach>

          <div class="col-md-12">
            <ul class="pages">
              <li > <a href="/Home/product?p=0">1</a></li>
              <li ><a href="/Home/product?p=1">2</a></li>
              <li><a href="/Home/product?p=2">3</a></li>
              <li><a href="/Home/product?p=3">4</a></li>
              <li><a href="#"><i class="fa fa-angle-double-right"></i></a></li>
            </ul>
          </div>
        </div>
      </div>
    </div>


    <!-- Bootstrap core JavaScript -->
    <script src="/vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>


    <!-- Additional Scripts -->
    <script src="/assets/js/custom.js"></script>
    <script src="/assets/js/owl.js"></script>
    <script src="/assets/js/slick.js"></script>
    <script src="/assets/js/isotope.js"></script>
    <script src="/assets/js/accordions.js"></script>


    <script language = "text/Javascript">
      cleared[0] = cleared[1] = cleared[2] = 0; //set a cleared flag for each field
      function clearField(t){                   //declaring the array outside of the
      if(! cleared[t.id]){                      // function makes it static and global
          cleared[t.id] = 1;  // you could use true and false, but that's more typing
          t.value='';         // with more chance of typos
          t.style.color='#fff';
          }
      }
    </script>
