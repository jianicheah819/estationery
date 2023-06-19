

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.sql.*;
import com.connection.DatabaseConnection;

@WebServlet("/AddReview")
public class AddReview extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //Getting all the data from the user/cutomer
        String review = request.getParameter("review");
        HttpSession session = request.getSession();
        
        try {
            //Querying to database
            ResultSet rs = DatabaseConnection.getResultFromSqlQuery("select * from tblorders where id='" + request.getParameter("orderId") + "'");
            while (rs.next()) {
                //Gettinh data
                String str =rs.getString(19);
            }
            
            //Update Query for updating product review
            int updateReview = DatabaseConnection.insertUpdateFromSqlQuery("update tblorders set review='" + review + "' where id='" + request.getParameter("orderId") + "'");
            //If cart is sucessfully updated
            if (updateReview > 0) {
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