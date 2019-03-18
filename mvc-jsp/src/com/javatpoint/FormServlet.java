package com.javatpoint;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class FormServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out=response.getWriter();

        String firstname=request.getParameter("firstname");
        String lastname=request.getParameter("lastname");
        String date=request.getParameter("date");
        String sex=request.getParameter("sex");
        String password=request.getParameter("password");

        LoginBean bean=new LoginBean();
        bean.setFirstName(firstname);
        bean.setLastName(lastname);
        bean.setDate(date);
        bean.setSex(sex);
        bean.setPassword(password);
        request.setAttribute("bean",bean);

        boolean status=bean.validate();

        if(status){
            RequestDispatcher rd=request.getRequestDispatcher("login-success.jsp");
            rd.forward(request, response);
        }
        else{
            RequestDispatcher rd=request.getRequestDispatcher("login-error.jsp");
            rd.forward(request, response);
        }


        //read cookie
        public class ReadCookie {
            Cookie c=new Cookie("userName", "toto");
        }
        protected void doGet(HttpServletRequest request, HttpServletResponse response)throwsServletException,IOException{
            response.setContentType("text/html");
            PrintWriter out = response.getWriter();
// Create Cookie
            Cookie c = new Cookie("serverAdress", request.getRemoteAddr()); c.setMaxAge(60 * 60 * 24);
// Retrieve Cookie
            Cookie[] cookies = request.getCookies(); if (cookies != null) {
                for (Cookie r_c : cookies) {
                    out.print(r_c.getName() + " " + r_c.getValue());
                } }
            response.addCookie(c);
        }

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        doPost(req, resp);
    }
}
