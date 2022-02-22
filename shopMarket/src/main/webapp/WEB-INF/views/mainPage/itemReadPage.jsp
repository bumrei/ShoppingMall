<%@include file="../includes2/header.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!-- -------- single product details -------- -->

<div class="small-container single-product">
    <div class="row">
        <div class="col-2">
            <!-- This is for the main image -->
            <img src="/viewFile?file=${productInfo.files[0].fileLink}" width="100%" id="productImg">
            <div class="small-img-row">
                <c:forEach items="${productInfo.files}" var="attach" varStatus="status">
                    <c:if test="${status.index > 0}">
                        <div class="small-img-col">
                            <img src="/viewFile?file=${attach.fileLink}" width="100%" class="smallImg">
                        </div>
                    </c:if>
                </c:forEach>
            </div>

            <%--            <div class="col-2">--%>
            <%--                <!-- This is for the main image -->--%>
            <%--                <c:forEach items="${productInfo.files}" var="attach" varStatus="status">--%>
            <%--                    <c:if test="${attach.imageUsage == 'itemMain'}">--%>
            <%--                        <img src="/viewFile?file=${attach.fileLink}" width="100%" id="productImg">--%>
            <%--                    </c:if>--%>
            <%--                </c:forEach>--%>
            <%--                <div class="small-img-row">--%>
            <%--                    <c:forEach items="${productInfo.files}" var="attach" varStatus="status">--%>

            <%--                        <c:if test="${status.index > 0 && attach.imageUsage == 'item'}">--%>
            <%--                            <div class="small-img-col">--%>
            <%--                                <img src="/viewFile?file=${attach.fileLink}" width="100%" class="smallImg">--%>
            <%--                            </div>--%>
            <%--                        </c:if>--%>
            <%--                    </c:forEach>--%>
            <%--                </div>--%>

            <%--            </div>--%>

        </div>
        <div class="col-2">
            <!-- Selling information about the product -->
            <p>Home / T-Shirt</p>
            <h1>Red Printed T-Shirt by HRX</h1>
            <h4>$50.00</h4>
            <select>
                <option>Select Size</option>
                <option>XXL</option>
                <option>XL</option>
                <option>Large</option>
                <option>Medium</option>
                <option>Small</option>
            </select>
            <input type="number" value="1" min="1">
            <a href="javascript:addToCart()" class="btn btnToCart">Add To Cart</a>
            <a href="" class="btn btnToPurchase">바로 구매</a>

            <h3>Product Details <i class="fa fa-indent"></i></h3>
            <br>
            <p>"Sed ut perspiciatis unde omnis iste natus error sit voluptatem
                accusantium doloremque laudantium, totam rem aperiam, eaque
                ipsa quae ab illo inventore veritatis</p>
        </div>
    </div>
</div>

<!-- ---- title ---- -->
<div class="small-container">
    <div class="row row-2">
        <h2>Related Products</h2>
        <a href="#">View More</a>
    </div>
</div>
<!-- ---- multi slide ---- -->
<div class="slide_wrapper">
    <ul class="slides">
        <li><img src="../../../resources/shopCreated/images/gallery-1.jpg" alt=""></li>
        <li><img src="../../../resources/shopCreated/images/gallery-2.jpg" alt=""></li>
        <li><img src="../../../resources/shopCreated/images/gallery-3.jpg" alt=""></li>
        <li><img src="../../../resources/shopCreated/images/gallery-4.jpg" alt=""></li>
        <li><img src="../../../resources/shopCreated/images/gallery-3.jpg" alt=""></li>
        <li><img src="../../../resources/shopCreated/images/gallery-1.jpg" alt=""></li>
        <li><img src="../../../resources/shopCreated/images/gallery-2.jpg" alt=""></li>
        <li><img src="../../../resources/shopCreated/images/gallery-1.jpg" alt=""></li>
        <li><img src="../../../resources/shopCreated/images/gallery-4.jpg" alt=""></li>
        <li><img src="../../../resources/shopCreated/images/gallery-3.jpg" alt=""></li>
        <li><img src="../../../resources/shopCreated/images/gallery-2.jpg" alt=""></li>
        <li><img src="../../../resources/shopCreated/images/gallery-1.jpg" alt=""></li>
        <li><img src="../../../resources/shopCreated/images/gallery-3.jpg" alt=""></li>
        <li><img src="../../../resources/shopCreated/images/gallery-1.jpg" alt=""></li>
    </ul>
    <p class="controls">
        <span class="prev"><</span>
        <span class="next">></span>
    </p>
</div>

<!-- ---- title ---- -->
<div class="small-container">
    <div class="row row-2">
        <h2>Related Products</h2>
        <a href="#">View More</a>
    </div>
</div>
<!-- ---- multi slide ---- -->
<div class="slide_wrapper">
    <ul class="slides1">
        <li><img src="../../../resources/shopCreated/images/gallery-1.jpg" alt=""></li>
        <li><img src="../../../resources/shopCreated/images/gallery-2.jpg" alt=""></li>
        <li><img src="../../../resources/shopCreated/images/gallery-3.jpg" alt=""></li>
        <li><img src="../../../resources/shopCreated/images/gallery-4.jpg" alt=""></li>
        <li><img src="../../../resources/shopCreated/images/gallery-3.jpg" alt=""></li>
        <li><img src="../../../resources/shopCreated/images/gallery-1.jpg" alt=""></li>
        <li><img src="../../../resources/shopCreated/images/gallery-2.jpg" alt=""></li>
        <li><img src="../../../resources/shopCreated/images/gallery-1.jpg" alt=""></li>
        <li><img src="../../../resources/shopCreated/images/gallery-4.jpg" alt=""></li>
        <li><img src="../../../resources/shopCreated/images/gallery-3.jpg" alt=""></li>
        <li><img src="../../../resources/shopCreated/images/gallery-2.jpg" alt=""></li>
        <li><img src="../../../resources/shopCreated/images/gallery-1.jpg" alt=""></li>
        <li><img src="../../../resources/shopCreated/images/gallery-3.jpg" alt=""></li>
        <li><img src="../../../resources/shopCreated/images/gallery-1.jpg" alt=""></li>
    </ul>
    <p class="controls1">
        <span class="prev1"><</span>
        <span class="next1">></span>
    </p>
</div>
<%-- ============================== Multi-Tap Section ================================= --%>
<div class="small-container">
    <div id="btfTab">
        <!-- 여기 플로팅 메뉴바로 만들어 줘야 한다. -->
        <ul class="tab-title">
            <li onclick="setActive('detail')" name="detail">상품상세</li>
            <li onclick="setActive('review')" name="review" class="active">상품평(2,300)</li>
            <li onclick="setActive('qna')" name="qna">상품문의</li>
            <li onclick="setActive('etc')" name="etc">배송/교환/반품 안내</li>
        </ul>
        <ul class="tab-content">
            <!-- ============================================= 상품 상세 =============================================== -->
            <li class="product-detail">
                <!-- ---- title ---- -->
                <div class="small-container">
                    <div class="row">
                        <h2>Product Explanation</h2>
                    </div>
                </div>

                <div class="small-container">
                    <div class="row">
                        <div class="col-11">
                            <img src="../../../resources/shopCreated/images/product-expl-1.jpg">
                        </div>
                        <div class="col-11">
                            <img src="../../../resources/shopCreated/images/product-expl-2.jpg">
                        </div>
                        <div class="col-11">
                            <img src="../../../resources/shopCreated/images/product-expl-3.jpg">
                        </div>
                        <div class="col-11">
                            <img src="../../../resources/shopCreated/images/product-expl-4.jpg">
                        </div>
                    </div>
                </div>
            </li>
            <li class="product-review">
                <!-- ================================================ 상품평 ======================================================= -->
                <!-- ---- title ---- -->
                <div class="small-container">
                    <div class="comment-title">
                        <h2>Comment Section</h2>
                        <h6>동일한 상품에 대해 작성된 상품평으로, 판매자는 다를 수 있습니다.</h6>
                        <div class="comment-star-summary">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="far fa-star"></i>
                        </div>
                    </div>
                </div>


                <!-- --- Testimonials ------------------------ -->
                <div id="testimonials">

                    <!-- --- testimonials-box-container ---- -->
                    <div class="testimonial-box-container">

                        <!-- ------------------------- forEach part ------------------------ -->

                        <!-- --- Box1 ---- -->
                        <div class="testimonial-box">
                            <!-- --- top ---- -->
                            <div class="box-top">
                                <!-- --- profile ----- -->
                                <div class="profile">
                                    <!-- --- img ----- -->
                                    <div class="profile-img">
                                        <img src="../../../resources/shopCreated/images/user-11.png">
                                    </div>
                                    <!-- --- name-and-username ----- -->
                                    <div class="name-user">
                                        <strong>Brian Maze</strong>
                                        <span>@BraMazeing</span>
                                    </div>
                                </div>
                                <!-- --- reviews ----- -->
                                <div class="reviews">
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="far fa-star"></i>
                                </div>
                            </div>

                            <!-- Comment section -->
                            <div class="client-comment">
                                <p>Lorem ipsum dolor sit amet, consectetur
                                    adipiscing elit, sed do eiusmod tempor
                                    incididunt ut labore et dolore magna aliqua.
                                    Ut enim ad minim veniam, quis nostrud
                                    exercitation ullamco laboris nisi ut aliquip
                                    ex ea commodo consequat.
                                    Lorem ipsum dolor sit amet, consectetur
                                    adipiscing elit, sed do eiusmod tempor
                                    incididunt ut labore et dolore magna aliqua.
                                    Ut enim ad minim veniam, quis nostrud
                                    exercitation ullamco laboris nisi ut aliquip
                                    ex ea commodo consequat.
                                    Lorem ipsum dolor sit amet, consectetur
                                    adipiscing elit, sed do eiusmod tempor
                                    incididunt ut labore et dolore magna aliqua.
                                    Ut enim ad minim veniam, quis nostrud
                                    exercitation ullamco laboris nisi ut aliquip
                                    ex ea commodo consequat.</p>
                            </div>
                        </div>
                        <!-- ------------------------- / forEach part ------------------------ -->


                        <!-- --- Box2 ---- -->
                        <div class="testimonial-box">
                            <!-- --- top ---- -->
                            <div class="box-top">
                                <!-- --- profile ----- -->
                                <div class="profile">
                                    <!-- --- img ----- -->
                                    <div class="profile-img">
                                        <img src="../../../resources/shopCreated/images/user-22.png">
                                    </div>
                                    <!-- --- name-and-username ----- -->
                                    <div class="name-user">
                                        <strong>Brian Maze</strong>
                                        <span>@BraMazeing</span>
                                    </div>
                                </div>
                                <!-- --- reviews ----- -->
                                <div class="reviews">
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="far fa-star"></i>
                                </div>
                            </div>

                            <!-- Comment section -->
                            <div class="client-comment">
                                <p>Lorem ipsum dolor sit amet, consectetur
                                    adipiscing elit, sed do eiusmod tempor
                                    incididunt ut labore et dolore magna aliqua.
                                    Ut enim ad minim veniam, quis nostrud
                                    exercitation ullamco laboris nisi ut aliquip
                                    ex ea commodo consequat. Lorem ipsum dolor sit
                                    amet, consectetur adip Lorem ipsum dolor sit
                                    amet, consectetur adip</p>
                            </div>
                        </div>

                        <!-- --- Box3 ---- -->
                        <div class="testimonial-box">
                            <!-- --- top ---- -->
                            <div class="box-top">
                                <!-- --- profile ----- -->
                                <div class="profile">
                                    <!-- --- img ----- -->
                                    <div class="profile-img">
                                        <img src="../../../resources/shopCreated/images/user-33.png">
                                    </div>
                                    <!-- --- name-and-username ----- -->
                                    <div class="name-user">
                                        <strong>Brian Maze</strong>
                                        <span>@BraMazeing</span>
                                    </div>
                                </div>
                                <!-- --- reviews ----- -->
                                <div class="reviews">
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="far fa-star"></i>
                                </div>
                            </div>

                            <!-- Comment section -->
                            <div class="client-comment">
                                <p>Lorem ipsum dolor sit amet, consectetur
                                    adipiscing elit, sed do eiusmod tempor
                                    incididunt ut labore et dolore magna aliqua.
                                    Ut enim ad minim veniam, quis nostrud
                                    exercitation ullamco laboris nisi ut aliquip
                                    ex ea commodo consequat. </p>
                            </div>
                        </div>

                        <!-- --- Box4 ---- -->
                        <div class="testimonial-box">
                            <!-- --- top ---- -->
                            <div class="box-top">
                                <!-- --- profile ----- -->
                                <div class="profile">
                                    <!-- --- img ----- -->
                                    <div class="profile-img">
                                        <img src="../../../resources/shopCreated/images/user-11.png">
                                    </div>
                                    <!-- --- name-and-username ----- -->
                                    <div class="name-user">
                                        <strong>Brian Maze</strong>
                                        <span>@BraMazeing</span>
                                    </div>
                                </div>
                                <!-- --- reviews ----- -->
                                <div class="reviews">
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="far fa-star"></i>
                                </div>
                            </div>

                            <!-- Comment section -->
                            <div class="client-comment">
                                <p>Lorem ipsum dolor sit amet, consectetur
                                    adipiscing elit, sed do eiusmod tempor
                                    incididunt ut labore et dolore magna aliqua.
                                    Ut enim ad minim veniam, quis nostrud
                                    exercitation ullamco laboris nisi ut aliquip
                                    ex ea commodo consequat.
                                    Lorem ipsum dolor sit amet, consectetur
                                    adipiscing elit, sed do eiusmod tempor
                                    incididunt ut labore et dolore magna aliqua.
                                    Ut enim ad minim veniam, quis nostrud
                                    exercitation ullamco laboris nisi ut aliquip
                                    ex ea commodo consequat. </p>
                            </div>
                        </div>

                    </div>

                </div>
            </li>
            <li class="product-qna">준비중</li>
            <li class="product-etc">준비중</li>
        </ul>
    </div>
</div>


<!-- ----- footer ----- -->

<div class="footer">
    <div class="container">
        <div class="row"> <!-- when we need multiple columns, we have to use class 'row'!! -->
            <div class="footer-col-1">
                <h3>Download our App</h3>
                <p>Dowmload App for Android and Ios mobile phone.</p>
                <div class="app-logo">
                    <img src="../../../resources/shopCreated/images/play-store.png">
                    <img src="../../../resources/shopCreated/images/app-store.png">
                </div>
            </div>
            <div class="footer-col-2">
                <img src="../../../resources/shopCreated/images/logo-white.png">
                <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque
                    laudantium, totam rem aperiam,</p>
            </div>
            <div class="footer-col-3">
                <h3>Useful Links</h3>
                <ul>
                    <li>Coupons</li>
                    <li>Blog Post</li>
                    <li>Return Policy</li>
                    <li>Join Affiliate</li>
                </ul>
            </div>
            <div class="footer-col-4">
                <h3>Follow Us</h3>
                <ul>
                    <li>Facobook</li>
                    <li>Twiter</li>
                    <li>Instagram</li>
                    <li>Youtube</li>
                </ul>
            </div>
        </div>
        <hr>
        <p class="copyright"> @ Copyright 2022 - Easy Tutorials</p>
    </div>
</div>

<%@include file="../includes2/footer.jsp" %>

<script>
    let productImg = document.getElementById("productImg");
    let smallImg = document.getElementsByClassName("smallImg");
    // 멀티 슬라이드
    let slides = document.querySelector(".slides");
    let slide = document.querySelectorAll('.slides li');
    let currentIdx = 0;
    let slideCount = slide.length;
    let slideWidth = 300,
        slideMargin = 30;
    let prevBtn = document.querySelector(".prev");
    let nextBtn = document.querySelector(".next");


    let currentIdx1 = 0;
    let slideCount1 = slide.length;
    let slideWidth1 = 300,
        slideMargin1 = 30;

    let slides1 = document.querySelector(".slides1");
    let slide1 = document.querySelectorAll('.slides1 li');

    let prevBtn1 = document.querySelector(".prev1");
    let nextBtn1 = document.querySelector(".next1");

    let itemImage = '${productInfo.files}'
    let itemImageCount = '${itemImageCount}'


    console.log(itemImageCount)
    // 아이템 상세조회에서 대표 이미지 부분 클릭으로 바꾸기.
    // itemImageCount 가 0 이면 작동하지 않는다.
    for (let i = 0; i < itemImageCount; i++) {
        smallImg[i].onclick = function () {
            console.log("작동 하니?")
            productImg.src = smallImg[i].src;
        }
    }


    // smallImg[0].onclick = function () {
    //     productImg.src = smallImg[0].src;
    // }
    //
    // smallImg[1].onclick = function () {
    //     productImg.src = smallImg[1].src;
    // }
    //
    // smallImg[2].onclick = function () {
    //     productImg.src = smallImg[2].src;
    // }
    //
    // smallImg[3].onclick = function () {
    //     productImg.src = smallImg[3].src;
    // }

    // 멀티 슬라이드
    slides.style.width = (slideWidth + slideMargin) * slideCount - slideMargin + 'px';
    slides1.style.width = (slideWidth + slideMargin) * slideCount - slideMargin + 'px';


    function moveSlide(num) {
        slides.style.left = -num * 330 + 'px';
        currentIdx = num;
    }

    nextBtn.addEventListener('click', function () {
        if (currentIdx < slide.length - 3) {
            moveSlide(currentIdx + 1);
        } else {
            moveSlide(0)
        }
    });

    prevBtn.addEventListener('click', function () {
        if (currentIdx > 0) {
            moveSlide(currentIdx - 1);
        } else {
            moveSlide(slide.length - 3)
        }
    });


    nextBtn1.addEventListener('click', function () {
        if (currentIdx1 < slide.length - 3) {
            moveSlide1(currentIdx1 + 1);
        } else {
            moveSlide1(0)
        }
    });

    prevBtn1.addEventListener('click', function () {
        if (currentIdx1 > 0) {
            moveSlide1(currentIdx1 - 1);
        } else {
            moveSlide1(slide.length - 3)
        }
    });

    function moveSlide1(num) {
        slides1.style.left = -num * 330 + 'px';
        currentIdx1 = num;
    }

    let classes = document.querySelectorAll(".tab-title li")


    function setActive(part) {
        let doActive = document.getElementsByName(part);
        if (doActive[0].classList == "active" ) {
            return
        } else {
            for (let i = 0 ; i < classes.length; i++) {
                classes[i].classList.remove('active')
            }
            doActive[0].className = 'active';
        }
    }

    let productNo = '${productInfo.itemNo}'

    function addToCart() {
        console.log("product Number = ", productNo)
    }


</script>


</body>
</html>