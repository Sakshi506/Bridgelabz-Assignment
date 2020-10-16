import java.util.*;

public class UC4{

    public static void main(String args[])
    {
        int uc4=1, emp_wage=20, emp_hrs;
        Random rand = new Random();

        // Generate random integers in range 0 to 999
        int random = rand.nextInt(10)%2;
        //a full time employee
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
	System.out.println("Employee wage is: "+ emp_hrs*emp_wage);
}
}
