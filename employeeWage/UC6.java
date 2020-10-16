import java.util.*;

public class UC6{

    public static void main(String args[])
    {
        int uc6=1, emp_wage=20, emp_hrs, total_hrs=0, days=20, total_wage=0;
        Random rand = new Random();

        // Generate random integers in range 0 to 999
        for(int i=1; i<=days; i++){
	int random = rand.nextInt(10)%2;
        //a full time employee
        if(total_hrs<100){
	switch(random)
        {
        case 1:
        emp_hrs=8;
        break;
        case 0:
        emp_hrs=4;
        break;
        default:
        emp_hrs=0;
        }
	total_hrs+=emp_hrs;
	total_wage+=emp_hrs*emp_wage;
	}
	else
	break;}
        System.out.println("Employee wage is: "+ total_wage);
        System.out.println("Emp hrs is: "+ total_hrs);
}
}
