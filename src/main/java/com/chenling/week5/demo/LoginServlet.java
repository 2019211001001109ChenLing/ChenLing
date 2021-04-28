package com.chenling.week5.demo;

import com.chenling.dao.UserDao;
import com.chenling.model.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Date;
@WebServlet(name = "LoginServlet", value = "/login")
public class LoginServlet extends HttpServlet {
    Connection con = null;
    @Override
    public void init() throws ServletException {//link sqlserver
        super.init();
//        String driver = getServletConfig().getServletContext().getInitParameter("driver");
//        String url = getServletConfig().getServletContext().getInitParameter("url");
//        String username = getServletConfig().getServletContext().getInitParameter("Username");
//        String password = getServletConfig().getServletContext().getInitParameter("Password");
//        try {
//            Class.forName(driver);
//            con = DriverManager.getConnection(url,username,password);
//            System.out.println("hell0");
//        } catch (ClassNotFoundException | SQLException e) {
//            System.out.println("error");
//            e.printStackTrace();
//        }
        con = (Connection) getServletContext().getAttribute("con");
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("WEB-INF/views/login.jsp").forward(request,response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        UserDao userDao = new UserDao();
        try {
            User u = userDao.findByUsernamePassword(con,username,password);
            if(u !=null){
                String remember = request.getParameter("RememberMe");
                if(remember != null && remember.equals("1")){
                    Cookie usernameCookie = new Cookie("cusername",u.getUsername());
                    Cookie passwordCookie = new Cookie("cpassword",u.getPassword());
                    Cookie rememberMeCookie = new Cookie("crememberMe",request.getParameter("RememberMe"));
                    usernameCookie.setMaxAge(10);
                    passwordCookie.setMaxAge(10);
                    rememberMeCookie.setMaxAge(10);
                    response.addCookie(usernameCookie);
                    response.addCookie(passwordCookie);
                    response.addCookie(rememberMeCookie);
                };

                HttpSession session = request.getSession();
                session.setMaxInactiveInterval(60*60*24);
                session.setAttribute("user",u);
                //request.setAttribute("user",u);
                request.getRequestDispatcher("WEB-INF/views/userInfo.jsp").forward(request,response);
            }else{
                request.setAttribute("message", "Username or Password Error!!!");
                request.getRequestDispatcher("WEB-INF/views/login.jsp").forward(request,response);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
/*
        String sql = "select * from  usertable where username = ? and password = ?";
        PreparedStatement st = null;
        PrintWriter writer = response.getWriter();
        try {
            st = con.prepareStatement(sql);
            st.setString(1, username);
            st.setString(2, password);
            ResultSet rs = st.executeQuery();
            if(rs.next()){
                //week5-HW
//                writer.println("successful!!!");
//                writer.println("Welcome," + username );
                //week6-HW
                request.setAttribute("id",rs.getInt("id"));
                request.setAttribute("username",rs.getString("username"));
                request.setAttribute("password",rs.getString("password"));
                request.setAttribute("email",rs.getString("email"));
                request.setAttribute("gender",rs.getString("gender"));
                request.setAttribute("birthdate",rs.getString("birthdate"));
                request.getRequestDispatcher("userInfo.jsp").forward(request,response);
            }else{
                //week5-HW
//                writer.println("Username or Password Error!");
                request.setAttribute("message", "Username or Password Error!");
                request.getRequestDispatcher("login.jsp").forward(request,response);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
*/

    }
}

