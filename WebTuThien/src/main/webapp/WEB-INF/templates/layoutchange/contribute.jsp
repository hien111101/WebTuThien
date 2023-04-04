<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900&display=swap" rel="stylesheet">

    <title>Sixteen Clothing - About Page</title>

    <!-- Bootstrap core CSS -->
    <link href="/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">


    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="/assets/css/fontawesome.css">
    <link rel="stylesheet" href="/assets/css/templatemo-sixteen.css">
    <link rel="stylesheet" href="/assets/css/owl.css">

!-- ***** Preloader End ***** -->

    <!-- Page Content -->
    <div class="page-heading about-heading header-text">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="text-content">
              <h4>Contribute for us</h4>
            </div>
          </div>
        </div>
      </div>
    </div>


    <div class="best-features about-features">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="section-heading">
              <h2>Bạn có muốn đóng góp. Nếu có xin vui lòng điền thông tin ở dưới</h2>
            </div>
          </div>
          <div class="col-md-12">
            <div class="left-content">
            <c:forEach var="item"  items="${page.content}">
                <form:form  action="/Home/contribute/success" method="post"  modelAttribute="item">
                    <div class="row">
                        <div class="col-md-12 mb-6">
                            <label >Fullname</label>
                            <input type="text" class="form-control" id="" placeholder="Ví dụ Nguyễn Văn A" value="" />
                            <div class="invalid-feedback">
                                Valid first name is required.
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12 mb-6">
                            <label >Email</label>
                            <input type="text" class="form-control" id="" placeholder="Ví dụ VanA@gmail.com" value="" />
                            <div class="invalid-feedback">
                                Valid first name is required.
                            </div>
                        </div>
                    </div>
                    <div class="row">
                                            <div class="col-md-12 mb-6">
                                                <label >Phone</label>
                                                <input type="text" class="form-control" id="" placeholder="Ví dụ 0123456789"  />
                                                <div class="invalid-feedback">
                                                    Valid first name is required.
                                                </div>
                                            </div>
                                        </div>
                    <div class="row">
                          <div class="col-md-12 mb-6">
                                <label >Hình thức đóng góp</label>
                                <select  class="form-control">
                                    <option></option>
                                    <option>Thanh toán bằng Ngân hàng</option>
                                    <option>Thanh toán bằng Trực tiếp</option>
                                    <option>Thanh toán bằng Momo</option>
                                </select>
                                <div class="invalid-feedback">
                                     Valid first name is required.
                                </div>
                          </div>
                    </div>

                    <div class="row">
                                            <div class="col-md-12 mb-6">
                                                <label >Số tiền đóng góp</label>
                                                <input type="text" class="form-control" id="" placeholder="Ví dụ 10000"  />
                                                <div class="invalid-feedback">
                                                    Valid first name is required.
                                                </div>
                                            </div>
                                        </div>

                    <div class="row">
                                            <div class="col-md-12 mb-6">
                                                <label >Yêu cầu sử dụng vào</label>
                                                <select  class="form-control">
                                                                                    <option></option>
                                                                                    <option>Tất cả (Quỹ sẽ phân phối vào dự án cấp thiết nhất)</option>
                                                                                    <option>Chỉ vào dự án y tế</option>
                                                                                    <option>Chỉ vào dự án trợ suất thức ăn giá rẻ</option>
                                                                                    <option >-----------------------------------</option>
                                                                                    <option>Chỉ vào dự án y tế</option>
                                                                                </select>
                                                <div class="invalid-feedback">
                                                    Valid first name is required.
                                                </div>
                                            </div>
                                        </div>

                    <div class="row">
                                            <div class="col-md-12 mb-6">
                                                <label >Lời nhắn nhủ</label>
                                                <textarea type="text" class="form-control" id="" placeholder="nhập lời nhắn" ></textarea>
                                                <div class="invalid-feedback">
                                                    Valid first name is required.
                                                </div>
                                            </div>
                                        </div>
                                        <form:button  type="submit" class="btn btn-primary " style="margin-top: 10px;">Submit</form:button>
                </form>
                                    </c:forEach>

            </div>
          </div>
        </div>
      </div>
    </div>








    <!-- Bootstrap core JavaScript -->
    <script src="/vendor/jquery/jquery.min.js"></script>
    <script src="/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>


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


