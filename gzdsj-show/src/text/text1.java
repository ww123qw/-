package text;


import java.util.Scanner;


public class text1 {
	
	
	
	
	public int jiecheng(int num) {
		
		if(num<=1) {
			return num;
		}
		else {
			
			
			int a=jiecheng(num-1);
			int b =num*a;
			return b;
		}
		
		
		
		
		
		
	}
		     public static void main(String[] args) {
		    	 text1 jo = new text1();
		    	 
		    	 Scanner sc = new Scanner( System.in );

//		    	 System.out.print( "Please enter a string : " ); 
//		    	 System.out.println(sc.next());
		    	 int c =jo.jiecheng(sc.nextInt());
		     System.out.println(c);
		    }
		
	}


