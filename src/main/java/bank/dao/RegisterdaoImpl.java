package bank.dao;

import java.sql.Statement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

import javax.naming.spi.DirStateFactory.Result;

import bank.db.bankdbConnection;
import bank.model.Recharge;
import bank.model.Register;

public class RegisterdaoImpl implements Registerdao {

	bankdbConnection bc=new bankdbConnection();
	@Override
	public int create(List<Register> lst) {
		
		int i=0;
	//	RegisterdaoImp bc=new bankdbConnection();
		Connection conn= bc.getDBConnection();
		
		Register regobj = lst.get(0);
		
		try {
			PreparedStatement pstate = conn.prepareStatement("insert into bank values(?,?,?,?,?)");
			pstate.setInt(1, regobj.getRegno());
			pstate.setString(2, regobj.getCustname());
			pstate.setString(3, regobj.getUsername());
			pstate.setString(4, regobj.getPassword());
			pstate.setFloat(5, regobj.getAccbal());
			
			i=pstate.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}


		
		return i;
	}

	@Override
	public List<Register> Retrieve(String username,String password) {
		List<Register> lst=null;
		
		try {
			Connection conn=bc.getDBConnection();
			PreparedStatement pstate=conn.prepareStatement("select * from bank where username=? and password=?");
			pstate.setString(1, username);
			pstate.setString(2, password);
			ResultSet Result =pstate.executeQuery();
			if(Result.next()) {
				lst=new ArrayList<Register>();
				Register robj=new Register(Result.getInt(1), Result.getString(2),  Result.getString(3),  Result.getString(4), Result.getFloat(5));
				lst.add(robj);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return lst;
	}

	@Override
	public boolean Login(String username, String password) {
		boolean b=false;
		Connection conn=null;

		try {
			conn =bc.getDBConnection();
			PreparedStatement pstate=conn.prepareStatement("select * from bank where username=? and password=?");
			pstate.setString(1,username);
			pstate.setString(2,password);
			ResultSet Result =pstate.executeQuery();
			if(Result.next()) {
				b=true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return b;
	}

	@Override
	public int DeleteRecord(int regno) {
		Connection conn=null;
		int i=0;
		
		try {
			conn=bc.getDBConnection();
			PreparedStatement pstate=conn.prepareStatement("delete from bank where reg_no=?");
			pstate.setInt(1, regno);
			i=pstate.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return i;
	}

	

	@Override
	public List<Register> list() {
		int i=0;
		Connection conn=null;
		List<Register>lst=new LinkedList<Register>();
		try {
			conn=bc.getDBConnection();
			String str = "select * from bank";
			
			Statement state=conn.createStatement();
			ResultSet result=state.executeQuery(str);
			
			while(result.next())
			{
				Register reg=new Register(result.getInt(1),result.getString(2), result.getString(3), result.getString(4), result.getFloat(5));
				lst.add(reg);
				
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return lst;
	}

	@Override
	public int credit(String username, String password, float amount) {
		int i=0;
		Connection conn=null;
		
		//List<Register> lst=null;
		float currentamount=0;
		try {
			conn=bc.getDBConnection();
			PreparedStatement pstate=conn.prepareStatement("select * from bank where username=? and password=?");
			pstate.setString(1, username);
			pstate.setString(2, password);
			ResultSet Result =pstate.executeQuery();
			if(Result.next()) {
				currentamount=Result.getFloat(5);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		float newamount;
		newamount=currentamount+amount;	
		try {
			conn=bc.getDBConnection();
			PreparedStatement pstate = conn.prepareStatement("update bank set acc_bal=? where username=? and password=?");
			pstate.setFloat(1, newamount);
			pstate.setString(2, username);
			pstate.setString(3, password);
			 i=pstate.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return i;
	}

	@Override
	public int debit(String username, String password, float amount) {

		int i=0;
		Connection conn=null;
		
		//List<Register> lst=null;
		float currentamount=0;
		try {
			conn=bc.getDBConnection();
			PreparedStatement pstate=conn.prepareStatement("select * from bank where username=? and password=?");
			pstate.setString(1, username);
			pstate.setString(2, password);
			ResultSet Result =pstate.executeQuery();
			if(Result.next()) {
				currentamount=Result.getFloat(5);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(currentamount>=amount)
		{
			float newamount;
			newamount=currentamount-amount;	
			try {
				conn=bc.getDBConnection();
				PreparedStatement pstate = conn.prepareStatement("update bank set acc_bal=? where username=? and password=?");
				pstate.setFloat(1, newamount);
				pstate.setString(2, username);
				pstate.setString(3, password);
				 i=pstate.executeUpdate();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		else
		{
			System.out.println("Invalid debit");
		}
		
		return i;
	}

	@Override
	public int Updatepassword(String username, String Opassword, String Npassword) {
		int i=0;
		Connection conn=null;
	
		try {
			conn=bc.getDBConnection();
			PreparedStatement pstate = conn.prepareStatement("update bank set password=? where username=? and password=?");
			pstate.setString(1, Npassword);
			pstate.setString(2, username);
			pstate.setString(3, Opassword);
			 i=pstate.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return i;
	}

	@Override
	public int saveRecharge(Recharge r) {
		
			int i=0;
			Connection conn= bc.getDBConnection();
			
			try {
				PreparedStatement pstate = conn.prepareStatement("insert into recharge values(?,?,?,?,?)");
				pstate.setString(1, r.getUsername());
				pstate.setString(2, r.getPassword());
				pstate.setString(3, r.getMobile());
				pstate.setString(4, r.getOperator());
				pstate.setFloat(5, r.getPlan());
				
				pstate.executeUpdate();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			i=debit(r.getUsername(),r.getPassword(),r.getPlan());
			return i;
		
	}

	
}
