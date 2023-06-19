<%-- 
    Document   : review
    Created on : May 25, 2022, 5:24:00 PM
    Author     : HP
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="com.connection.*"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <title>E-STATIONERY</title>
        <!-- Importing all ui libs -->
        <link href="assets/css/font-awesome.css" rel="stylesheet" />
        <link href="assets/css/style.css" rel="stylesheet" />
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
        <script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
        <script src="js/simpleCart.min.js"></script>
        <script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
        <link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,900,900italic,700italic' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
        <script src="js/jquery.easing.min.js"></script>
        <script src="jquery-3.2.1.min.js"></script>
        <script src='../../../../../../ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js'></script>
        <script src="../../../../../../m.servedby-buysellads.com/monetization.js" type="text/javascript"></script>
    </head>
    <body>
        <%
            //Checking whether customer in session or not
            if (session.getAttribute("name") != null && session.getAttribute("name") != "") {
        %>
    <body>
        <div class="ban-top">
            <div class="container">
                <div class="top_nav_left">
                    <nav class="navbar navbar-default">
                        <div class="container-fluid">
                            <div class="navbar-header">
                                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                                    <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
                                </button>
                            </div>
                            <jsp:include page="header.jsp"></jsp:include>
                            </div>
                        </nav>
                    </div>
                    <div class="top_nav_right">
                        <div class="cart box_1">
                            <a href="checkout.jsp"> 
                            <%
                                //Getting count of products of cart
                                ResultSet resultCount = DatabaseConnection.getResultFromSqlQuery("select count(*) from tblcart where customer_id='" + session.getAttribute("id") + "'");
                                resultCount.next();
                                int count = resultCount.getInt(1);
                            %>
                            <h3>
                                <div class="total">
                                    <i class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></i>
                                    (
                                    <%=count%>
                                    items )
                                </div>
                            </h3>
                        </a>
                        <p>
                            <a href="javascript:;" class="simpleCart_empty">My Cart</a>
                        </p>
                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
        <div class="page-head">
            <div class="container">
                <h3>My Review</h3>
            </div>
        </div>
              <div class="checkout">
            <div class="container" style="width:100%">
               <!-- <h3>My Review</h3> -->
                       <div class="table-responsive">
                    <table class="table table-bordered" >
                        <thead>
                            <tr>
                                <th>SR.No</th>
                                <th>Order No</th>
                                <th>Product</th>
                                <th>Quantity</th>
                          
                                <th>Total Price(RM)</th>
                              
                                <th>Review</th>
                              
                            </tr>
                        </thead>
                        <%
                            int index = 0;
                            //Getting all products
                            ResultSet totalProduct = DatabaseConnection.getResultFromSqlQuery("select * from tblorders where customer_name='" + session.getAttribute("name") + "' ORDER BY payment_id DESC");
                            while (totalProduct.next()) {
                                index++;
                        %>
                        <tr class="rem1">
                            <td class="invert"><%=index%></td>
                            <td class="invert"><%=totalProduct.getInt(18)%></td>
                            <td class="invert"><img src=C:/Users/HP/Downloads/OnlineShoppingSystem/web/assets/img/<%=totalProduct.getString(9)%> style="width: 300px; height: 300px;"><br><%=totalProduct.getString(10)%></td>
                            <td class="invert"><%=totalProduct.getString(11)%></td>            
                            <td class="invert"><%=totalProduct.getString(14)%></td>
                            <td class="invert">
                                <div class="quantity">
                                    <div class="quantity-select">
                                        <form action="AddReview" method="post">
                                            <input type="hidden" value="<%=totalProduct.getInt(18)%>"name="orderId">
                                            <input type="text" value="<%=totalProduct.getString(19)%>" placeholder="Review" required="" style="min-height: 100px; width: 680px;" name="review">&nbsp;
                                            <br><input type="submit" class="btn btn-primary" value="Add" > </form>
                                            
                                            <form action="DeleteReview" method="post">
                                            <input type="hidden" value="<%=totalProduct.getInt(18)%>"name="orderId">
                                            <input type="hidden" value="<%=totalProduct.getString(19)%>" placeholder="Review" required="" style="min-height: 100px; width: 680px;" name="review">&nbsp;
                                            <br><input type="submit" class="btn btn-danger" onclick="return confirm('Are you sure you want to delete review?');" value="Delete" > </form>
                                        
                                    </div>
                                </div>
                            </td>
                   
                            <!--<td class="invert"><%=totalProduct.getString(19)%></td>
                            <td><a
                                                        href="add-review.jsp?orderId=<%=totalProduct.getInt(18)%>"
                                                        class="btn btn-primary">Add</a>|<a
                                                        href="delete-review.jsp?orderId=<%=totalProduct.getInt(18)%>"
                                                        class="btn btn-danger" onclick="return confirm('Are you sure Do you want to delete the review?');">Delete</a></td>
                        </tr> -->
                        <%
                            }
                        %>
                      <script>
                            $('.value-plus').on('click', function () {
                                var divUpd = $(this).parent().find('.value'), newVal = parseInt(divUpd.text(), 10) + 1;
                                divUpd.text(newVal);
                            });

                            $('.value-minus').on('click', function () {
                                var divUpd = $(this).parent().find('.value'), newVal = parseInt(divUpd.text(), 10) - 1;
                                if (newVal >= 1)
                                    divUpd.text(newVal);
                            });
                        </script>
                    </table>
                </div>
            </div>
        </div>
        <jsp:include page="footer.jsp"></jsp:include>
        <%
            } else {
                response.sendRedirect("index.jsp");
            }
        %>
    </body>
</html>