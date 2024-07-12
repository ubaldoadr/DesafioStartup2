package cl.praxis.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cl.praxis.dao.IRolesDAO;
import cl.praxis.dao.IUsuariosDAO;
import cl.praxis.dao.RolesDAOImpl;
import cl.praxis.dao.UsuariosDAOImpl;
import cl.praxis.model.UsuarioDTO;

@WebServlet("/Login")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public LoginController() {
        super();        
    }
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
		try {
					
		IUsuariosDAO pDAO = new UsuariosDAOImpl();
		UsuarioDTO user= pDAO.read( request.getParameter("correo"),request.getParameter("password"));
				
		IRolesDAO iDAO = new RolesDAOImpl();
		int rolAdmin = iDAO.idAdmin();		
		int rolUser =iDAO.userRol(user.getId()); 
		
		if(rolAdmin == rolUser) {
			List<UsuarioDTO> users =new ArrayList<UsuarioDTO>();
			users = pDAO.read();			
			request.setAttribute("users", users);
			getServletContext().getRequestDispatcher("/home.jsp").forward(request, response);	
		}
		else {
			response.sendRedirect("error.jsp");
		}
		
		} catch (Exception e) {
			response.sendRedirect("error.jsp");
		}
			
	}

}
