package regular;

public class Rectangle 
{
	public double d1;
	public double d2;
	public Rectangle(){
		
	}
	public Rectangle(double d1,double d2)
	{
		System.out.println("d1 is:" +d1+ "d2 is:" +d2);
	}
	
	
	public double area()
	{
		return d1*d2;
	}

}
