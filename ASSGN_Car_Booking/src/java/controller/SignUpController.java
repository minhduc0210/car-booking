/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dao.UserDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;
import util.EmailUtil;
import util.PasswordUtil;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import model.User;
import util.Validatation;

/**
 *
 * @author khoa2
 */
@WebServlet(name = "SignUpController", urlPatterns = {"/signup"})
public class SignUpController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet SignUpController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SignUpController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //Retrieve parameters
        String fullname = request.getParameter("fullname");
        String gender = request.getParameter("gender");
        String username = request.getParameter("newusername");
        String password = request.getParameter("newpassword");
        String repass = request.getParameter("repass");
        String email = request.getParameter("newemail");
        String dob = request.getParameter("dob");
        // Perform input validation
        Validatation validate = new Validatation();
        String errorMsg = validate.validateSignUpInput(username, password, repass, email);
        //Check if there are no errors when user inputs
        if (errorMsg.equals("")) {
            // Array list to store cookies
            ArrayList<Cookie> listCookie = new ArrayList<>();
            UserDAO userDAO = new UserDAO();
            //Get hashing password
            String hashedPassword = (new PasswordUtil()).hashPasswordMD5(password);
            userDAO.signUp(fullname, gender, username, hashedPassword, email, dob);
            // Get the user from the database
            User user = userDAO.getUserByUsername(username);
            // Store the user object in the session
            request.getSession().setAttribute("User", user);
            //Set time out of cookie
            setCookieTimeOut(listCookie, response, 0);
            response.sendRedirect("home");
        } else {
            request.setAttribute("errorMsg", errorMsg);
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }
    
    private void setCookieTimeOut(ArrayList<Cookie> listCookie, HttpServletResponse response, int timeExist) {
        for (Cookie cookie : listCookie) {
            cookie.setMaxAge(timeExist);
            response.addCookie(cookie);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
