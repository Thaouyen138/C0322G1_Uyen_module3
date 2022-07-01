package controller;

import model.User;
import service.IUserService;
import service.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "UserServlet",urlPatterns = "/user")
public class UserServlet extends HttpServlet {
    IUserService iUserService=new UserServiceImpl();
    List<User> userList=new ArrayList<>();
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
                edit(request,response);
                break;
            case "search":
                break;
            default:
                showListUser(request, response);
                break;
        }
    }

    private void edit(HttpServletRequest request, HttpServletResponse response) {
        int id=Integer.parseInt(request.getParameter("id"));
        String name=request.getParameter("name");
        String email=request.getParameter("email");
        String country=request.getParameter("country");
        User user=new User(id,name,email,country);
        iUserService.edit(user);
        request.setAttribute("msg", "Add new successful!");
        //findAll()
        userList = iUserService.findAll();
        request.setAttribute("userLists",userList);
        try {
            request.getRequestDispatcher("/view/list.jsp").forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();

    }
    }

    private void addNew(HttpServletRequest request, HttpServletResponse response) {
        String name=request.getParameter("name");
        String email=request.getParameter("email");
        String country=request.getParameter("country");
        User user=new User(name,email,country);
        iUserService.create(user);
        request.setAttribute("msg", "Add new successful!");
        //findAll()
        userList = iUserService.findAll();
        request.setAttribute("userLists",userList);
        try {
            request.getRequestDispatcher("/view/list.jsp").forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                showFromCreate(request, response);
                break;
            case "edit":
                showFormEdit(request,response);
                break;
            case "delete":
                deleteById(request,response);
                break;
            case "search":
                search(request,response);
                break;


            default:
                showListUser(request, response);
                break;
    }
}

    private void showFormEdit(HttpServletRequest request, HttpServletResponse response) {
        Integer id= Integer.valueOf(request.getParameter("id"));
        User user=this.iUserService.findById(id);
        request.setAttribute("users", user);
        try {
            request.getRequestDispatcher("view/edit.jsp").forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void search(HttpServletRequest request, HttpServletResponse response) {
        String nameSearch=request.getParameter("nameSearch");

        String countrySearch=request.getParameter("countrySearch");
        userList = iUserService.findByName(nameSearch, countrySearch);
        request.setAttribute("userLists",userList);
        try {
            request.getRequestDispatcher("/view/list.jsp").forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void deleteById(HttpServletRequest request, HttpServletResponse response) {
        int id=Integer.parseInt(request.getParameter("id"));
        iUserService.delete(id);
        userList = iUserService.findAll();
        request.setAttribute("msg", "Delete successful!");
        request.setAttribute("userLists",userList);
        try {
            request.getRequestDispatcher("/view/list.jsp").forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }



    }




    private void showFromCreate(HttpServletRequest request, HttpServletResponse response) {

        try {
            request.getRequestDispatcher("/view/create.jsp").forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    private void showListUser(HttpServletRequest request, HttpServletResponse response) {
        userList = iUserService.findAll();
        request.setAttribute("userLists",userList);
        try {
            request.getRequestDispatcher("/view/list.jsp").forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    }
