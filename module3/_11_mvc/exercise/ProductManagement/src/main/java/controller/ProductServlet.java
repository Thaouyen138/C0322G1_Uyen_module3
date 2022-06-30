package controller;

import model.Product;
import service.IProductService;
import service.ProductServicesImpl;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ProductServlet", urlPatterns = "/product")
public class ProductServlet extends HttpServlet {
    IProductService iProductService=new ProductServicesImpl();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if(action == null){
            action = "";
        }
        switch (action){
            case "create":
                break;
            case "edit":
                break;
            case "delete":
                break;
            default:
                showListProduct(request,response);
                break;
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if(action == null){
            action = "";
        }
        switch (action){
            case "create":
                break;
            case "edit":
                break;
            case "delete":
                break;
            default:
                showListProduct(request,response);
                break;
        }
    }

    private void showListProduct(HttpServletRequest request, HttpServletResponse response) {
        List<Product> products=iProductService.findAll();
        request.setAttribute("product", products);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/view/product/list.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }
}
