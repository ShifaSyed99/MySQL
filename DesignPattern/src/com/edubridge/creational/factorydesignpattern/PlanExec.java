package com.edubridge.creational.factorydesignpattern;

class BOI implements Plan
{
	@Override
	public void getRoi(double rate) {
		// TODO Auto-generated method stub	
		
		System.out.println("The Rate Of Interest for BOI is : "+rate+"%");
	}
	
}

class SBI implements Plan
{
	@Override
	public void getRoi(double rate) {
		// TODO Auto-generated method stub
		
		System.out.println("The Rate Of Interest for SBI is : "+rate+"%");
	}
	
}

class BOB implements Plan
{
	@Override
	public void getRoi(double rate) {
		// TODO Auto-generated method stub	
		
		System.out.println("The Rate Of Interest for BOB is : "+rate+"%");
	}
	
}

public class PlanExec {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		BOI b1 = new BOI();
		b1.getRoi(7.2);
		
		BOB b2 = new BOB();
		b2.getRoi(8.2);
		
		SBI s1 = new SBI();
		s1.getRoi(7.4);

	}

}
