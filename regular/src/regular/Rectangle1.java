package regular;

public class Rectangle1 extends Shape1 {
	public Rectangle1(double d1,double d2){
		super(d1,d2);
	}
	
	//@override
	public double area(){
		return dim1*dim2;
	}
}
