package bank.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bank.dao.Registerdao;
import bank.dao.RegisterdaoImpl;
import bank.model.Register;

/**
 * Servlet implementation class RegisterController
 */
@WebServlet("/RegisterController")
public class RegisterController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		int regno=Integer.parseInt(request.getParameter("regno"));
		String custname=request.getParameter("custname");
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		float accbal=Float.parseFloat(request.getParameter("accbal"));
		
		Register regobj=new Register(regno, custname, username, password, accbal);
		Registerdao rdao=new RegisterdaoImpl();
		List<Register>lst=new ArrayList<Register>();
		lst.add(regobj);
		int i=rdao.create(lst);
		
		if(i>0) {
			response.sendRedirect("Indexbank.jsp");
		}
		else {
			response.sendRedirect("error");
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
