package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class IndexServlet extends HttpServlet {

	public void doPost(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		if (session.getAttribute("user") == null) {
			try {
				response.sendRedirect("user");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} else {

			String type = request.getParameter("type");
			if (type == null) {
				index(request, response);
			}
		}
	}

	public void index(HttpServletRequest request, HttpServletResponse response) {
		try {
			request.getRequestDispatcher("WEB-INF/index/index.jsp").forward(request, response);
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	public void doGet(HttpServletRequest request, HttpServletResponse response) {
		doPost(request, response);
	}
}
