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
            <a href="" class="btn">Add To Cart</a>

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
        <li><img src="http://placehold.it/300x300" alt=""></li>
        <li><img src="http://placehold.it/300x300" alt=""></li>
        <li><img src="http://placehold.it/300x300" alt=""></li>
        <li><img src="http://placehold.it/300x300" alt=""></li>
        <li><img src="http://placehold.it/300x300" alt=""></li>
        <li><img src="http://placehold.it/300x300" alt=""></li>
        <li><img src="http://placehold.it/300x300" alt=""></li>
        <li><img src="http://placehold.it/300x300" alt=""></li>
        <li><img src="http://placehold.it/300x300" alt=""></li>
        <li><img src="http://placehold.it/300x300" alt=""></li>
        <li><img src="http://placehold.it/300x300" alt=""></li>
        <li><img src="http://placehold.it/300x300" alt=""></li>
        <li><img src="http://placehold.it/300x300" alt=""></li>
        <li><img src="http://placehold.it/300x300" alt=""></li>
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
        <li><img src="http://placehold.it/300x300" alt=""></li>
        <li><img src="http://placehold.it/300x300" alt=""></li>
        <li><img src="http://placehold.it/300x300" alt=""></li>
        <li><img src="http://placehold.it/300x300" alt=""></li>
        <li><img src="http://placehold.it/300x300" alt=""></li>
        <li><img src="http://placehold.it/300x300" alt=""></li>
        <li><img src="http://placehold.it/300x300" alt=""></li>
        <li><img src="http://placehold.it/300x300" alt=""></li>
        <li><img src="http://placehold.it/300x300" alt=""></li>
        <li><img src="http://placehold.it/300x300" alt=""></li>
        <li><img src="http://placehold.it/300x300" alt=""></li>
        <li><img src="http://placehold.it/300x300" alt=""></li>
        <li><img src="http://placehold.it/300x300" alt=""></li>
        <li><img src="http://placehold.it/300x300" alt=""></li>
    </ul>
    <p class="controls1">
        <span class="prev1"><</span>
        <span class="next1">></span>
    </p>
</div>

<!-- ---- title ---- -->
<div class="small-container">
    <div class="row row-2">
        <h2>Related Products</h2>
        <a href="#">View More</a>
    </div>
</div>

<!-- ---- products ---- -->

<div class="small-container">

    <div class="row">
        <div class="col-4">
            <img src="../../../resources/shopCreated/images/product-1.jpg">
            <h4>Red printed T-shrirt</h4>
            <div class="rating">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <p>$50.00</p>
        </div>
        <div class="col-4">
            <img src="../../../resources/shopCreated/images/product-2.jpg">
            <h4>Perfect Shoes</h4>
            <div class="rating">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
            </div>
            <p>$50.00</p>
        </div>
        <div class="col-4">
            <img src="../../../resources/shopCreated/images/product-3.jpg">
            <h4>Goody pants</h4>
            <div class="rating">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="far fa-star"></i>
                <i class="far fa-star"></i>
            </div>
            <p>$50.00</p>
        </div>
        <div class="col-4">
            <img src="../../../resources/shopCreated/images/product-4.jpg">
            <h4>Blue printed T-shrirt</h4>
            <div class="rating">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
                <i class="far fa-star"></i>
                <i class="far fa-star"></i>
            </div>
            <p>$50.00</p>
        </div>

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

    let slides1 = document.querySelector(".slides1");
    let slide1 = document.querySelectorAll('.slides1 li');

    let prevBtn1 = document.querySelector(".prev1");
    let nextBtn1 = document.querySelector(".next1");

    let itemImage = '${productInfo.files}'
    let itemImageCount = '${itemImageCount}'



    for(let i = 0; i < itemImageCount; i++) {
        smallImg[i].onclick = function () {
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

    nextBtn.addEventListener('click', function() {
        if( currentIdx < slide.length - 3) {
            moveSlide(currentIdx + 1);
        } else {
            moveSlide(0)
        }
    });

    prevBtn.addEventListener('click', function() {
        if( currentIdx > 0) {
            moveSlide(currentIdx - 1);
        } else {
            moveSlide(slide.length - 3)
        }
    });

    nextBtn1.addEventListener('click', function() {
        if( currentIdx < slide.length - 3) {
            moveSlide1(currentIdx + 1);
        } else {
            moveSlide1(0)
        }
    });

    prevBtn1.addEventListener('click', function() {
        if( currentIdx > 0) {
            moveSlide1(currentIdx - 1);
        } else {
            moveSlide1(slide.length - 3)
        }
    });

    function moveSlide1(num) {
        slides1.style.left = -num * 330 + 'px';
        currentIdx = num;
    }

</script>


</body>
</html>