import java.util.*;

public class UC3{

    public static void main(String args[])
    {
        int uc3=1, emp_wage=20, emp_hrs;
        Random rand = new Random();

        // Generate random integers in range 0 to 999
        int random = rand.nextInt(10)%2;
        //a full time employee
        if(random==uc3)
        emp_hrs=8;
	else
	emp_hrs=4;
        System.out.println("Employee wage is: "+ emp_hrs*emp_wage);
}
}

