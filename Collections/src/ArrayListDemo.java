import java.util.*;
public class ArrayListDemo {
	public static void main(String args[]){
		ArrayList list = new ArrayList();
		list.add("GAGAN");
		list.add("sj");
		list.add("suny");
		list.add("gugaliya");
		System.out.println(list);				//it creates an array
		Object ob = list.get(1);				//to get specified element to display we use object
		
		System.out.println(ob);
		String str = (String)ob;			
		System.out.println(str);
}
}