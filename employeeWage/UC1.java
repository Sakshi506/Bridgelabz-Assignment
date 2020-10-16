import java.util.*; 
  
public class UC1{ 
  
    public static void main(String args[]) 
    { 
        int uc1=1;
        Random rand = new Random(); 
  
        // Generate random integers in range 0 to 999 
        int random = rand.nextInt(10)%2;
	if(random==uc1)
	System.out.println("employee is present");
	else
	System.out.println("employee is absent");
}
}
