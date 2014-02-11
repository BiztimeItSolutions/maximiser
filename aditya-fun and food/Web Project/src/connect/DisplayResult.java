package connect;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class DisplayResult {

	/**
	 * @param args
	 */
	public List regRegister()  
	{
		
		
		dao a1=new dao();
		List lis=a1.register();
		Iterator it=lis.iterator();
		Registration a2=null;
		List<Registration> empls=new ArrayList<Registration>();
		
		while(it.hasNext())
		{
			
			Registration elc=(Registration)it.next();
			
			a2=new Registration();
			
			
			a2.setUsername(elc.getUsername());
			a2.setPassword(elc.getPassword());
			empls.add(a2);
			
			
			
			
		}
		
		return empls;
	}

}
