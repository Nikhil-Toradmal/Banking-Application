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
import bank.model.Register;

/**
 * Servlet implementation class UpdateController
 */
@WebServlet("/UpdateController")
public class UpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		String username=(request.getParameter("username"));
		String Opassword=(request.getParameter("Opassword"));
		String Npassword=(request.getParameter("Npassword"));

		
		Registerdao rdao=new RegisterdaoImpl();
		int i=rdao.Updatepassword(username,Opassword,Npassword);
		String msg;
		HttpSession session =request.getSession();
		if(i>0) {
			msg="Password updated";
			session.setAttribute("result", msg);
			response.sendRedirect("UpdateView.jsp");
		}
		else {
			msg="Not updated";
			session.setAttribute("result", msg);
			response.sendRedirect("UpdateView.jsp");
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
