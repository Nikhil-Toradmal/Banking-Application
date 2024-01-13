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
import bank.model.Recharge;

/**
 * Servlet implementation class RechargeController
 */
@WebServlet("/RechargeController")
public class RechargeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RechargeController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		String mobile=request.getParameter("mobile");
		String operator=request.getParameter("operator");
		float plan=Float.parseFloat(request.getParameter("plan"));
		
		Recharge r=new Recharge(username, password, mobile, operator, plan);
		
		Registerdao rdao = new RegisterdaoImpl();
		int i=rdao.saveRecharge(r);
		String msg;
		HttpSession session =request.getSession();
		if(i>0) {
			msg="Recharge successful";
			session.setAttribute("result", msg);
			response.sendRedirect("Recharge.jsp");
		}
		else {
			msg="Recharge unsuccessful. Invalid Details";
			session.setAttribute("result", msg);
			response.sendRedirect("Recharge.jsp");
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
