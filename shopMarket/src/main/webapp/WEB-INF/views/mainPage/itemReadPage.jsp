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
    let productImg = document.getElementById("productImg")
    let smallImg = document.getElementsByClassName("smallImg")


    smallImg[0].onclick = function () {
        productImg.src = smallImg[0].src;
    }

    smallImg[1].onclick = function () {
        productImg.src = smallImg[1].src;
    }

    smallImg[2].onclick = function () {
        productImg.src = smallImg[2].src;
    }

    smallImg[3].onclick = function () {
        productImg.src = smallImg[3].src;
    }

</script>


</body>
</html>