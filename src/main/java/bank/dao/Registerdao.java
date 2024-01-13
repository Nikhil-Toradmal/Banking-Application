package bank.dao;

import java.util.List;

import bank.model.Recharge;
import bank.model.Register;

public interface Registerdao {

	int create(List<Register> lst) ;
	List<Register> Retrieve(String username,String password);
	boolean Login(String username, String password);
	int DeleteRecord(int regno);
	int Updatepassword(String username, String Opassword ,String Npassword);
	List<Register> list();
	int credit(String username, String password,float amount);
	int debit(String username, String password,float amount);
	int saveRecharge(Recharge r);
}
