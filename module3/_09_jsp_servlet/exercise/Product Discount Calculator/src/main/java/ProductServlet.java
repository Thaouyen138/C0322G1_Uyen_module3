import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ProductDiscountCalculatorServlet", urlPatterns = "/result")
public class ProductServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String description = request.getParameter("description");
        double price = 0;
        int percent = 0;
        try {
            price = Double.parseDouble(request.getParameter("price"));
            percent = Integer.parseInt(request.getParameter("percent"));
        } catch (NumberFormatException numberFormatException) {
            System.out.println("wrong format, enter number!");
        }
        double discountAmount = price * percent * 0.01;
        double discountPrice = price - discountAmount;
        request.setAttribute("description", description);
        request.setAttribute("price", price);
        request.setAttribute("percent", percent);
        request.setAttribute("discountAmount", discountAmount);
        request.setAttribute("discountPrice", discountPrice);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("result.jsp");
        requestDispatcher.forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("result.jsp");
        requestDispatcher.forward(request, response);
    }
}
