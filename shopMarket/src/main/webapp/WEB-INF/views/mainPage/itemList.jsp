<%@include file="../includes2/header.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="small-container">
    <%------ Search Area ------%>
    <div class="row row-2">
        <h2>All Products</h2>
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
        <select>
            <option>Default Shorting</option>
            <option>short by price</option>
            <option>short by popularity</option>
            <option>short by rating</option>
            <option>short by sale</option>
        </select>
    </div>
    <%------ / Search Area ------%>


    <div class="list-container">
        <div class="left-col">
            <div class="sidebar">
                <h2>Select Filters</h2>
                <h3>Property Type</h3>
                <div class="filter">
                    <input type="checkbox">
                    <p>House</p> <span>(0)</span>
                </div>
                <div class="filter">
                    <input type="checkbox">
                    <p>Hostel</p> <span>(0)</span>
                </div>
                <div class="filter">
                    <input type="checkbox">
                    <p>Flat</p> <span>(0)</span>
                </div>
                <div class="filter">
                    <input type="checkbox">
                    <p>Villa</p> <span>(0)</span>
                </div>
                <div class="filter">
                    <input type="checkbox">
                    <p>Guest Suit</p> <span>(0)</span>
                </div>

                <h3>Amenities</h3>
                <div class="filter">
                    <input type="checkbox">
                    <p>Air Conditioning</p> <span>(0)</span>
                </div>
                <div class="filter">
                    <input type="checkbox">
                    <p>Wifi</p> <span>(0)</span>
                </div>
                <div class="filter">
                    <input type="checkbox">
                    <p>Gym</p> <span>(0)</span>
                </div>
                <div class="filter">
                    <input type="checkbox">
                    <p>Pool</p> <span>(0)</span>
                </div>
                <div class="filter">
                    <input type="checkbox">
                    <p>Kitchen</p> <span>(0)</span>
                </div>

                <div class="sidebar-link">
                    <a href="#">View More</a>
                </div>
                <h3>Amenities</h3>
                <div class="filter">
                    <input type="checkbox">
                    <p>Air Conditioning</p> <span>(0)</span>
                </div>
                <div class="filter">
                    <input type="checkbox">
                    <p>Wifi</p> <span>(0)</span>
                </div>
                <div class="filter">
                    <input type="checkbox">
                    <p>Gym</p> <span>(0)</span>
                </div>
                <div class="filter">
                    <input type="checkbox">
                    <p>Pool</p> <span>(0)</span>
                </div>
                <div class="filter">
                    <input type="checkbox">
                    <p>Kitchen</p> <span>(0)</span>
                </div>
                <h3>Amenities</h3>
                <div class="filter">
                    <input type="checkbox">
                    <p>Air Conditioning</p> <span>(0)</span>
                </div>
                <div class="filter">
                    <input type="checkbox">
                    <p>Wifi</p> <span>(0)</span>
                </div>
                <div class="filter">
                    <input type="checkbox">
                    <p>Gym</p> <span>(0)</span>
                </div>
                <div class="filter">
                    <input type="checkbox">
                    <p>Pool</p> <span>(0)</span>
                </div>
                <div class="filter">
                    <input type="checkbox">
                    <p>Kitchen</p> <span>(0)</span>
                </div>

                <h3>Amenities</h3>
                <div class="filter">
                    <input type="checkbox">
                    <p>Air Conditioning</p> <span>(0)</span>
                </div>
                <div class="filter">
                    <input type="checkbox">
                    <p>Wifi</p> <span>(0)</span>
                </div>
                <div class="filter">
                    <input type="checkbox">
                    <p>Gym</p> <span>(0)</span>
                </div>
                <div class="filter">
                    <input type="checkbox">
                    <p>Pool</p> <span>(0)</span>
                </div>
                <div class="filter">
                    <input type="checkbox">
                    <p>Kitchen</p> <span>(0)</span>
                </div>

                <h3>Amenities</h3>
                <div class="filter">
                    <input type="checkbox">
                    <p>Air Conditioning</p> <span>(0)</span>
                </div>
                <div class="filter">
                    <input type="checkbox">
                    <p>Wifi</p> <span>(0)</span>
                </div>
                <div class="filter">
                    <input type="checkbox">
                    <p>Gym</p> <span>(0)</span>
                </div>
                <div class="filter">
                    <input type="checkbox">
                    <p>Pool</p> <span>(0)</span>
                </div>
                <div class="filter">
                    <input type="checkbox">
                    <p>Kitchen</p> <span>(0)</span>
                </div>


            </div>
        </div>
        <div class="right-col">
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
    </div>


</div>


<%@include file="../includes2/footer.jsp" %>

<script>
    function fncReadItem(itemName, itemNo) {
        console.log("itemNo = ", itemNo)
        let win;
        win = window.open("/mainPage/itemReadPage?itemNm=" + itemName + "&itemNo=" + itemNo);
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

    function doSearch() {
        let searchWrite = document.querySelector("#searchWrite").value

        if (searchWrite == "" || searchWrite.length == 0) {
            alert("검색어를 입력해 주십시오.")
            return
        } else {
            console.log(searchWrite)
        }
    }

    let itemCateB = document.querySelector("#itemCateB");

    setCategories(1)

    function setCategories(code_lvl) {
        let url = "/code/select"
        let data = {
            "code_lvl": code_lvl ,
        }

        fetch(url, {
            method: "post"
            , headers: {
                "Content-Type": "application/json"
            }
            , body: JSON.stringify(data)
        }).then((response) => response.json())
            .then((data) => {
                makeOptionTag(data)
            })
    }

    function makeOptionTag(data) {

        let str = ""

        str += "<option value=''>전체</option>"
        for (let i = 0; i < data.length; i++) {
            str += "<option value='" + data[i]["code_kor"] + "'>"+ data[i]["code_kor"] +"</option>"
        }

        if (data[0]["code_lvl"] == 1) {
            itemCateB.innerHTML = str
        }

    }

</script>


</body>
</html>