package util;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class pass {
	//set集合去重，不改变原有的顺序
    public static List<String> pastLeep(List<String> list){
        //System.out.println("list = [" + list.toString() + "]");
        List<String> listNew=new ArrayList<>();
        Set set=new HashSet();
        for (String str:list) {
            if(set.add(str)){
                listNew.add(str);
            }
        }
       // System.out.println("listNew = [" + listNew.toString() + "]");
		return listNew;
      
    }
}
