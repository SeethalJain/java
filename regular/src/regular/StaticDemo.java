package regular;

public class StaticDemo {
	int v1;
	static int v2;
	public StaticDemo(){
		v1++;
		v2++;
	}
	public static void display(){
		System.out.println(v2);
		}
	public static void main(String arg[]){
		StaticDemo sd1 = new StaticDemo();
		
		
		System.out.println("After creation of sd1 v1:" +sd1.v1);
		System.out.println("After creation of sd1 v2:" +sd1.v2);
		
		StaticDemo sd2 = new StaticDemo();
		System.out.println("After creation of sd2 v1:" +sd2.v1);
		System.out.println("After creation of sd2 v2:" +sd2.v2);
		
		StaticDemo sd3 = new StaticDemo();
		System.out.println("After creation of sd3 v1:" +sd3.v1);
		System.out.println("After creation of sd3 v2:" +sd3.v2);
		
		System.out.println("with class name the static variable:" +StaticDemo.v2);
		StaticDemo.display();
		
	}
	
}
