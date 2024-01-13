package bank.controller;

import java.io.IOException;
import java.net.ResponseCache;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.coyote.Response;

import bank.dao.Registerdao;
import bank.dao.RegisterdaoImpl;
import bank.model.Register;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		
	//	Register regobj=new Register(0, password, username, password, serialVersionUID);
		//regobj.setUsername("username");
	//	regobj.setPassword("password");
		
		Registerdao rdao = new RegisterdaoImpl();
		boolean b= rdao.Login(username,password);
		if(b==true) {
			response.sendRedirect("Dashboard.jsp");
		}
	
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
