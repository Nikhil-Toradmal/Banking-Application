package bank.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
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
 * Servlet implementation class RetrieveController
 */
@WebServlet("/RetrieveController")
public class RetrieveController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RetrieveController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
	//	int regno=Integer.parseInt(request.getParameter("regno"));
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		Registerdao rdao=new RegisterdaoImpl();
		List<Register> lst=rdao.Retrieve( username, password);//function call retrieve from registerdaoimpl
//		Register robj=lst.get(0);
		HttpSession session = request.getSession();
		if(lst!=null) {
		request.setAttribute("empList", lst);
		RequestDispatcher view = request.getRequestDispatcher("Search.jsp");
		view.forward(request, response);
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
