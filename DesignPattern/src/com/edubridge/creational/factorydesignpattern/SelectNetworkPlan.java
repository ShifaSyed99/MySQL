package com.edubridge.creational.factorydesignpattern;

public class SelectNetworkPlan {
	
	public CellularPlan getPlan(String planType)
	{
		if(planType == null)
		{
			return null;
		}
		if(planType.equalsIgnoreCase("ABCNetwork") )
		{
			return new ABCNetwork();
		}
		else if(planType.equalsIgnoreCase("XYZNetwork"))
		{
			return new XYZNetwork();
		}
		return null;
		
	}

}
