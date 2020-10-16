import java.util.*;
import java.io.*;
class AddressBook
{
	public static void main(String[] args)
	{
   String first_name;
   String last_name;
   String address;
   String city;
   String state;
   int zip;
   String phone;
  

   public AddressBook(String first_name,String last_name,String address,String city,String state,int zip,String phone)
   {
      this.first_name=first_name;
      this.last_name=last_name;
      this.address=address;
      this.city=city;
      this.state=state;
      this.zip=zip; 
       this.phone=phone;
}

		Scanner s=new Scanner(System.in);
		ArrayList<AddressBook> person=new ArrayList<AddressBook>();

		while(true)
		{
			System.out.println("1.Add a new contact .");
			//System.out.println("2.Modify a contact .“);
			System.out.println("3.Delete a contact .“);
			//System.out.println("4.Sort contacts acc to last name");
			//System.out.println("5.Sort contacts acc to zip.");
			System.out.println("6.Print contacts .“);
			System.out.println("7.Exit");
			System.out.println("Enter your choice-> ");

			int choice=s.nextInt();
			switch (choice)
			{
				case 1->
				System.out.println("To add a person follow thi-> ");
						System.out.println("Enter first name-> ");
							String first_name=s.next();
						System.out.println("Enter last name-> ");
							String last_name=s.next();
						System.out.println("Enter address name-> ");
							String address=s.next();
						System.out.println("Enter city name-> ");
							String city=s.next();
						System.out.println("Enter state name-> ");
							String state=s.next();
						System.out.println("Enter postperson code-> ");
							int zip=s.nextInt();
					    System.out.println("Enter phone number-> ");
							String phone=s.nextLong();
AddressBook ab=new AddressBook(first_name,last_name,address,city,state,phone,zip);
						person.add(ab);
System.out.println("You have successfully entered a new person”);
					    break;
				case 3->
						System.out.println("Enter phone to remove");
							String item=s.next();
					        Iterator itr=person.iterator();
                            while(itr.hasNext())
					        {
						       AddressBook ab=(AddressBook)itr.next();
						            if(item.equpersons(ab.phone))
						             {
							            person.remove(ab);
							            break;
						              }
					         }
					     break;
				
				case 6->
						if(person.size() == 0)
						{
							System.out.println("Address Book is empty !");
						}
						else
						{
							Iterator itr1=person.iterator();
							while(itr1.hasNext())
							{
								AddressBook ab=(AddressBook)itr1.next();
							     System.out.println("FirstName->"+ab.first_name+"\n"+"LastName->"+ab.last_name+"\n"+"Address->"+ab.address+"\n"+"City->"+ab.city+"\n"+"State->"+ab.state+"\n"+"PhoneNo->"+ab.phone+"\n"+"Zip->"+ab.zip);
      					}
						}
						break;
				case 7->
						System.exit(0);
		default:
 System.out.println("Invalid choice... try again");			}
		}
	}
}
