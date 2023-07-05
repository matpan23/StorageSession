package it.unisa.control;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import it.unisa.model.UtenteBean;
import it.unisa.model.UtenteDAOImplementazione;

/**
 * Servlet implementation class CardControl
 */
@WebServlet("/card")
public class CardControl extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private static UtenteDAOImplementazione CARD=new UtenteDAOImplementazione();
    
    public CardControl() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email=(String) request.getParameter("email");
		String numCarta=(String) request.getParameter("numCarta");
		String dataScad=(String) request.getParameter("dataScadenza");
		String cvc=(String) request.getParameter("cvc");
		
		UtenteBean user = null;
        
        try {
        	user = CARD.findByEmail(email);
        	
        }catch (SQLException e) {
			e.printStackTrace();	
		}
        if(user != null) {
			HttpSession cSession=request.getSession();
			cSession.setAttribute("utente",email);
			cSession.setAttribute("numCarta", numCarta);
			cSession.setAttribute("dataScadenza", dataScad);
			cSession.setAttribute("cvc", cvc);
        	response.sendRedirect("CheckoutView.jsp");
        } else
        	response.sendRedirect("LoginView.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
}