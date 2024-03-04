package com.edubridge.creational.factorydesignpattern;

import java.util.Scanner;

public class CellularPlanExec {

	public static void main(String[] args) {
		
		SelectNetworkPlan  s = new SelectNetworkPlan();
	
		Scanner sc = new Scanner(System.in);
		
		System.out.println("Select the network of your choice to calculate rate plan: ");
		String nName = sc.next();
		
		System.out.println("Enter number of minutes : ");
		int min = sc.nextInt();
		
		CellularPlan p = s.getPlan(nName);
		
		System.out.println("Bill Amount for "+nName+" of "+min+" is");
		
		p.getRate();
		p.pBill(min);
		
	}

}
