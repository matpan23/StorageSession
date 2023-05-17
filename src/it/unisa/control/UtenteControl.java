package it.unisa.control;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import it.unisa.model.Cart;
import it.unisa.model.UtenteBean;
import it.unisa.model.UtenteDAOImplementazione;

/**
 * Servlet implementation class CartControl
 */
@WebServlet("/login")
public class UtenteControl extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static UtenteDAOImplementazione userDao = new UtenteDAOImplementazione();
       
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email =(String) request.getParameter("username");
		String psw =(String) request.getParameter("password");
		UtenteBean user = null;
		try {
			
			user = userDao.findByCred(email, psw);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		if(user!=null) {
			Cart cart = (Cart) request.getSession().getAttribute("cart");
			HttpSession session=request.getSession(false);
			if(session!=null)
				session.invalidate();
			HttpSession cSession=request.getSession();
			cSession.setAttribute("cart", cart);
			cSession.setAttribute("utente",email);
			cSession.setAttribute("password", psw);
			response.sendRedirect("ProductView.jsp");
		}
		else
			response.sendRedirect("LoginView.jsp");
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

}