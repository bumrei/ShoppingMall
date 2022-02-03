<%@include file="../includes/header.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<style>
    #itemMainSearch{
        width: 60%;
    }

    #goSearch{
        background-color: #f5f57d;
    }
</style>

<!-- Masthead-->
<header class="masthead">
    <div class="container">
        <div class="masthead-subheading">Enjoy your Shopping!!</div>
        <form action="/mainPage/itemList" method="get">
            <input type="text" id="itemMainSearch" name="shopSearch" placeholder="찾고 싶은 물건을 검색해 보세요.">
            <button type="submit" id="goSearch">검색</button>
        </form>
    </div>
</header>

<!-- 설날을 위한 메인 이벤트!!-->
<section class="page-section bg-light" id="portfolio">
    <div class="container">
        <div class="text-center">
            <h2 class="section-heading text-uppercase">설날을 위한 메인 이벤트</h2>
            <h3 class="section-subheading text-muted">Lorem ipsum dolor sit amet consectetur.</h3>
        </div>
        <div class="row">
            <div class="col-lg-4 col-sm-6 mb-4">
                <div class="card h-100">
                    <a href="javascript:fncReadItem('커피머신')">
                        <!-- Product image-->
                        <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
                        <!-- Product details-->
                        <div class="card-body p-4">
                            <div class="text-center">
                                <!-- Product name-->
                                <h5 class="fw-bolder" style="color: black">Fancy Product</h5>
                                <!-- Product price-->
                                <p style="color: black">$40.00 - $80.00</p>
                            </div>
                        </div>
                        <!-- Product actions-->
                        <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                            <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">View options</a></div>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-lg-4 col-sm-6 mb-4">
                <div class="card h-100">
                    <a href="javascript:fncReadItem('커피머신')">
                        <!-- Product image-->
                        <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
                        <!-- Product details-->
                        <div class="card-body p-4">
                            <div class="text-center">
                                <!-- Product name-->
                                <h5 class="fw-bolder" style="color: black">Fancy Product</h5>
                                <!-- Product price-->
                                <p style="color: black">$40.00 - $80.00</p>
                            </div>
                        </div>
                        <!-- Product actions-->
                        <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                            <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">View options</a></div>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-lg-4 col-sm-6 mb-4">
                <div class="card h-100">
                    <a href="javascript:fncReadItem('커피머신')">
                        <!-- Product image-->
                        <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
                        <!-- Product details-->
                        <div class="card-body p-4">
                            <div class="text-center">
                                <!-- Product name-->
                                <h5 class="fw-bolder" style="color: black">Fancy Product</h5>
                                <!-- Product price-->
                                <p style="color: black">$40.00 - $80.00</p>
                            </div>
                        </div>
                        <!-- Product actions-->
                        <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                            <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">View options</a></div>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- 회원님을 위한 추천 리스트-->
<section class="page-section bg-light" id="portfolio">
    <div class="container">
        <div class="text-center">
            <h2 class="section-heading text-uppercase">회원님을 위한 추천!!</h2>
            <h3 class="section-subheading text-muted">Lorem ipsum dolor sit amet consectetur.</h3>
        </div>
        <div class="row">
            <div class="col-lg-4 col-sm-6 mb-4">
                <!-- Portfolio item 1-->
                <div class="portfolio-item">
                    <a class="portfolio-link"  href="javascript:fncReadItem('모니터받침대')">
                        <div class="portfolio-hover">
                            <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                        </div>
                        <img class="img-fluid" src="../../../resources/assets/img/portfolio/1.jpg" alt="..." />
                    </a>
                    <div class="portfolio-caption">
                        <div class="portfolio-caption-heading">모니터받침대</div>
                        <div class="portfolio-caption-subheading text-muted">Illustration</div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-sm-6 mb-4">
                <!-- Portfolio item 2-->
                <div class="portfolio-item">
                    <a class="portfolio-link"  href="javascript:fncReadItem('키보드')">
                        <div class="portfolio-hover">
                            <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                        </div>
                        <img class="img-fluid" src="../../../resources/assets/img/portfolio/2.jpg" alt="..." />
                    </a>
                    <div class="portfolio-caption">
                        <div class="portfolio-caption-heading">키보드</div>
                        <div class="portfolio-caption-subheading text-muted">Graphic Design</div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-sm-6 mb-4">
                <!-- Portfolio item 3-->
                <div class="portfolio-item">
                    <a class="portfolio-link"  href="javascript:fncReadItem('로드바이크')">
                        <div class="portfolio-hover">
                            <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                        </div>
                        <img class="img-fluid" src="../../../resources/assets/img/portfolio/3.jpg" alt="..." />
                    </a>
                    <div class="portfolio-caption">
                        <div class="portfolio-caption-heading">로드바이크</div>
                        <div class="portfolio-caption-subheading text-muted">Identity</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- 인기 Top 10 제품 소개 리스트 -->
<section class="page-section bg-light" id="portfolio">
    <div class="container">
        <div class="text-center">
            <h2 class="section-heading text-uppercase">인기 Top 10 제품!!</h2>
            <h3 class="section-subheading text-muted">Lorem ipsum dolor sit amet consectetur.</h3>
        </div>
        <div class="row">
            <div class="col-lg-4 col-sm-6 mb-4">
                <!-- Portfolio item 1-->
                <div class="portfolio-item">
                    <a class="portfolio-link"  href="javascript:fncReadItem('핸드폰거치대')">
                        <div class="portfolio-hover">
                            <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                        </div>
                        <img class="img-fluid" src="../../../resources/assets/img/portfolio/1.jpg" alt="..." />
                    </a>
                    <div class="portfolio-caption">
                        <div class="portfolio-caption-heading">핸드폰거치대</div>
                        <div class="portfolio-caption-subheading text-muted">Illustration</div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-sm-6 mb-4">
                <!-- Portfolio item 2-->
                <div class="portfolio-item">
                    <a class="portfolio-link"  href="javascript:fncReadItem('스노우보드')">
                        <div class="portfolio-hover">
                            <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                        </div>
                        <img class="img-fluid" src="../../../resources/assets/img/portfolio/2.jpg" alt="..." />
                    </a>
                    <div class="portfolio-caption">
                        <div class="portfolio-caption-heading">스노우보드</div>
                        <div class="portfolio-caption-subheading text-muted">Graphic Design</div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-sm-6 mb-4">
                <!-- Portfolio item 3-->
                <div class="portfolio-item">
                    <a class="portfolio-link"  href="javascript:fncReadItem('클라이밍수강권')">
                        <div class="portfolio-hover">
                            <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                        </div>
                        <img class="img-fluid" src="../../../resources/assets/img/portfolio/3.jpg" alt="..." />
                    </a>
                    <div class="portfolio-caption">
                        <div class="portfolio-caption-heading">클라이밍수강권</div>
                        <div class="portfolio-caption-subheading text-muted">Identity</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>


<%@include file="../includes/footer.jsp"%>

<script>

    // 아래 item 리스트중 물건을 하나 클릭하면 모달이 아닌 새탭으로 이동하게 만들었다.
    function fncReadItem(item) {
        let win;
        win = window.open("/mainPage/itemReadPage?item=" + item)
        win.onbeforeunload = function () {
            console.log("윈도우 꺼짐")
        }
    }
</script>


</body>
</html>
