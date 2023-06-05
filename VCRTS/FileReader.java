* This class is used to create methods pertaining to preset arrayList constructors in the system and is meant to 
* read the created files in the GUI and return corresponding arrayLists.
*/

import java.io.*;
import java.security.Timestamp;
import java.time.format.DateTimeFormatter;
import java.util.*;

public class FileReader {

	public static ArrayList<VehicleOwner> VehicleOwner(String filepath) {
		Scanner fileIn = null;	
		String firstName, lastName, phoneNumber, email, userName, password;
		ArrayList<VehicleOwner> list = new ArrayList<VehicleOwner>();
		
		try
		{
			fileIn = new Scanner(new File(filepath));
			
			while (fileIn.hasNext())
			{
				firstName = fileIn.next();
				lastName = fileIn.next();
				phoneNumber = fileIn.next();
				email = fileIn.next();
				userName = fileIn.next();
				password = fileIn.next();
				String timestampDate = fileIn.next();
				String timestampTime = fileIn.next();
				VehicleOwner user = new VehicleOwner(firstName, lastName, phoneNumber, email, userName, password);
				list.add(user);
			}
		}
		catch (FileNotFoundException e)
		{
			System.err.println("There is no file at location " + filepath);
			e.printStackTrace();
		}
		finally
		{
			if (fileIn != null)
				fileIn.close();
		}
		
		return list;
	}
	
	public static ArrayList<Client> Client(String filepath) {
		Scanner fileIn = null;	
		String firstName, lastName, phoneNumber, email, userName, password;
		ArrayList<Client> list = new ArrayList<Client>();
		
		try
		{
			fileIn = new Scanner(new File(filepath));
			
			while (fileIn.hasNext())
			{
				firstName = fileIn.next();
				lastName = fileIn.next();
				phoneNumber = fileIn.next();
				email = fileIn.next();
				userName = fileIn.next();
				password = fileIn.next();
				String timestampDate = fileIn.next();
				String timestampTime = fileIn.next();
				Client user = new Client(firstName, lastName, phoneNumber, email, userName, password);
				list.add(user);
			}
		}
		catch (FileNotFoundException e)
		{
			System.err.println("There is no file at location " + filepath);
			e.printStackTrace();
		}
		finally
		{
			if (fileIn != null)
				fileIn.close();
		}
		
		return list;
	}
	
	public static ArrayList<CloudController> CloudController(String filepath) {
		Scanner fileIn = null;	
		String firstName, lastName, phoneNumber, email, userName, password;
		ArrayList<CloudController> list = new ArrayList<CloudController>();
		
		try
		{
			fileIn = new Scanner(new File(filepath));

			while (fileIn.hasNext())
			{
				firstName = fileIn.next();
				lastName = fileIn.next();
				phoneNumber = fileIn.next();
				email = fileIn.next();
				userName = fileIn.next();
				password = fileIn.next();
				String timestampDate = fileIn.next();
				String timestampTime = fileIn.next();
				CloudController user = new CloudController(firstName, lastName, phoneNumber, email, userName, password);
				list.add(user);
			}
		}
		catch (FileNotFoundException e)
		{
			System.err.println("There is no file at location " + filepath);
			e.printStackTrace();
		}
		finally
		{
			if (fileIn != null)
				fileIn.close();
		}
		
		return list;
	}
	
	public static ArrayList<Vehicle> Vehicle(String filepath) {
		Scanner fileIn = null;	
		String vin, year, make, model, color, notes,availablity, userN; 
		//timeStamp string
		
		ArrayList<Vehicle> list = new ArrayList<Vehicle>();
		try
		{
			fileIn = new Scanner(new File(filepath));
			
			while (fileIn.hasNext())
			{
				userN = fileIn.next();
				vin = fileIn.next();
				year = fileIn.next(); 
				make = fileIn.next();
				model = fileIn.next();
				color = fileIn.next();
				availablity = fileIn.next();
				
				// variable for fileIn.next for timeStamp
				notes = fileIn.next();
				String timestampDate = fileIn.next();
				String timestampTime = fileIn.next();
				Vehicle user = new Vehicle(userN,vin,year,make,model,color, availablity, notes);
				list.add(user);
			}
		}
		catch (FileNotFoundException e)
		{
			System.err.println("There is no file at location " + filepath);
			e.printStackTrace();
		}
		finally
		{
			if (fileIn != null)
				fileIn.close();
		}
		
		return list;
	}
	
	public static ArrayList<Job> Job(String filepath) {
		Scanner fileIn = null;	
		String name, info; 
		int id, min;
		
		ArrayList<Job> list = new ArrayList<Job>();
		try
		{
			fileIn = new Scanner(new File(filepath));
			
			while (fileIn.hasNext())
			{
				id = fileIn.nextInt(); 
				name = fileIn.next() + " " + fileIn.next(); 
				min = fileIn.nextInt();
				info = fileIn.next();
				String timestampDate = fileIn.next();
				String timestampTime = fileIn.next();
				Job user = new Job(id, min, name, info);
				list.add(user);
			}
		}
		catch (FileNotFoundException e)
		{
			System.err.println("There is no file at location " + filepath);
			e.printStackTrace();
		}
		finally
		{
			if (fileIn != null)
				fileIn.close();
		}
		
		return list;
		}
	}
	
