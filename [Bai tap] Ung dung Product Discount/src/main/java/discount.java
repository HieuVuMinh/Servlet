import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.Writer;

@WebServlet(name = "discount", value = "/discount")
public class discount extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String description = request.getParameter("description");
        float price = Float.parseFloat(request.getParameter("price"));
        float discount = Float.parseFloat(request.getParameter("discount"));
        float Discount_Amount = price * discount;

        PrintWriter writer = response.getWriter();

        writer.println("<html>");
        if (description.equals("")){
            writer.println("Please Enter Description!");
        } else if ("Máy tính".equals(description)){
            writer.println("Total price of computer: " + (Discount_Amount * 0.01) + " USD");
        } else if ("Điện thoại".equals(description)){
            writer.println("Total price mobile phone: " + (Discount_Amount * 0.05) + " USD");
        } else {
            writer.println("Wrong Description");
        }
        writer.println("</html>");

    }
}
