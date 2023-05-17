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
 * Servlet implementation class RegistrationControl
 */
@WebServlet("/registration")
public class RegistrationControl extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private static UtenteDAOImplementazione userDao = new UtenteDAOImplementazione();
	
    /**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = (String) request.getParameter("email");
		String nome = (String) request.getParameter("nome");
		String cognome = (String) request.getParameter("cognome");
		String numCarta = (String) request.getParameter("numCarta");
		String dataScad = (String) request.getParameter("dataScadenza");
		String cvc = (String) request.getParameter("cvc");
		String indirizzo = (String) request.getParameter("indirizzo");
		String citta = (String) request.getParameter("citta");
		String provincia = (String) request.getParameter("provincia");
		String cap = (String) request.getParameter("cap");
		String psw = (String) request.getParameter("password");
		UtenteBean user = null;
		
		try {
			if((user = userDao.findByEmail(email))!= null ) {
				System.out.println("Utente già registrato!");
				response.sendRedirect("LoginView.jsp");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		if(user==null) {
			user = new UtenteBean();
			HttpSession cSession = request.getSession();
			cSession.setAttribute("email", email);
			cSession.setAttribute("nome",nome);
			cSession.setAttribute("cognome",cognome);
			cSession.setAttribute("numCarta",numCarta);
			cSession.setAttribute("dataScadenza",dataScad);
			cSession.setAttribute("cvc",cvc);
			cSession.setAttribute("indirizzo",indirizzo);
			cSession.setAttribute("citta",citta);
			cSession.setAttribute("provincia",provincia);
			cSession.setAttribute("cap",cap);
			cSession.setAttribute("password",psw);
			
			user.setEmail(email);
			user.setNome(nome);
			user.setCognome(cognome);
			user.setNumCarta(numCarta);
			user.setDataScad(dataScad);
			user.setCvc(cvc);
			user.setIndirizzo(indirizzo);
			user.setCitta(citta);
			user.setProvincia(provincia);
			user.setCap(cap);
			user.setPassword(psw);
			
			try {
				if((userDao.saveUser(user))>0)
					response.sendRedirect("LoginView.jsp");
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}
}