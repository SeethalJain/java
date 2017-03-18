import java.util.*;
public class Gen {
public static void main(String args[]){
	ArrayList<String> list = new ArrayList<String>();			//generic
	list.add("sj");
	list.add("jain");
	System.out.println(list);
	String str = list.get(0);								//if generic is not present then u cant typecast it
	System.out.println(str);
}
}
