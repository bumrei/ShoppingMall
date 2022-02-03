<%@include file="../includes2/header.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="small-container">

    <%------ Search Area ------%>
    <div class="row row-2">
        <h2>All Products</h2>
        <select>
            <option>Default Shorting</option>
            <option>short by price</option>
            <option>short by popularity</option>
            <option>short by rating</option>
            <option>short by sale</option>
        </select>
    </div>
    <%------ / Search Area ------%>


    <div class="row">
        <c:forEach items="${itemDTOList}" var="dto">
            <div class="col-4">
                <a href="javascript:fncReadItem('${dto.itemNm}','${dto.itemNo}')">
                    <c:forEach items="${dto.files}" var="attach">
                        <img src="/viewFile?file=${attach.fileLink}">
                    </c:forEach>
                    <h4>${dto.itemNm}</h4>
                    <div class="rating">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star-half-alt"></i>
                    </div>
                    <p>$ ${dto.price}</p>
                </a>
            </div>
        </c:forEach>
    </div>


    <div class="page-btn">
        <span>1</span>
        <span>2</span>
        <span>3</span>
        <span>4</span>
        <span>5</span>
        <span>&#8594;</span>
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

<script>
    let menuItems = document.getElementById("MenuItems")

    menuItems.style.maxHeight = "0px";

    function menutoggle() {
        if (menuItems.style.maxHeight == "0px") {
            menuItems.style.maxHeight = "200px"
        } else {
            menuItems.style.maxHeight = "0px"
        }
    }
</script>

<script>
    function fncReadItem(itemName, itemNo) {
        console.log("itemNo = ", itemNo)
        let win;
        win = window.open("/mainPage/itemReadPage2?itemNm=" + itemName + "&itemNo=" + itemNo);
        win.onbeforeunload = function () {
            console.log("윈도우 꺼짐");
        }
    }

    const result = '${result}'

    console.log("result", result)

    if (result && result !== '') {
        alert(result)
        window.history.replaceState(null, '', '/mainPage/itemList')
    }
</script>


</body>
</html>