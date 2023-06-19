

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.sql.*;
import com.connection.DatabaseConnection;

@WebServlet("/DeleteReview")
public class DeleteReview extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //Getting all the data from the user/cutomer
        String review = request.getParameter("review");
        String str = "No review yet";
        HttpSession session = request.getSession();
        try {
            //Querying to database
            int deleteReview = 0;
            ResultSet rs = DatabaseConnection.getResultFromSqlQuery("select * from tblorders where id='" + request.getParameter("orderId") + "'");
           while (rs.next()) {
            //Update Query for updating product review
            String r =rs.getString(19);
           }
           deleteReview = DatabaseConnection.insertUpdateFromSqlQuery("update tblorders set review='" + str + "' where id='" + request.getParameter("orderId") + "'");
            //If review is sucessfully updated
            if (deleteReview > 0) {
                //Sending response back to the user/customer.
                response.sendRedirect("review.jsp");
                //If cart is not updated
            } else {
                 //Sending response back to the user/customer.
                response.sendRedirect("review.jsp");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
 }