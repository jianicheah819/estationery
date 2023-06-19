<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!-- Defining Footer -->

<div class="coupons">
    <div class="container">
        <div class="coupons-grids text-center">
            <div class="col-md-3 coupons-gd">
                <h3>Simple Steps to buy online</h3>
            </div>
            <div class="col-md-3 coupons-gd">
                <span class="glyphicon glyphicon-user" aria-hidden="true"></span>
                <h4 style="color:#00FF00">LOGIN TO YOUR ACCOUNT</h4>
            </div>
            <div class="col-md-3 coupons-gd">
                <span class="glyphicon glyphicon-ok" aria-hidden="true"></span>
                <h4 style="color:#00FF00">SELECT YOUR ITEM</h4>	
            </div>
            <div class="col-md-3 coupons-gd">
                <span class="glyphicon glyphicon-credit-card" aria-hidden="true"></span>
                <h4 style="color:#00FF00">MAKE PAYMENT</h4>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
<section class="footer-section">
    <div class="row">
        <div class="col">
            <div class="sign-grds">
                <div class="col-md-3 sign-gd-two">
                    <h4 style="text-align: left;">Contact Us:</h4>
                    <ul style="text-align: left;">
                        <li><i class="glyphicon glyphicon-map-marker" aria-hidden="true"></i>Address : Ampang, <span>Selangor.</span></li>
                        <li><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i>Email : <a href="mailto:sribintang@gmail.com">sribintang@gmail.com</a></li>
                        <li><i class="glyphicon glyphicon-earphone" aria-hidden="true"></i>Phone : +60174523102</li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="col">
            <br/><br/><br/>
            <center>
                <div class="container">
                    <h4>
                        &copy;  <span id="year"></span> Sri Bintang Supplies Sdn Bhd |<!--<a href="https://data-flair.training" target="_blank"> Designed by : DataFlair</a> -->
                    </h4>
                </div>
            </center>
        </div>
    </div>
</section>
<script>
    document.getElementById("year").innerHTML = new Date().getFullYear();
</script>