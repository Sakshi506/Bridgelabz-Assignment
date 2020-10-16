import java.util.*;

public class UC2{

    public static void main(String args[])
    {
        int uc2=1, emp_wage=20, emp_hrs;
        Random rand = new Random();

        // Generate random integers in range 0 to 999
        int random = rand.nextInt(10)%2;
        //a full time employee
	if(random==uc2)
        System.out.println("Employee wage is: " +(emp_wage*8));
        else
        System.out.println("Employee is not a full time employee");
}
}
