package lv.ctco.javaschool;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by roman.pipchenko on 3/8/2017.
 */
@WebServlet(name = "HelloServlet", urlPatterns = "/hello")
public class Servlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user = new User();
        user.setName(request.getParameter("userName"));
        user.setAge(Integer.valueOf(request.getParameter("age")));
        user.setSurname(request.getParameter("surname"));

        String userName = request.getParameter("userName");

        request.getSession().setAttribute("ourUser", user);
        request.getSession().setAttribute("userName", userName);
        response.sendRedirect("/hello.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.getWriter().print("Hello, world!");
    }
}
