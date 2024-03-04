package com.edubridge.creational.factorydesignpattern;

abstract class CellularPlan {
	
	double rate;
	
	abstract void getRate();
	
	public void pBill(int min)
	{
		System.out.println(min*rate);
	}

}
