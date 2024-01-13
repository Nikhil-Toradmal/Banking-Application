package bank.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bank.dao.Registerdao;
import bank.dao.RegisterdaoImpl;

/**
 * Servlet implementation class CreditController
 */
@WebServlet("/CreditController")
public class CreditController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CreditController() {
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
		float amount=Float.parseFloat(request.getParameter("amount"));
		
		Registerdao rdao = new RegisterdaoImpl();
		int i=rdao.credit(username,password,amount);
		String msg;
		HttpSession session=request.getSession();
		if(i>0)
		{
			msg="Amount Credited";
			session.setAttribute("result", msg);
			response.sendRedirect("Credit.jsp");
		}
		else
		{
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
