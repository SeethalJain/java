import java.util.*;
public class LinkedHashSetDemo {
	public static void main(String args[]){
		LinkedHashSet lhs = new LinkedHashSet();
		lhs.add("SJ");
		 lhs.add("SJ");					//duplicate not allowed
		lhs.add("Sskjs");				//sync order
		
		lhs.add("Sunny");
		System.out.println(lhs);
	
}
}
