package com.edubridge.creational.singletone;

import java.sql.SQLException;
import java.util.Scanner;

public class SingleToneExec {

	public static void main(String[] args) throws SQLException {
		
		System.out.println("SingleTone Design");
		
		Scanner sc = new Scanner(System.in);
		
		JDBCSingletone jdbc = JDBCSingletone.getInstance();
		
		int ch = 0;
		do
		{
			System.out.println("Press 1 to Add Employee.");
			System.out.println("Press 2 to Read Employee Records.");
			System.out.println("Press 3 to Update Employee.");
			System.out.println("Press 4 to Delete Employee.");
			System.out.println("Press 5 to Exit.");
			System.out.println("Enter your choice.");
			ch = sc.nextInt();
			
			switch(ch)
			{
			case 1 :
				System.out.println("Enter Employee Name: ");
				String uname = sc.next();
				
				System.out.println("Enter Employee Password: ");
				String upass = sc.next();
				
				System.out.println("Enter Employee ID: ");
				int uid = sc.nextInt();
				
				int i = jdbc.insert(uname, upass, uid);
				if(i > 0)
				{
					System.out.println("Data inserted succesfully.");
				}
				else
				{
					System.out.println("Data not inserted succesfully.");
				}
			break;
			
			case 2 :
				jdbc.view();
			break;
			
			case 3:
				System.out.println("Enter the username you want to update : ");
				String uname1 = sc.next();
				
				System.out.println("Enter the password you want to update : ");
				String upass1 = sc.next();
				
				System.out.println("Enter the ID you want to update : ");
				int uid1 = sc.nextInt();
				
				int i1 = jdbc.update(uname1, upass1, uid1);
				if(i1 > 0)
				{
					System.out.println("Data updated succesfully.");
				}
				else
				{
					System.out.println("Data not updated succesfully.");
				}
			break;
			
			case 4:
				System.out.println("Enter the ID you want to delete : ");
				int id2 = sc.nextInt();
				
				jdbc.delete(id2);
				
				System.out.println("Data deleted successfully.");
			break;
			
			case 5:
				System.out.println();
			break;
			
			default:
				System.out.println("Invalid Choice!!!");
			break;	
				
	}

}
		while(ch!= 5);
		{
		
		}
	}
}
