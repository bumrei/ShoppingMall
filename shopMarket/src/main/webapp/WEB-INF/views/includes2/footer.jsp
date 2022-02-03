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