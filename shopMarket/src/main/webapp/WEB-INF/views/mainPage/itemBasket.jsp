<%@include file="../includes2/header.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!-- cart item details -->

<div class="small-container cart-page">
    <table>
        <tr>
            <th>Product</th>
            <th>Quantity</th>
            <th>Price</th>
        </tr>
        <tr>
            <td>
                <div class="cart-info">
                    <img src="../../../resources/shopCreated/images/buy-1.jpg">
                    <div>
                        <p>Reds Printed T-Shirt</p>
                        <small>Price: $50.00</small>
                        <br>
                        <a href="#">Remove</a>
                    </div>
                </div>
            </td>
            <td><input type="number" value="1" min="1"></td>
            <td>$50.00</td>
        </tr>
        <tr>
            <td>
                <div class="cart-info">
                    <img src="../../../resources/shopCreated/images/buy-2.jpg">
                    <div>
                        <p>Reds Printed T-Shirt</p>
                        <small>Price: $50.00</small>
                        <br>
                        <a href="#">Remove</a>
                    </div>
                </div>
            </td>
            <td><input type="number" value="1" min="1"></td>
            <td>$132.00</td>
        </tr>
        <tr>
            <td>
                <div class="cart-info">
                    <img src="../../../resources/shopCreated/images/buy-3.jpg">
                    <div>
                        <p>Reds Printed T-Shirt</p>
                        <small>Price: $50.00</small>
                        <br>
                        <a href="#">Remove</a>
                    </div>
                </div>
            </td>
            <td><input type="number" value="1" min="1"></td>
            <td>$75.00</td>
        </tr>
    </table>

    <div class="total-price">

        <table>
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
        </table>

    </div>
</div>


<%@include file="../includes2/footer.jsp" %>

</body>
</html>