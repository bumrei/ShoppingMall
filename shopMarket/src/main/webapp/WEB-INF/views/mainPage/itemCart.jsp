<%@include file="../includes2/header.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!-- cart item details -->

<div class="small-container cart-page ">
    <table>
        <thead>
        <tr>
            <th>Product</th>
            <th>Quantity</th>
            <th>Price</th>
        </tr>
        </thead>
        <tbody class="cartTableContent">

        </tbody>


    </table>

    <div class="total-price">

        <table>
            <tbody class="totalP">
            <tr>
                <td>Subtotal</td>
                <td>$257.00</td>
            </tr>
            <tr>
                <td>Tax</td>
                <td>$3.00</td>
            </tr>
            <tr>
                <td>Total</td>
                <td>$260.00</td>
            </tr>
            </tbody>
        </table>

    </div>
    <a href="" class="btn btnToPurchase">바로 구매</a>
</div>


<%@include file="../includes2/footer.jsp" %>
<script>
    let userId = "member1"
    let url = "/cart/list/" + userId

    doFetchGet()

    function doFetchGet() {
        fetch(url)
            .then(res => res.json())
            .then(data => {
                addToTr(data)
            })
    }

    function addToTr(data) {
        console.log(data)
        console.log(data.length)
        let targetTr = document.querySelector(".cartTableContent")
        let totalP = document.querySelector(".totalP")

        if (data.length > 0) {

            let str = ""
            let totalPrice = 0;



            for (let i = 0; i < data.length; i++) {

                const tr = document.createElement("tr");
                let td = document.createElement("td");
                const input = document.createElement("input")
                const div = document.createElement("div");
                div.classList.add("cart-info");
                const img = document.createElement("img");
                img.src = "/viewFile?file=" + data[i].filesCart[0].fileLink;
                div.appendChild(img);
                td.appendChild(div);
                tr.appendChild(td);

                td = document.createElement()


                totalPrice += (data[i].quantity * data[i].price)
                str += "<tr>"
                str += "<td>"
                str += "<div class='cart-info'>"
                str += "<img src='/viewFile?file=" + data[i].filesCart[0].fileLink + "'>"
                str += "<div>"
                str += "<p>" + data[i].itemNm + "</p>"
                str += "<small>Price: $" + data[i].price + "</small>"
                str += "<br>"
                str += "<a href='javascript:removeThis("+ data[i].cartNo +")'>Remove</a>"
                str += "</div>"
                str += "</div>"
                str += "</td>"
                str += "<td><input type='number' value='" + data[i].quantity + "' min='1'></td>"
                str += "<td>" + (data[i].quantity * data[i].price) + "</td>"
                str += "</tr>"
            }

            targetTr.innerHTML = str

            let tax = totalPrice * 0.1
            let strr = ""

             strr += "<tr>"
             strr += "<td>Subtotal</td>"
             strr += "<td>$"+ totalPrice +"</td>"
             strr += "</tr>"
             strr += "<tr>"
             strr += "<td>Tax</td>"
             strr += "<td>$"+ tax +"</td>"
             strr += "</tr>"
             strr += "<tr>"
             strr += "<td>Total</td>"
             strr += "<td>$"+ (totalPrice + tax) +"</td>"
             strr += "</tr>"
            totalP.innerHTML = strr
        } else {
            let str = ""
            str += "<tr >"
            str += "<br>"
            str += "<br>"
            str += "<h3 style='margin-left: 20%'>장바구니가 비어있습니다.</h3>"
            str += "<br>"
            str += "<br>"
            str += "</tr>"
            targetTr.innerHTML = str

            let strr = ""
            strr += "<tr>"
            strr += "<td>Subtotal</td>"
            strr += "<td>$ 0</td>"
            strr += "</tr>"
            strr += "<tr>"
            strr += "<td>Tax</td>"
            strr += "<td>$ 0</td>"
            strr += "</tr>"
            strr += "<tr>"
            strr += "<td>Total</td>"
            strr += "<td>$ 0</td>"
            strr += "</tr>"
            totalP.innerHTML = strr
        }
    }

    function removeThis(num) {
        console.log("Cart Number = ", num)
        // 저 num 을 사용해 tbl_cart 에서 delete 시켜 버리자.

        // delete 후에 doFetchGet() 를 호출해주면 싹 사라질 것이다.
    }
</script>


</body>
</html>