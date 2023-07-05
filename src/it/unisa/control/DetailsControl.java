package it.unisa.control;

import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import it.unisa.model.ProductModelDM;

/**
 * Servlet implementation class DetailsControl
 */
@WebServlet("/details")
public class DetailsControl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		final Logger LOGGER = Logger.getLogger("it.unisa.control.DetailsControl");
		
		ProductModelDM model=new ProductModelDM();
		String action = request.getParameter("action");
		
		try {
			if((action!=null) && (action.equalsIgnoreCase("read"))) {
					int id = Integer.parseInt(request.getParameter("id"));
					request.removeAttribute("product");
					request.setAttribute("product", model.doRetrieveByKey(id));
			}
		}catch (SQLException e) {
				LOGGER.log(Level.WARNING,"error:");
		}
		RequestDispatcher d= getServletContext().getRequestDispatcher("/DetailsView.jsp");
		d.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
