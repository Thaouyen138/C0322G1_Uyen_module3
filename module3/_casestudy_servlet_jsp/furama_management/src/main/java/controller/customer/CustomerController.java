package controller.customer;

import model.customer.Customer;
import model.customer.CustomerType;
import service.customer.ICustomerService;
import service.customer.ICustomerTypeService;
import service.customer.impl.CustomerService;
import service.customer.impl.CustomerTypeService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "CustomerController", urlPatterns = "/customer")
public class CustomerController extends HttpServlet {
    ICustomerService iCustomerService = new CustomerService();
    ICustomerTypeService iCustomerTypeService = new CustomerTypeService();
    //delete dùng sendRedirect

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                addNew(request, response);
                break;
            case "edit":
                edit(request, response);
                break;
            case "search":
                search(request, response);
                break;
            default:
                showList(request, response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                showCreateForm(request, response);
                break;
            case "edit":
                showEditForm(request, response);
                break;
            case "delete":
                deleteById(request, response);
                break;
            case "search":
                search(request, response);
                break;
            default:
                showList(request, response);
        }
    }

    private void search(HttpServletRequest request, HttpServletResponse response) {
        String nameSearch = request.getParameter("name");
        int customerTypeId = Integer.parseInt(request.getParameter("customerTypeId"));
        List<Customer> customers = iCustomerService.findByField(nameSearch, customerTypeId);
        request.setAttribute("customers", customers);
        List<CustomerType> customerTypes = iCustomerTypeService.findAll();
        request.setAttribute("customerTypes", customerTypes);
        try {
            request.getRequestDispatcher("/view/customer/list.jsp").forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void edit(HttpServletRequest request, HttpServletResponse response) {
        String id = request.getParameter("id");
        int customerTypeId = Integer.parseInt(request.getParameter("customerTypeId"));
        String nameCustomer = request.getParameter("name");
        String dateOfBirth = request.getParameter("dateOfBirth");
        int gender = Integer.parseInt(request.getParameter("gender"));
        String idCard = request.getParameter("idCard");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        Customer customer = new Customer(id, customerTypeId, nameCustomer, dateOfBirth, gender, idCard, phone, email, address);
        iCustomerService.edit(customer);
        //-----------//
        request.setAttribute("msg", "Edit successful!");
        List<Customer> customerList = iCustomerService.findAll();
        List<CustomerType> customerTypeList = iCustomerTypeService.findAll();
        request.setAttribute("customerList", customerList);
        request.setAttribute("customerTypeList", customerTypeList);
        try {
            request.getRequestDispatcher("/view/customer/list.jsp").forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response) {
        String id = (request.getParameter("id"));
        Customer customer = this.iCustomerService.findById(id);
        request.setAttribute("customer", customer);
        List<CustomerType> customerTypeList = iCustomerTypeService.findAll();
        request.setAttribute("customerTypeList", customerTypeList);
        try {
            request.getRequestDispatcher("view/customer/edit.jsp").forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void addNew(HttpServletRequest request, HttpServletResponse response) {
        String id = request.getParameter("id");
        int customerTypeId = Integer.parseInt(request.getParameter("customerTypeId"));
        String nameCustomer = request.getParameter("name");
        String dateOfBirth = request.getParameter("dateOfBirth");
        int gender = Integer.parseInt(request.getParameter("gender"));
        String idCard = request.getParameter("idCard");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        Customer customer = new Customer(id, customerTypeId, nameCustomer, dateOfBirth, gender, idCard, phone, email, address);
        iCustomerService.create(customer);
        request.setAttribute("msg", "Add new successful!");
        List<Customer> customerList = iCustomerService.findAll();
        List<CustomerType> customerTypeList = iCustomerTypeService.findAll();
        request.setAttribute("customerList", customerList);
        request.setAttribute("customerTypeList", customerTypeList);
        try {
            request.getRequestDispatcher("/view/customer/list.jsp").forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    private void showCreateForm(HttpServletRequest request, HttpServletResponse response) {
        List<CustomerType> customerTypeList = iCustomerTypeService.findAll();
        request.setAttribute("customerTypeList", customerTypeList);
        try {
            request.getRequestDispatcher("view/customer/create.jsp").forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void deleteById(HttpServletRequest request, HttpServletResponse response) {
        String id = (request.getParameter("id"));
        iCustomerService.delete(id);
        List<Customer> customerList = iCustomerService.findAll();
        request.setAttribute("msg", "Delete successful!");
        request.setAttribute("customerList", customerList);
        List<CustomerType> typeUserList = iCustomerTypeService.findAll();
        request.setAttribute("typeUserList", typeUserList);
        try {
            response.sendRedirect("/customer");
//        /    request.getRequestDispatcher("/view/customer").forward(request, response);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showList(HttpServletRequest request, HttpServletResponse response) {
        List<Customer> customerList = iCustomerService.findAll();
        List<CustomerType> customerTypeList = iCustomerTypeService.findAll();
        request.setAttribute("customerList", customerList);
        request.setAttribute("customerTypeList", customerTypeList);
        try {
            request.getRequestDispatcher("/view/customer/list.jsp").forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}

