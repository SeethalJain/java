import java.util.ArrayList;
public class Enhanced_for {
	
	
		public static void main(String args[]){
			ArrayList list = new ArrayList();
			list.add("GAGAN");
			list.add("sj");
			list.add("suny");
			list.add("gugaliya");
			list.add(100);
			System.out.println(list);				//it creates an array
			
			Object ob = list.get(1);				//to get specified element to display we use object
			System.out.println(ob);
			
			String str = (String)ob;			
			System.out.println(str);
			
			for(Object element:list){
				if(element instanceof String){
					String str1 = (String)element;
					System.out.println(str1);
				}
				else if(element instanceof Integer){
					Integer o1 = (Integer)element;
					System.out.println(o1);
				}
			}
	}
	
}
