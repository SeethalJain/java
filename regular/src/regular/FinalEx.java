package regular;

public final class FinalEx {
	public int v1=10;
	public final int v2=20;
	 
	public int add(){
		int v1=20;
		return v1+v2;
	}
	
	public final void display(){
		System.out.println("v1:" +v1+ "v2:" +v2);
	}
}
