<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ResStore | Ecommerce Website Design</title>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;700&display=swap"
          rel="stylesheet">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css"/>

    <link rel="stylesheet" href="../../../resources/shopCreated/css/style.css"></link>

</head>
<body>

<div class="header">
    <div class="container">
        <div class="navbar">
            <div class="logo">
                <img src="../../../resources/shopCreated/images/logo.png" alt="" width="125px">
            </div>
            <nav>
                <ul id="MenuItems">
                    <li><a href="#">Home</a></li>
                    <li><a href="#">Products</a></li>
                    <li><a href="#">About</a></li>
                    <li><a href="#">Contact</a></li>
                    <li><a href="#">Account</a></li>
                </ul>
            </nav>
            <a href="/mainPage/itemCart"><img src="../../../resources/shopCreated/images/cart.png" width="30px" height="30px"></a>
            <img src="../../../resources/shopCreated/images/menu.png" class="menu-icon"
                 onclick="javascript:menutoggle()">
        </div>

        <div class="row-2">
            <div class="searchArea">
                <select name="itemCateB" id="itemCateB">
                    <option value="" selected>전체</option>
                    <option value="가전제품">가전제품</option>
                    <option value="주방용품">주방용품</option>
                    <option value="남녀공용">남녀공용</option>
                    <option value="스포츠">스포츠</option>
                    <option value="자전거">자전거</option>
                </select>
                <input id="searchWrite" type="text">
                <i class="fas fa-search" onclick="doSearch()"></i>
            </div>
            <div class="wrapper_banner">
                <div class="banner-container">
                    <div class="slide-image">
                        <img src="../../../resources/shopCreated/images/bigBanner1.jpg">
                    </div>
                    <div class="slide-image">
                        <img src="../../../resources/shopCreated/images/bigBanner2.jpg">
                    </div>
                    <div class="slide-image">
                        <img src="../../../resources/shopCreated/images/bigBanner3.jpg">
                    </div>
                    <div class="slide-image">
                        <img src="../../../resources/shopCreated/images/bigBanner2.jpg">
                    </div>
                    <div class="slide-image">
                        <img src="../../../resources/shopCreated/images/bigBanner1.jpg">
                    </div>
                    <div class="slide-image">
                        <img src="../../../resources/shopCreated/images/bigBanner2.jpg">
                    </div>
                </div>

                <div class="slider-btn">
                    <span class="prev position-top"><i class="fas fa-chevron-left"></i></span>
                    <span class="next position-top right-0"><i class="fas fa-chevron-right"></i></span>
                </div>
            </div>
            <div class="navigation-dots">
                <!-- <div class="single-dot active"></div>
                <div class="single-dot"></div>
                <div class="single-dot"></div> -->
            </div>
        </div>
    </div>
</div>

<!-- -------- featured categories --------- -->
<div class="categories">
    <div class="small-container">
        <div class="row">
            <div class="col-3">
                <img src="../../../resources/shopCreated/images/category-1.jpg">
            </div>
            <div class="col-3">
                <img src="../../../resources/shopCreated/images/category-2.jpg">
            </div>
            <div class="col-3">
                <img src="../../../resources/shopCreated/images/category-3.jpg">
            </div>
        </div>
    </div>
</div>

<!-- -- featured products -- -->
<div class="small-container">
    <h2 class="title">Feature Products</h2>
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

    <h2 class="title">Latest Products</h2>
    <div class="row">
        <div class="col-4">
            <img src="../../../resources/shopCreated/images/product-5.jpg">
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
            <img src="../../../resources/shopCreated/images/product-6.jpg">
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
            <img src="../../../resources/shopCreated/images/product-7.jpg">
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
            <img src="../../../resources/shopCreated/images/product-8.jpg">
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
        <div class="col-4">
            <img src="../../../resources/shopCreated/images/product-9.jpg">
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
            <img src="../../../resources/shopCreated/images/product-10.jpg">
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
            <img src="../../../resources/shopCreated/images/product-11.jpg">
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
            <img src="../../../resources/shopCreated/images/product-12.jpg">
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

<!-- ------ offer ------ -->
<div class="offer">
    <div class="small-container">
        <div class="row">
            <div class="col-2">
                <img src="../../../resources/shopCreated/images/exclusive.png" class="offer-img">
            </div>
            <div class="col-2">
                <p>Exclusively Available on ResStore</p>
                <h1>Samrt Band 4</h1>
                <small>this is the perfectto and amzino producto haha yeah excactly quite great i like this website
                    amazing yeah whellcome hahahaha hohohohohoho</small>

                <a href="" class="btn">Buy Now &#8594;</a>
            </div>
        </div>
    </div>
</div>

<!-- ------- testimomial -------- -->

<div class="testimonial">
    <div class="small-container">
        <div class="row">
            <div class="col-3">
                <i class="fa fa-quote-left"></i>
                <p>"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
                    incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
                    exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                <div class="rating">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="far fa-star"></i>
                    <i class="far fa-star"></i>
                </div>
                <img src="../../../resources/shopCreated/images/user-1.png" alt="">
                <h3>Sean Parker</h3>
            </div>

            <div class="col-3">
                <i class="fa fa-quote-left"></i>
                <p>"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
                    incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
                    exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                <div class="rating">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="far fa-star"></i>
                    <i class="far fa-star"></i>
                </div>
                <img src="../../../resources/shopCreated/images/user-2.png" alt="">
                <h3>Miker Smith</h3>
            </div>

            <div class="col-3">
                <i class="fa fa-quote-left"></i>
                <p>"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
                    incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
                    exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                <div class="rating">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="far fa-star"></i>
                    <i class="far fa-star"></i>
                </div>
                <img src="../../../resources/shopCreated/images/user-3.png" alt="">
                <h3>Mabel Joe</h3>
            </div>
        </div>
    </div>
</div>

<!---------------- brands ----------------->

<div class="brands">
    <div class="small-container">
        <div class="row">
            <div class="col-5">
                <img src="../../../resources/shopCreated/images/logo-godrej.png" alt="">
            </div>
            <div class="col-5">
                <img src="../../../resources/shopCreated/images/logo-oppo.png" alt="">
            </div>
            <div class="col-5">
                <img src="../../../resources/shopCreated/images/logo-coca-cola.png" alt="">
            </div>
            <div class="col-5">
                <img src="../../../resources/shopCreated/images/logo-paypal.png" alt="">
            </div>
            <div class="col-5">
                <img src="../../../resources/shopCreated/images/logo-philips.png" alt="">
            </div>
        </div>
    </div>
</div>

<%@include file="../includes2/footer.jsp" %>
<script>
    const slideImage = document.querySelectorAll(".slide-image");
    const slidesContainer = document.querySelector(".banner-container");

    const prevBtn = document.querySelector(".prev");
    const nextBtn = document.querySelector(".next");
    const navigationDots = document.querySelector(".navigation-dots");

    let numberOfImages = slideImage.length;

    let currentSlide = 0;


    // Set up the slider
    function init() {

        /*
        slideImage[0] = 0
        slideImage[1] = 100%
        slideImage[2] = 200%
        */
        slideImage.forEach((img, i) => {
            img.style.left = i * 100 + "%";
        });

        slideImage[0].classList.add("active")

        createNavigationDots()
    }

    init();

    // Create navigation dots
    function createNavigationDots() {
        for(let i = 0; i < numberOfImages; i++) {
            const dot = document.createElement("div");
            dot.classList.add("single-dot");
            navigationDots.appendChild(dot);

            dot.addEventListener("click", () => {
                goToSlide(i);
            })

        }

        navigationDots.children[0].classList.add("active");
    }

    // Next Button
    nextBtn.addEventListener("click", () => {
        if(currentSlide >= numberOfImages - 1) {
            goToSlide(0);
            return
        }
        currentSlide++;
        goToSlide(currentSlide);
    });

    // Prev Button
    prevBtn.addEventListener("click", () => {
        if(currentSlide <= 0) {
            goToSlide(numberOfImages - 1);
            return
        }
        currentSlide--;
        goToSlide(currentSlide);
    });

    // Got To Slide
    function goToSlide(slideNumber) {
        let slideWidth = slideImage[0].clientWidth;
        slidesContainer.style.transform = "translateX(-" + slideWidth * slideNumber  + "px)";

        currentSlide = slideNumber;

        setActiveClass();
    }

    // Set Active Class
    function setActiveClass() {

        // Set active class for slide Image
        let currentActive = document.querySelector(".slide-image.active");
        currentActive.classList.remove("active");
        slideImage[currentSlide].classList.add("active")

        // Set active class for navigation dots
        let currentDot = document.querySelector(".single-dot.active");
        currentDot.classList.remove("active");
        navigationDots.children[currentSlide].classList.add("active")
    }

    function doSearch() {
        let searchWrite = document.querySelector("#searchWrite").value

        if (searchWrite == "" || searchWrite.length == 0) {
            alert("검색어를 입력해 주십시오.")
            return
        } else {
            console.log(searchWrite)
        }
    }

</script>


</body>
</html>