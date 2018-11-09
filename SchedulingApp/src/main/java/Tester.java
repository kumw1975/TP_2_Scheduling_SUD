


import com.MVC.Controllers.DB_coonectionController;
import com.MVC.Model.Employee;

/*
 * This controller dispatches requests or messages from the
 * View(presentaion layer) or UI to the domain Model
 * 
 * */

public class Tester {

	
	public static void main( String[] args )
    {
        Employee emp = new Employee();
        emp.setFirstName("Black");
        emp.setLastName("Panther");
        emp.setEmail("balckP@gmail.com");
        emp.setSchedule("Sunday, March,2018");
        emp.setRole("Avenger");
        emp.setAvailability("Anytime");
        
        DB_coonectionController db = new DB_coonectionController(emp);
        db.db_connection();
    }
}

