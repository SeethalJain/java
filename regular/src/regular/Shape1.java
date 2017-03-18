package regular;

public class Shape1 {
	double dim1,dim2;
	public Shape1(double d1,double d2){
		this.dim1 = d1;
		this.dim2 = d2;
	}
	public double area(){
		return 0.0;
	}
	public void display(){
		System.out.println("dimension 1 is:" +dim1);
		System.out.println("dimension 2 is:" +dim2);
	}
}
